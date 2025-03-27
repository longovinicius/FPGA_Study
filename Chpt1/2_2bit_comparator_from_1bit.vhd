library ieee;
use ieee.std_logic_1164.all;

-- Truth Table
-- input    output
-- 00 00    1
-- 01 00    0
-- 00 01    0
-- 01 01    1
-- 10 00    0
-- 10 01    0
-- ...
-- 11 11    1

entity eq2 is
    port(
        a,b: in std_logic_vector(1 downto 0);
        aeqb: out std_logic
    );
end eq2;

architecture struc_arch of eq2 is
    signal e0, e1: std_logic;
begin
    -- instantiate two 1-bit comparators
    eq_bit0_unit: entity work.eq1(sop_arch)
        port map(i0=>a(0), i1=>b(0), eq =>e0);
    eq_bit1_unit: entity work.eq1(sop_arch)
        port map(i0=>a(1), i1=>b(1), eq=>e1);
    aeqb <= e0 and e1;
end struc_arch;