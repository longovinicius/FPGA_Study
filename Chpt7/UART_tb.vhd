library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx_tb is
end uart_rx_tb;

architecture test of uart_rx_tb is
    constant CLK_PERIOD      : time := 20 ns; -- Clock de 100 MHz
    constant SAMPLE_TICK_RATE : time := 320 ns; -- Simula o baud rate (ajuste conforme necessário)
    
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal rx        : std_logic := '1'; -- Começa em idle (nível alto)
    signal sample_tick : std_logic := '0';
    signal rx_done_tick : std_logic;
    signal dout      : std_logic_vector(7 downto 0);

    -- Instância do DUT (Device Under Test)
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

    -- Gerador de clock
    process
    begin
        while true loop
            clk <= not clk;
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Simulando o baud rate (sample_tick)
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
        wait for SAMPLE_TICK_RATE * 16; -- Duração de um bit completo

        -- Enviar dados (0b10101010 = 0xAA)
        rx <= '0'; wait for SAMPLE_TICK_RATE * 16; -- Bit 0
        rx <= '1'; wait for SAMPLE_TICK_RATE * 16; -- Bit 1
        rx <= '0'; wait for SAMPLE_TICK_RATE * 16; -- Bit 2
        rx <= '1'; wait for SAMPLE_TICK_RATE * 16; -- Bit 3
        rx <= '0'; wait for SAMPLE_TICK_RATE * 16; -- Bit 4
        rx <= '1'; wait for SAMPLE_TICK_RATE * 16; -- Bit 5
        rx <= '0'; wait for SAMPLE_TICK_RATE * 16; -- Bit 6
        rx <= '1'; wait for SAMPLE_TICK_RATE * 16; -- Bit 7

        -- Enviar stop bit (1)
        rx <= '1';
        wait for SAMPLE_TICK_RATE * 16;

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
