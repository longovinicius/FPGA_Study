library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FourBitAdder is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0); -- Entrada de 4 bits
        B    : in  STD_LOGIC_VECTOR(3 downto 0); -- Entrada de 4 bits
        Cin  : in  STD_LOGIC;                   -- Carry in (entrada de transporte)
        Sum  : out STD_LOGIC_VECTOR(3 downto 0); -- Saída de soma de 4 bits
        Cout : out STD_LOGIC                    -- Carry out (saída de transporte)
    );
end FourBitAdder;

architecture Behavioral of FourBitAdder is
    signal Carry : STD_LOGIC_VECTOR(4 downto 0); -- Sinal para carregar os transportes internos
begin

    -- O bit mais à direita do carry interno é conectado ao Cin
    Carry(0) <= Cin;

    -- Processo de soma bit a bit com carry
    process (A, B, Carry)
    begin
        for i in 0 to 3 loop
            Sum(i) <= A(i) XOR B(i) XOR Carry(i); -- Soma de bits
            Carry(i+1) <= (A(i) AND B(i)) OR (A(i) AND Carry(i)) OR (B(i) AND Carry(i)); -- Gera o carry
        end loop;
    end process;

    -- O último carry é a saída Cout
    Cout <= Carry(4);

end Behavioral;
