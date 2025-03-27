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

entity eq is
    port(
        a, b: in std_logic_vector(1 downto 0);
        aeqb: out std_logic
    );
end eq;

-- (!a1.!b1).(!a0.!b0) + (!a1.!b1).(a0.b0) + (a1.b1).(!a0.!b0) + (a1.b1).(a0.b0)
architecture sop_arch of eq is
    signal p0, p1, p2, p3: std_logic;
begin
    -- sum of product terms
    p0 <= ((not a(1)) and (not b(1))) and ((not a(0)) and (not b(0)));
    p1 <= ((not a(1)) and (not b(1))) and (a(0) and b(0));
    p2 <= (a(1) and b(1)) and ((not a(0)) and (not b(0)));
    p3 <= (a(1) and b(1)) and (a(0) and b(0));
end sop_arch ; -- sop_arch