library ieee;
use ieee.std_logic_1164.all;

entity clockDiv is
	port(clk : in std_logic;
			en	: in std_logic;
			slow_clk : out std_logic);
end clockDiv;

architecture behav of clockDiv is

constant lim : integer := 24_999_999; --2 secs
signal ctr : integer range 0 to lim; 
signal sclk : std_logic;

begin 
	process(clk)
	begin
		if en = '1' then
			if clk'event and clk = '0' then
				
				ctr <= ctr + 1;
				
				if ctr = lim then
					sclk <= not sclk;
					ctr <= 0;
				end if;
			
			end if;
		
		end if;
	end process;
	
	slow_clk <= sclk;
	
end behav;