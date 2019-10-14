library ieee;
use ieee.std_logic_1164.all;

entity top is
	port (control : in std_logic_vector(5 downto 0);
			clock : in std_logic;
			led : out std_logic;
			dec : out std_logic_vector(6 downto 0);
			seg : out std_logic_vector(3 downto 0));
end top;

architecture behav of top is

signal sclk : std_logic;
signal cbin : std_logic_vector(5 downto 0);
signal gray : std_logic_vector(5 downto 0);
signal dd1, dd2 : std_logic_vector(3 downto 0);
signal so : std_logic_vector(3 downto 0);
--signal seg : std_logic_vector(1 downto 0);

component clockdiv
		port(clk : in std_logic;
				en	: in std_logic;
				slow_clk : out std_logic);
end component;

component binaryCtr
	port (reset : in std_logic;
			clk : in std_logic;
			mode : in std_logic;
			bVal : out std_logic_vector(5 downto 0));
end component;

component binToGray is
	port (bin : in std_logic_vector(5 downto 0);
			gry : out std_logic_vector(5 downto 0));
end component;

component grayToDigits is
	port (g : in std_logic_vector(5 downto 0);
			disp1 : out std_logic_vector(3 downto 0);
			disp2 : out std_logic_vector(3 downto 0));
end component;

component digitToDisp is
	port (d : in std_logic_vector(3 downto 0);
			disp : out std_logic_vector(6 downto 0));
end component;

component selector is
	port (clk : in std_logic;
			d1, d2 : in std_logic_vector(3 downto 0);
			o : out std_logic_vector(3 downto 0);
			di : out std_logic_vector(3 downto 0));
end component;

begin

--checked
f : clockDiv port map (clk => clock, en => '1', slow_clk => sclk); 
c : binaryCtr port map (reset => '0', clk => sclk, mode => '1', bVal => cbin);
g : binToGray port map (bin => cbin, gry => gray);
gd : grayToDigits port map (g => gray, disp1 => dd1, disp2 => dd2);
dd : digitToDisp port map (d => so, disp => dec);
s : selector port map (clk => clock, d1 => dd1, d2 => dd2, o => so, di => seg);

--seg <= "10";
--to make an impulse set signal, then use the boards clock to reset the signal

end behav;