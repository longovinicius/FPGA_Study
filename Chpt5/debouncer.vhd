library ieee;
use ieee.std_logic_1164.all;

entity debouncer is
    port(
        clk, reset_n    : in std_logic;
        signal_i       : in std_logic;
        output_o        : out std_logic
    );
end debouncer;

architecture arch of debouncer is

    type state_type is (zero, wait1_1, wait1_2, wait1_3, wait0_3, wait0_2, wait0_1, one);
    signal state_reg, state_next    : state_type;

begin
    -- state register
    process(clk, reset_n)
    begin
        if (reset_n = '1') then
            state_reg <= zero;
        elsif (rising_edge(clk)) then
            state_reg <= state_next;
        end if;
    end process;
    -- next state
    process(clk, state_reg, signal_i)
    begin
        state_next <= state_reg;
        case state_reg is
            when zero =>
                if (signal_i = '1') then 
                    state_next <= wait1_1;
                else
                    state_next <= zero;
                end if;
            when wait1_1 =>
                if (signal_i = '1') then
                    if (rising_edge(clk)) then
                        state_next <= wait1_2;
                    else
                        state_next <= wait1_1;
                    end if;
                else
                    state_next <= zero;
                end if;
            when wait1_2 =>
                if (signal_i = '1') then
                    if (rising_edge(clk)) then
                        state_next <= wait1_3;
                    else
                        state_next <= wait1_2;
                    end if;
                else
                    state_next <= zero;
                end if;
            when wait1_3 =>
                if (signal_i = '1') then
                    if (rising_edge(clk)) then
                        state_next <= one;
                    else
                        state_next <= wait1_3;
                    end if;
                else
                    state_next <= zero;
                end if;
            -- ... same logic for 1
        end case;
    end process;

end arch;