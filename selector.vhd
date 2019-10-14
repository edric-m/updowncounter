library ieee;
use ieee.std_logic_1164.all;

entity selector is
	port (clk : in std_logic;
			d1, d2 : in std_logic_vector(3 downto 0);
			o : out std_logic_vector(3 downto 0);
			di : out std_logic_vector(1 downto 0));
end selector;

architecture behav of selector is

signal ctr : std_logic := '0';

begin

--take in a 4 bit binary and return the appropriate display code
process(clk)
begin

	if clk'event and clk = '0' then
	
		if ctr = '0' then
	
			o <= d1;
			di <= "10";
			
			ctr <= not ctr;
	
		else 
	
			o <= d2;
			di <= "01";
			
			ctr <= not ctr;
			
		end if;
	
	end if;

end process; 


end behav;