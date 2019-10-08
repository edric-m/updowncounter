library ieee;
use ieee.std_logic_1164.all;

entity jkff is
	port ( J, K, clk : in std_logic;
			 Q, nQ: out std_logic);
end jkff;

architecture behav of jkff is

signal Output : std_logic;

begin

	process(clk)
		begin
		
		if clk'event and clk = '0' then
		
			if J = '0' and K = '0' then
				Output <= Output;
			elsif J = '1' and K = '0' then
				Output <= '1';
			elsif J = '0' and K = '1' then
				Output <= '0';
			elsif J = '1' and K = '1' then
				Output <= not Output;
			end if;
		
		end if;
		
	end process;
	
	Q <= Output;
	nQ <= not Output;

end behav;