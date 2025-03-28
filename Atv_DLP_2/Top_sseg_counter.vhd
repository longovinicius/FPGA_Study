library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_sseg_counter is
    port(
        CLK, RUN, RST    : in std_logic;
        sseg                    : out std_logic_vector(6 downto 0)
    );
end Top_sseg_counter;

architecture arch of Top_sseg_counter is
    signal r_reg, r_next    : unsigned(3 downto 0);
begin
    -- register
    process(CLK, RST)
    begin
        if (RST = '1') then
            r_reg <= (others => '0');
        elsif (CLK'event and CLK = '1') then
            r_reg <= r_next;
        end if;
    end process;
    -- next state logic
        r_next <= r_reg + 1 when RUN = '1' else
                  r_reg;
    -- output logic 
        sseg_unit: entity work.hex2sseg
            port map(hex=>std_logic_vector(r_reg), sseg=>sseg);
        end arch;

