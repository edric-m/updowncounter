library ieee;
use ieee.std_logic_1164.all;

entity tff is
	port ( T, clk : in std_logic;
			 Q, nQ: out std_logic);
end tff;

architecture behav of tff is

signal Output : std_logic;

begin

	process(clk)
		begin
		
		if clk'event and clk = '0' then
		
			if T = '0' then
				Output <= Output;
			else
				Output <= not Output;
			end if;
		
		end if;
		
	end process;
	
	Q <= Output;
	nQ <= not Output;

end behav;