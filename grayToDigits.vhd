library ieee;
use ieee.std_logic_1164.all;

entity grayToDigits is
	port (g : in std_logic_vector(5 downto 0);
			disp1 : out std_logic_vector(3 downto 0);
			disp2 : out std_logic_vector(3 downto 0));
end grayToDigits;

architecture behav of grayToDigits is

signal g54 : std_logic_vector(1 downto 0);
signal A : std_logic;
signal B : std_logic;
signal C : std_logic;
signal D : std_logic;

begin

process(g)

begin

	g54(1) <= g(5);
	g54(0) <= g(4);
	A <= g(3);
	B <= g(2);
	C <= g(1);
	D <= g(0);

	if g54 = "00" then
		disp1(2) <= '0';
		disp1(1) <= '0';
		disp1(0) <= (A and B) or (A and C);
		disp2(3) <= A and (not B) and (not C);
		disp2(2) <= ((not A) and B) or (B and C);
		disp2(1) <= (A and B and (not C)) or ((not A) and C);
	
	elsif g54 = "01" then
		disp1(2) <= '0';
		disp1(1) <= A or B;
		disp1(0) <= ((not A) and (not B)) or (A and B and C);
		disp2(3) <= (A and B and (not C)) or ((not A) and (not B) and C);
		disp2(2) <= ((not B) and (not C)) or (A and (not B));
		disp2(1) <= ((not A) and (not B) and (not C)) or ((not A) and B and C) or (A and (not B) and C);
	
	elsif g54 = "10" then
		disp1(2) <= A;
		disp1(1) <= not A;
		disp1(0) <= not A;
		disp2(3) <= (not A) and B and C;
		disp2(2) <= (B and (not C)) or (A and B) or ((not A) and (not B) and C);
		disp2(1) <= ((not A) and (not C)) or (A and C);
	
	elsif g54 = "11" then
		disp1(2) <= '1';
		disp1(1) <= A and B;
		disp1(0) <= (A and (not B)) or ((not A) and B) or ((not A) and C);
		disp2(3) <= ((not A) and (not B) and (not C)) or (A and (not B) and C);
		disp2(2) <= (A and (not B) and (not C)) or ((not A) and B and C);
		disp2(1) <= (A and (not B) and (not C)) or (A and B and C) or ((not A) and B and (not C));
	
	end if;
	
	disp1(3) <= '0';
	disp2(0) <= g(0);

end process;

--return two binary numbers (4 bits each) representing the gray code as a decimal number

end behav;