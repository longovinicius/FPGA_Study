library ieee;
use ieee.std_logic_1164.all;

entity DFF_synchronous_enable is
    port(
        D, CLK, RST, EN: in std_logic;
        Q: out std_logic
    );
end entity DFF_synchronous_enable;

architecture RTL of DFF_synchronous_enable is
begin
    process(CLK, RST)
    begin
        if (RST = '1') then
            Q <= '0';
        elsif (CLK'event and clk='1') then
            if (EN = '1') then
                Q <= D;
            end if;
        end if;
    end process;
end architecture RTL;