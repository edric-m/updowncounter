library ieee;
use ieee.std_logic_1164.all;

entity grayToDigits is
	port (g : in std_logic_vector(3 downto 0);
			disp1 : out std_logic_vector(3 downto 0);
			disp2 : out std_logic_vector(3 downto 0));
end grayToDigits;

architecture behav of grayToDigits is

begin

--return two binary numbers (4 bits each) representing the gray code as a decimal number

end behav;