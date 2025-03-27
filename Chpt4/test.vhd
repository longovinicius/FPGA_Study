library ieee;
use ieee.std_logic_1164.all;

entity DFF_test is
    port(
        CLK, D, RST, EN:     in std_logic;
        Q:          out std_logic
    );
end DFF_test;

architecture two_seg_arch of DFF_test is
    signal r_reg, r_next: std_logic;
begin
    -- DFF
    process(CLK, RST, EN)
    begin
        if (RST = '1') then 
            r_reg <= '0';
        elsif (CLK'event and CLK = '1') then
            r_reg <= r_next;
        end if;
    end process;
    -- Next logic
    r_next <= d when EN = '1' else r_reg;
    -- Output logic
    q <= r_reg;
end two_seg_arch;