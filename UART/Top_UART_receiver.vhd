library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_top is
    port (
        sys_clk        : in std_logic;  -- Clock de 50 MHz
        reset_n      : in std_logic;  -- Reset global

        rx         : in std_logic;  -- Entrada serial RX
        rx_done_tick    : out std_logic; -- Indica que um byte foi recebido
        data_out       : out std_logic_vector(7 downto 0) -- Dados recebidos
    );
end uart_rx_top;

architecture arch of uart_rx_top is
    constant CLOCK_DIVISOR  : integer := 163;
    constant COUNTER_BIT_WIDTH : integer := 9;

    signal sample_tick : std_logic;

begin 

    baud_generator: entity work.mod_counter(arch)
        generic map(
            MAX_COUNT => CLOCK_DIVISOR,
            BIT_WIDTH => COUNTER_BIT_WIDTH
        )
        port map (
            sys_clk  => sys_clk,
            reset_n    => reset_n,
            q      => open,
            max_tick => sample_tick
        );

    uart_receiver: entity work.uart_rx(arch)
        generic map (
            DATA_BIT_WIDTH => 8,
            STOP_BIT_TICKS => 16
        )
        port map (
            sys_clk          => sys_clk,
            reset_n        => reset_n,
            sample_tick  => sample_tick,
            rx           => rx,
            rx_done_tick => rx_done_tick,
            data_out         => data_out
        );
end arch;