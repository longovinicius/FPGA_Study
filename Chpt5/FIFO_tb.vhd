library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo_tb is
end fifo_tb;

architecture tb of fifo_tb is
    constant B : natural := 8; -- Tamanho do dado
    constant W : natural := 4; -- Tamanho do endereço (FIFO de 2^W)

    signal CLK, RST, RD, WR : std_logic := '0';
    signal W_DATA, R_DATA   : std_logic_vector(B-1 downto 0);
    signal EMPTY, FULL      : std_logic;

begin
    -- Instância da FIFO
    uut: entity work.fifo(arch)
        generic map(B => B, W => W)
        port map(CLK => CLK, RST => RST, RD => RD, WR => WR, 
                 W_DATA => W_DATA, R_DATA => R_DATA, EMPTY => EMPTY, FULL => FULL);

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
        -- Reset inicial
        RST <= '1';
        wait for 20 ns;
        RST <= '0';

        -- Escreve dados na FIFO
        for i in 0 to 15 loop
            W_DATA <= std_logic_vector(to_unsigned(i, B));
            WR <= '1';
            wait for 20 ns;
            WR <= '0';
            wait for 20 ns;
        end loop;

        -- Lê os dados da FIFO
        for i in 0 to 15 loop
            RD <= '1';
            wait for 20 ns;
            RD <= '0';
            wait for 20 ns;
        end loop;

        -- Finaliza simulação
        wait;
    end process;
end tb;
