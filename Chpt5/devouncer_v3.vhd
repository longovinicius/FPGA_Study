library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer_v3 is
    generic(
        BOUNCING_LIMIT  : integer := 20
    );
    port(
        sys_clk     : in std_logic;
        reset_n     : in std_logic;
        signal_i    : in std_logic;
        output_o    : out std_logic
    );
end debouncer_v3;

architecture rtl of debouncer_v3 is

    type state_type is (not_bounced, bounced);
    signal state_reg, state_next : state_type;
    signal counter : integer range 0 to BOUNCING_LIMIT; -- Evita estouro de range

begin
    -- State Register
    process(sys_clk, reset_n)
    begin
        if reset_n = '0' then
            state_reg <= not_bounced;
            counter <= 0;
        elsif rising_edge(sys_clk) then
            state_reg <= state_next;
            if state_reg /= state_next then
                counter <= 0;  -- Reset do contador ao mudar de estado
            else
                if counter < BOUNCING_LIMIT then
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    -- Next State Logic
    process(state_reg, signal_i, counter)
    begin
        state_next <= state_reg;  -- Default: mantém o estado

        case state_reg is
            when not_bounced =>
                if signal_i = '1' and counter = BOUNCING_LIMIT then
                    state_next <= bounced;
                end if;

            when bounced =>
                if signal_i = '0' and counter = BOUNCING_LIMIT then
                    state_next <= not_bounced;
                end if;
        end case;
    end process;

    -- Output Logic
    output_o <= '1' when state_reg = bounced else '0';

end rtl;
