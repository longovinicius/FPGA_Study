library ieee;
use ieee.std_logic_1164.all;

entity DFF_reset is
    port(
        D, CLK, RST: in std_logic;
        Q: out std_logic
    );
end entity DFF_reset;

architecture RTL of DFF_reset is
begin
    process(CLK, RST)
    begin
        if (RST = '1') then
            Q <= '0';
        elsif (CLK'event and clk='1') then
            Q <= D;
        end if;
    end process;
end architecture RTL;