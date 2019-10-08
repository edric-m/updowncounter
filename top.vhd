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

component clockdiv
		port(clk : in std_logic;
				en	: in std_logic;
				slow_clk : out std_logic);
end component;

begin

f : clockDiv port map (clk => clock, en => control(5), slow_clk => clk);

end behav;