library ieee;
use ieee.std_logic_1164.all;

entity DFF is
    port(
        D, CLK: in std_logic;
        Q: out std_logic
    );
end entity DFF;

architecture RTL of DFF is
begin
    process(CLK)
    begin
        if (CLK'event and clk='1') then
            Q <= D;
        end if;
    end process;
end architecture RTL;