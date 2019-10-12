library ieee;
use ieee.std_logic_1164.all;

entity top is
	port (control : in std_logic_vector(5 downto 0);
			clock : in std_logic;
			led : out std_logic;
			dec : out std_logic_vector(3 downto 0));
end top;

architecture behav of top is

signal clk : std_logic;
signal cbin : std_logic_vector(3 downto 0);
signal gray : std_logic_vector(3 downto 0);

component clockdiv
		port(clk : in std_logic;
				en	: in std_logic;
				slow_clk : out std_logic);
end component;

component binaryCtr
	port (reset : in std_logic;
			clock : in std_logic;
			mode : in std_logic;
			bVal : out std_logic_vector(3 downto 0));
end component;

component binToGray is
	port (bin : in std_logic_vector(3 downto 0);
			gry : out std_logic_vector(3 downto 0));
end component;

begin

f : clockDiv port map (clk => clock, en => control(5), slow_clk => clk);
c : binaryCtr port map (reset => control(4), clock => clk, mode => control(3), bVal => cbin);
g : binToGray port map (bin => cbin, gry => gray);
--to make an impulse set signal, then use the boards clock to reset the signal

end behav;