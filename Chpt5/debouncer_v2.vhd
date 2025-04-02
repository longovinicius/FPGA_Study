library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer_v2 is
    generic(
        DEBOUNCE_CYCLES     : integer := 20
    );
    port(
        sysclk      : in std_logic;
        reset_n     : in std_logic;

        signal_i    : in std_logic;
        output_o    : out std_logic
    );
end debouncer_v2;

architecture rtl of debouncer_v2 is
    signal counter      : integer;
    signal debounced    : std_logic;

begin

    process(sysclk, reset_n)
    begin
        if reset_n = '0' then
            counter <= 0;
            debounced <= '0';

        elsif rising_edge(sysclk) then
            if debounced /= signal_i then
                if counter = DEBOUNCE_CYCLES then
                    debounced <= signal_i;
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    output_o <= debounced;
end rtl;