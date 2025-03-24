-- Truth table of a 1-bit equality comparator
-- input    Output
-- 0  0     1
-- 0  1     0
-- 1  0     0
-- 1  1     1

-- eq = i_0 . i_1 + !i_0 . !i_1

library ieee;
use ieee.std_logic_1164.all;
entity eq1 is
    port(
        i0, i1: in std_logic;
        eq: out std_logic
    );
end eq1;

architecture sop_arch of eq1 is
    signal p0, p1: std_logic;
begin
    -- sum of two product terms
    eq <= p0 or p1;
    -- product terms
    p0 <= (not i0) and (not i1);
    p1 <= i0 and i1;
end sop_arch;