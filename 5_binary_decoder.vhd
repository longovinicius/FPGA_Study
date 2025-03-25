library ieee;
use ieee.std_logic_1164.all;

entity binary_decoder is
    port(
        a   : in std_logic_vector(1 downto 0);
        y       : out std_logic_vector(3 downto 0)
    );
end binary_decoder;

architecture cond_arch of binary_decoder is
begin
    y <= "0001" when a="00" else
         "0010" when a="01" else
         "0100" when a="10" else
         "1000";

end cond_arch ; -- cond_arch