library ieee;
use ieee.std_logic_1164.all;

entity binToGray is
	port (bin : in std_logic_vector(5 downto 0);
			gry : out std_logic_vector(5 downto 0));
end binToGray;

architecture behav of binToGray is

begin

gry(0) <= bin(0) xor bin(1);
gry(1) <= bin(1) xor bin(2);
gry(2) <= bin(2) xor bin(3);

gry(3) <= bin(3) xor bin(4);
gry(4) <= bin(4) xor bin(5);
gry(5) <= bin(5);-- xor bin(3);
--gry(3) <= bin(3);

end behav;