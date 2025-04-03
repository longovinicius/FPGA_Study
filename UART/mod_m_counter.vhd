-- Counter 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mod_counter is
   generic(
      MAX_COUNT   : integer := 10;
      BIT_WIDTH   : integer := 4
   );
   port(
      sys_clock   : in std_logic;
      reset_n     : in std_logic;

      max_tick_o    : out std_logic;
      q_out       : out std_logic_vector(BIT_WIDTH-1 downto 0)
   );
end mod_counter;

architecture arch of mod_counter is

   signal r_reg, r_next    : unsigned(BIT_WIDTH-1 downto 0);

begin
   -- register logic
   process(sys_clock, reset_n)
   begin
      if reset_n = '1' then 
         r_reg <= (others => ('0'));
      elsif rising_edge(sys_clock) then
         r_reg <= r_next;
      end if;
   end process;
   
   -- next-step logic
   r_next <= (others => ('0')) when r_reg = (MAX_COUNT -1) else
             r_reg + 1;

   -- output logic
   q_out <= std_logic_vector(r_reg);
   max_tick_o <= '1' when r_reg = (MAX_COUNT - 1) else
               '0';

end arch ; -- arch