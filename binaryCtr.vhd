library ieee;
use ieee.std_logic_1164.all;

entity binaryCtr is
	port (reset : in std_logic;
			clock : in std_logic;
			isUp : in std_logic;
			bVal : out std_logic_vector(3 downto 0));
end binaryCtr;

architecture behav of binaryCtr is

component jkff
	port ( J, K, clk : in std_logic;
			 Q, nQ: out std_logic);
end component;

begin


end behav;