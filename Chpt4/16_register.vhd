library ieee;
use ieee.std_logic_1164.all;

entity BASIC_REG is 
    port(
        CLK, RST, EN    : in std_logic;
        D               : in std_logic_vector(7 downto 0);
        Q               : out std_logic_vector(7 downto 0)
    );
end BASIC_REG;

architecture reg_arch of BASIC_REG is
begin
    process(CLK, RST, EN)
    begin
        if (RST = '1') then
            Q <= (others=>'0');
        elsif (CLK'event and CLK = '1') then 
            if (EN = '1') then
                Q <= D;
            end if;
        end if;
    end process;
end reg_arch;
