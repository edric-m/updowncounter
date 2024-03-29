library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL; --?

--counter must be able to count to ~ 60

entity binaryCtr is
	port (reset : in std_logic;
			clk : in std_logic;
			mode : in std_logic;
			bVal : out std_logic_vector(5 downto 0);
			oled : out std_logic);
end binaryCtr;

architecture behav of binaryCtr is

signal ctr : std_logic_vector (5 downto 0) :="000000";
signal stop : std_logic_vector(4 downto 0) :="00000";

begin

process(clk,reset)
begin
	if reset = '1' then
	
		if mode = '1' then 
			ctr <= "001110"; --reset value count up mode 9d
		else
			ctr <= "111010"; --reset value count down mode 39d
		end if;
		
		stop <= "00000";
	
	elsif clk'event and clk='0' then
		
		if stop /= "11110" then
			stop <= stop + 1;
		end if;
		
		if mode = '1' then
			if stop /= "11110" then
			
				ctr <= ctr + 1;
				
				oled <= '1';
				
			--else output stop counter
			else
				oled <= '0';
				
			end if;
		else
			if stop /= "11110" then
				ctr <= ctr - 1;
				oled <= '1';
			--else output stop counter
			else 
				oled <= '0';
			end if;
		end if;
		
	end if;
end process;

bVal <= ctr;

end behav;