library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
    generic(
        DATA_BIT_WIDTH    : integer := 8; -- data bits
        STOP_BIT_TICKS : integer := 16 -- number of bits for the stop bits (16, 24 or 32)
    );
    port(
        clk, reset      : in std_logic;
        rx              : in std_logic;
        sample_tick   : in std_logic; -- enable tick from the baud rate generator
        rx_done_tick    : out std_logic;
        dout            : out std_logic_vector(7 downto 0)
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
    process(clk, reset)
    begin
        if reset = '1' then
            state_reg <= idle;
            tick_counter_reg <= (others=>'0');
            bit_counter_reg <= (others=>'0');
            rx_shift_reg <= (others=>'0');
        elsif(clk'event and clk = '1') then
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
        rx_shift_next <= rx_shift_reg; -- armazena bits recebidos e desloca os dados corretamente
        rx_done_tick <= '0';
        case state_reg is
            when idle =>
                if (sample_tick = '1' and rx='0') then
                    state_next <= start;
                    tick_counter_next <= (others=>'0');
                end if;
            when start =>
                if (sample_tick = '1') then
                    if tick_counter_reg=7 then
                        state_next <= data;
                        tick_counter_next <= (others=>'0');
                    else
                        tick_counter_next <= tick_counter_reg + 1;
                    end if;
                end if;
            when data =>
                if (sample_tick = '1') then
                    if tick_counter_reg=15 then
                        tick_counter_next <= (others=>'0');
                        rx_shift_next <= rx & rx_shift_reg(DATA_BIT_WIDTH-1 downto 1) ; -- esta certo?
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
                if (sample_tick = '1') then
                    if tick_counter_reg=(STOP_BIT_TICKS-1) then
                        state_next <= idle;
                        rx_done_tick <= '1';
                    else
                        tick_counter_next <= tick_counter_reg + 1;
                    end if;
                end if;
        end case;
    end process;
    dout <= rx_shift_reg;
end arch;
                


