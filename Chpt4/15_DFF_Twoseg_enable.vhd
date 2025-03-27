library ieee;
use ieee.std_logic_1164.all;

entity DFF_Twoseg_enable is
    port(
        D, CLK, RST, EN: in std_logic;
        Q: out std_logic
    );
end entity DFF_Twoseg_enable;

architecture two_seg_arch of DFF_Twoseg_enable is
    signal r_reg, r_next: std_logic;
begin
    -- DFF
    process(CLK, RST)
    begin
        if (RST = '1') then
            r_reg <= '0';
        elsif (CLK'event and CLK='1') then
            r_reg <= r_next;
        end if;
    end process;
    -- Next state logic
    r_next <= D when EN = '1' else r_reg;
    -- Output logic
    Q <= r_reg;
end architecture two_seg_arch;