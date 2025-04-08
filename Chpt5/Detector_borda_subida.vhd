library ieee;
use ieee.std_logic_1164.all;

entity edge_detect is
    port(
        clk, rst    : in std_logic;
        level       : in std_logic; -- sinal atual do clock
        tick        : out std_logic -- avisa quando tem borda de subida
    );
end edge_detect;

architecture moore_arch of edge_detect is

    type state_type is (zero, one, edge);
    signal state_reg, state_next  : state_type;

begin
    -- state register
    process(clk, rst)
    begin
        if (rst = '1') then
            state_reg <= zero;
        elsif (clk'event and clk = '1') then 
            state_reg <= state_next;
        end if;
    end process;
    -- next state
    process(state_reg, level)
    begin
        state_next <= state_reg;
        tick <= '0';
        case state_reg is
            when zero =>
                if level = '1' then
                    state_next <= edge;
                end if;
            when edge =>
                tick <= '1';
                if level = '1' then
                    state_next <= one;
                else
                    state_next <= zero;
                end if;
            when one =>
                if level = '0' then
                    state_next <= zero;
                end if;
        end case;
    end process;

end moore_arch ; -- moore_arch    