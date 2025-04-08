library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
    generic(
        DATA_BIT_WIDTH    : integer := 8; 
        STOP_BIT_TICKS : integer := 16 -- could be 16, 24 or 32
    );
    port(
        sys_clk         : in std_logic;
        reset_n         : in std_logic;
        rx              : in std_logic;
        sample_tick     : in std_logic; -- enable tick from the baud rate generator
        rx_done_tick    : out std_logic;
        data_out            : out std_logic_vector(7 downto 0)
    );
end uart_rx;

architecture arch of uart_rx is
    type state_type is (idle, start, data, stop);
    signal state_reg, state_next    : state_type;
    signal tick_counter_reg, tick_counter_next            : unsigned(3 downto 0);
    signal bit_counter_reg, bit_counter_next            : unsigned(2 downto 0);
    signal rx_shift_reg, rx_shift_next            : std_logic_vector(7 downto 0);
begin
    -- FSMD state & data registers
    process(sys_clk, reset_n)
    begin
        if reset_n = '1' then
            state_reg <= idle;
            tick_counter_reg <= (others=>'0');
            bit_counter_reg <= (others=>'0');
            rx_shift_reg <= (others=>'0');
        elsif(rising_edge(sys_clk)) then 
            state_reg <= state_next;
            tick_counter_reg <= tick_counter_next;
            bit_counter_reg <= bit_counter_next;
            rx_shift_reg <= rx_shift_next;
        end if;
    end process;
    
    -- next-state logic and data path functional units/routing
    process(state_reg, tick_counter_reg, bit_counter_reg, rx_shift_reg, sample_tick, rx)
    begin
        state_next <= state_reg;
        tick_counter_next <= tick_counter_reg; -- keeps track of the number of sampling ticks 
        bit_counter_next <= bit_counter_reg; -- keeps track of the number of data bits received
        rx_shift_next <= rx_shift_reg; -- store bits received and shift the data correctely
        rx_done_tick <= '0';
        case state_reg is
            when idle =>
                if rising_edge(sample_tick) and rx='0' then
                    state_next <= start;
                    tick_counter_next <= (others=>'0');
                end if;
            when start =>
                if rising_edge(sample_tick) then
                    if tick_counter_reg=7 then
                        state_next <= data;
                        tick_counter_next <= (others=>'0');
                    else
                        tick_counter_next <= tick_counter_reg + 1;
                    end if;
                end if;
            when data =>
                if rising_edge(sample_tick) then
                    if tick_counter_reg=15 then
                        tick_counter_next <= (others=>'0');
                        rx_shift_next <= rx & rx_shift_reg(DATA_BIT_WIDTH-1 downto 1) ; -- rx enters in 8th position, which is the LSB
                        if bit_counter_reg=(DATA_BIT_WIDTH-1) then
                            bit_counter_next <= (others=>'0');                            
                            state_next <= stop;
                        else
                            bit_counter_next <= bit_counter_reg + 1;
                        end if;
                    else
                        tick_counter_next <= tick_counter_reg + 1;
                    end if;
                end if;
            when stop =>
                if rising_edge(sample_tick) then
                    if tick_counter_reg=(STOP_BIT_TICKS-1) then
                        state_next <= idle;
                        rx_done_tick <= '1';
                    else
                        tick_counter_next <= tick_counter_reg + 1;
                    end if;
                end if;
        end case;
    end process;
    data_out <= rx_shift_reg;
end arch;
                


