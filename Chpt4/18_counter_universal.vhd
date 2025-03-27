library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity univ_bin_counter is
    generic(N: integer := 4);
    port(
        CLK, RST                : in std_logic;
        SYN_CLR, LOAD, EN, UP   : in std_logic;
        D                       : in std_logic_vector(N-1 downto 0);
        MAX_TICK, MIN_TICK      : out std_logic;
        Q                       : out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture arch of univ_bin_counter is
    signal r_reg: unsigned(N-1 downto 0);
    signal r_next: unsigned(N-1 downto 0);
begin
    --register
    process(CLK, RST)
    begin
        if (RST = '1') then
            r_reg <= (others => '0');
        elsif (CLK'event and CLK = '1') then
            r_reg <= r_next;
        end if;
    end process;
    --next state logic
    r_next <=   (others => '0') when SYN_CLR = '1' else
                unsigned(D) when LOAD = '1' else
                r_reg + 1 when EN = '1' and UP = '1' else
                r_reg - 1 when EN = '1' and UP = '0' else
                r_reg;
    --output logic
    Q <= std_logic_vector(r_reg);
    MAX_TICK <= '1' when r_reg = (2**N-1) else '0';
    MIN_TICK <= '1' when r_reg = 0 else '0';
end arch;

