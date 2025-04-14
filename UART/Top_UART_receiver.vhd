library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_top is
    port (
        sys_clk             : in std_logic;  -- Clock de 50 MHz
        reset_n             : in std_logic;  -- Reset global

        rx                  : in std_logic;  -- Entrada serial RX
        rx_done_tick        : out std_logic; -- Indica que um byte foi recebido
        data_out            : out std_logic_vector(7 downto 0); -- Dados recebidos
        led_out             : out std_logic  -- LED de indica��o
    );
end uart_rx_top;

architecture arch of uart_rx_top is
    constant CLOCK_DIVISOR  : integer := 163;
    constant COUNTER_BIT_WIDTH : integer := 9;

    signal sample_tick : std_logic;
    signal received_data : std_logic_vector(7 downto 0);
    signal rx_done_tick_internal : std_logic;  -- Sinal interno para rx_done_tick

begin 

    baud_generator: entity work.mod_counter(arch)
        generic map(
            MAX_COUNT       => CLOCK_DIVISOR,
            BIT_WIDTH       => COUNTER_BIT_WIDTH
        )   
        port map (
            sys_clk         => sys_clk,
            reset_n         => reset_n,
            q               => open,
            max_tick        => sample_tick
        );

    uart_receiver: entity work.uart_rx(arch)
        generic map (
            DATA_BIT_WIDTH  => 8,
            STOP_BIT_TICKS  => 16
        )
        port map (
            sys_clk         => sys_clk,
            reset_n         => reset_n,
            sample_tick     => sample_tick,
            rx              => rx,
            rx_done_tick    => rx_done_tick_internal,  -- Usando sinal interno
            data_out        => received_data
        );

    -- Atribui��o da sa�da rx_done_tick
    rx_done_tick <= rx_done_tick_internal;

    -- Verifica��o do dado recebido
    process(sys_clk, reset_n)
    begin
        if reset_n = '0' then
            led_out <= '0';
        elsif rising_edge(sys_clk) then
            if rx_done_tick_internal = '1' then  -- Usando sinal interno
                if received_data = "10101010" then
                    led_out <= '1';
                else
                    led_out <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Atribui��o da sa�da data_out
    data_out <= received_data;

end arch;
