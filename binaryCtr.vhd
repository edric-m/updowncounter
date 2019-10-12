library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL; --?

--counter must be able to count to ~ 60

entity binaryCtr is
	port (reset : in std_logic;
			clock : in std_logic;
			mode : in std_logic;
			bVal : out std_logic_vector(3 downto 0));
end binaryCtr;

architecture behav of binaryCtr is

signal ctr : std_logic_vector (3 downto 0) :="0000";

begin

process(clock,reset)
begin
	if reset = '1' then
	
		if mode = '1' then
			ctr <= "0000";
		else
			ctr <= "1111";
		end if;
	
	elsif clock'event and clock='0' then
		--if mode = count up
		
		if mode = '1' then
			if ctr /= "1111" then
			
				ctr <= ctr + 1;
				
			end if;
		else
			if ctr /= "0000" then
				ctr <= ctr - 1;
			end if;
		end if;
		
	end if;
end process;

bVal <= ctr;

end behav;