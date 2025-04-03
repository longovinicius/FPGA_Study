library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_tb is
end uart_rx_tb;

architecture test of uart_rx_tb is
    -- Definições de Clock e Baud Rate
    constant CLK_FREQ_HZ      : integer := 50_000_000; -- 50 MHz
    constant BAUD_RATE        : integer := 19200;
    constant SAMPLE_TICKS     : integer := 16; -- 16 amostras por bit

    -- Calculando os tempos automaticamente
    constant CLK_PERIOD       : time := 1 sec / CLK_FREQ_HZ; -- 20 ns (50 MHz)
    constant BIT_PERIOD       : time := 1 sec / BAUD_RATE; -- 52.08 us
    constant SAMPLE_TICK_RATE : time := BIT_PERIOD / SAMPLE_TICKS; -- 3.255 us

    -- Sinais de teste
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '1';
    signal rx          : std_logic := '1'; -- Começa em idle (nível alto)
    signal sample_tick : std_logic := '0';
    signal rx_done_tick : std_logic;
    signal dout        : std_logic_vector(7 downto 0);

    -- Instância do UART RX (DUT - Device Under Test)
    component uart_rx
        generic (
            DATA_BIT_WIDTH  : integer := 8;
            STOP_BIT_TICKS  : integer := 16
        );
        port (
            clk          : in std_logic;
            reset        : in std_logic;
            rx           : in std_logic;
            sample_tick  : in std_logic;
            rx_done_tick : out std_logic;
            dout         : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    -- Instanciando o módulo UART Receiver
    uut: uart_rx
        generic map (
            DATA_BIT_WIDTH => 8,
            STOP_BIT_TICKS => 16
        )
        port map (
            clk          => clk,
            reset        => reset,
            rx           => rx,
            sample_tick  => sample_tick,
            rx_done_tick => rx_done_tick,
            dout         => dout
        );

    -- Gerador de clock de 50 MHz
    process
    begin
        while true loop
            clk <= not clk;
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Gerador de `sample_tick` baseado no baud rate de 19200
    process
    begin
        while true loop
            sample_tick <= '1';
            wait for SAMPLE_TICK_RATE / 2;
            sample_tick <= '0';
            wait for SAMPLE_TICK_RATE / 2;
        end loop;
    end process;

    -- Processo de simulação da recepção UART
    process
    begin
        -- Reset inicial
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- Enviar start bit (0)
        rx <= '0';
        wait for BIT_PERIOD;

        -- Enviar dados (0b10101010 = 0xAA)
        rx <= '0'; wait for BIT_PERIOD; -- Bit 0
        rx <= '1'; wait for BIT_PERIOD; -- Bit 1
        rx <= '0'; wait for BIT_PERIOD; -- Bit 2
        rx <= '1'; wait for BIT_PERIOD; -- Bit 3
        rx <= '0'; wait for BIT_PERIOD; -- Bit 4
        rx <= '1'; wait for BIT_PERIOD; -- Bit 5
        rx <= '0'; wait for BIT_PERIOD; -- Bit 6
        rx <= '1'; wait for BIT_PERIOD; -- Bit 7

        -- Enviar stop bit (1)
        rx <= '1';
        wait for BIT_PERIOD;

        -- Aguardar fim da recepção
        wait for 200 ns;

        -- Verificar se `rx_done_tick` foi acionado corretamente
        if rx_done_tick = '1' then
            report "Recebido: " & integer'image(to_integer(unsigned(dout))) severity note;
        else
            report "Erro na recepção!" severity error;
        end if;

        -- Finalizar a simulação
        wait;
    end process;

end test;
