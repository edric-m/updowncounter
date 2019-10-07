library ieee;
use ieee.std_logic_1164.all;

entity top is
	port (control : in std_logic_vector(5 downto 0);
			clock : in std_logic;
			led : out std_logic;
			gray : out std_logic_vector(3 downto 0));
end top;

architecture behav of top is


begin

end behav;