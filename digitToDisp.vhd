library ieee;
use ieee.std_logic_1164.all;

entity digitToDisp is
	port (d : in std_logic_vector(3 downto 0);
			disp : out std_logic_vector(6 downto 0));
end digitToDisp;

architecture behav of digitToDisp is

begin

--take in a 4 bit binary and return the appropriate display code

end behav;