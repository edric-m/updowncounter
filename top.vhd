library ieee;
use ieee.std_logic_1164.all;

entity top is
	port (control : in std_logic_vector(5 downto 0);
			clock : in std_logic;
			led : out std_logic;
			gray : out std_logic_vector(3 downto 0));
end top;

architecture behav of top is

signal clk : std_logic;
signal bin : std_logic_vector(3 downto 0);

component clockdiv
		port(clk : in std_logic;
				en	: in std_logic;
				slow_clk : out std_logic);
end component;

component binaryCtr
	port (reset : in std_logic;
			clock : in std_logic;
			isUp : in std_logic;
			bVal : out std_logic_vector(3 downto 0));
end component;

begin

f : clockDiv port map (clk => clock, en => control(5), slow_clk => clk);
c : binaryCtr port map (reset => control(4), clock => clk, isUp => control(3), bVal => bin);

end behav;