library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_top_tb is
end uart_rx_top_tb;

architecture tb of uart_rx_top_tb is
    -- Constantes
    constant CLK_FREQ   : real := 50.0e6; -- 50 MHz
    constant CLK_PERIOD : time := 1 sec / CLK_FREQ;
    constant BAUD_RATE  : integer := 19200;
    constant BIT_PERIOD : time := 1 sec / BAUD_RATE; -- Tempo de um bit

    -- Sinais
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal rx        : std_logic := '1'; -- Linha RX começa em idle (1)
    signal rx_done   : std_logic;
    signal dout      : std_logic_vector(7 downto 0);

begin
    -- Instância do módulo top-level
    uut: entity work.uart_rx_top(arch)
        port map (
            clk      => clk,
            reset    => reset,
            rx       => rx,
            rx_done  => rx_done,
            dout     => dout
        );

    -- Geração do clock de 50 MHz
    process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Processo para enviar um byte serialmente a 19200 bps
    process
    begin
        -- Reset inicial
        reset <= '1';
        wait for CLK_PERIOD * 5;
        reset <= '0';
        wait for CLK_PERIOD * 5;

        -- Enviar byte 0xA5 (10100101) serialmente
        rx <= '0';  -- Start bit
        wait for BIT_PERIOD;

        rx <= '1';  -- Bit 0
        wait for BIT_PERIOD;

        rx <= '0';  -- Bit 1
        wait for BIT_PERIOD;

        rx <= '1';  -- Bit 2
        wait for BIT_PERIOD;

        rx <= '0';  -- Bit 3
        wait for BIT_PERIOD;

        rx <= '0';  -- Bit 4
        wait for BIT_PERIOD;

        rx <= '1';  -- Bit 5
        wait for BIT_PERIOD;

        rx <= '0';  -- Bit 6
        wait for BIT_PERIOD;

        rx <= '1';  -- Bit 7
        wait for BIT_PERIOD;

        rx <= '1';  -- Stop bit
        wait for BIT_PERIOD * 2;  -- Esperar stop bit e próximo ciclo

        -- Aguardar para ver o resultado
        wait for BIT_PERIOD * 16;

        -- Finaliza a simulação
        report "Fim da Simulação" severity note;
        wait;
    end process;
end tb;
