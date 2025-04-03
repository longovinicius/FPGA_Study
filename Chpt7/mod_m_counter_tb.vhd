library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baud_gen_tb is
end baud_gen_tb;

architecture tb of baud_gen_tb is
    constant CLK_FREQ           : real := 50.0e6;
    constant CLK_PERIOD         : time := 1 sec / CLK_FREQ;

    constant CLOCK_DIVISOR      : integer := 163; -- 50M/(19200*16)
    constant COUNTER_BIT_WIDTH  : integer := 9;

    signal sys_clk, reset_n    : std_logic := '0';
    signal max_tick    : std_logic;

begin
    -- Instância do gerador de baud rate
    uut: entity work.mod_counter(arch)
        generic map(MAX_COUNT => CLOCK_DIVISOR, BIT_WIDTH => COUNTER_BIT_WIDTH)
        port map(sys_clock => sys_clk, 
                reset_n => reset_n, 
                q_out => open, 
                max_tick => max_tick
            );

    -- Geração do clock
    process
    begin
        while true loop
            sys_clk <= '0';
            wait for CLK_PERIOD / 2;
            sys_clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Processo de teste
    process
    begin
        -- Reset
        reset_n <= '1';
        wait for CLK_PERIOD;
        reset_n <= '0';

        -- Aguardar alguns ciclos
        wait for CLK_PERIOD * 50;
        
        -- Finaliza simulação
        wait;
    end process;
end tb;
