library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity free_run_bin_counter is
    generic(N: integer := 4);
    port(
        CLK, RST    : in std_logic;
        MAX_TICK    : out std_logic;
        Q           : out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture arch of free_run_bin_counter is
    signal r_reg: unsigned(N-1 downto 0);
    signal r_next: unsigned(N-1 downto 0);
begin
    process(CLK, RST)
    begin
        if (RST = '1') then 
            r_reg <= ((others => '0') );
        elsif (CLK'event and CLK = '1') then
            r_reg <= r_next;
        end if;
    end process;
    -- next state logic
    r_next <= r_reg + 1;
    -- output logic
    Q <= std_logic_vector(r_reg);
    MAX_TICK <= '1' when r_reg = (2**N-1) else '0';
    
end arch;