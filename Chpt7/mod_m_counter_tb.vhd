library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baud_gen_tb is
end baud_gen_tb;

architecture tb of baud_gen_tb is
    constant DVSR      : integer := 163; -- Configuração do divisor para 19200 baud
    constant DVSR_BIT  : integer := 9;

    signal CLK, RST    : std_logic := '0';
    signal MAX_TICK    : std_logic;

begin
    -- Instância do gerador de baud rate
    uut: entity work.mod_m_counter(arch)
        generic map(M => DVSR, N => DVSR_BIT)
        port map(CLK => CLK, RESET => RST, Q => open, MAX_TICK => MAX_TICK);

    -- Geração do clock
    process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Processo de teste
    process
    begin
        -- Reset
        RST <= '1';
        wait for 20 ns;
        RST <= '0';

        -- Aguardar alguns ciclos
        wait for 1000 ns;
        
        -- Finaliza simulação
        wait;
    end process;
end tb;
