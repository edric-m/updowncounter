library ieee;
use ieee.std_logic_1164.all;

entity selector is
	port (clk : in std_logic;
			d1, d2 : in std_logic_vector(3 downto 0);
			o : out std_logic_vector(3 downto 0);
			di : out std_logic_vector(3 downto 0));
end selector;

architecture behav of selector is

signal ctr : std_logic := '0';

constant lim : integer := 99_999; --should be fast, but not too fast
signal cctr : integer range 0 to lim; 
signal sclk : std_logic := '0';

begin

process(clk)
begin
	if clk'event and clk = '0' then
	
		cctr <= cctr + 1;
		
		if cctr = lim then
			sclk <= not sclk;
			cctr <= 0;
		end if;
	
	end if;

end process;

--take in a 4 bit binary and return the appropriate display code
process(sclk)
begin

	if sclk'event and sclk = '0' then
	
		if ctr = '0' then
	
			di <= "1101";
			o <= d1;
			
			
			ctr <= '1';
	
		else 
	
			di <= "1110";
			o <= d2;
			
			
			ctr <= '0';
			
		end if;
	
	end if;

end process; 


end behav;