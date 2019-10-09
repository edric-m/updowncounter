library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL; --?

--counter must be able to count to ~ 60

entity binaryCtr is
	port (reset : in std_logic;
			clock : in std_logic;
			isUp : in std_logic;
			bVal : out std_logic_vector(3 downto 0));
end binaryCtr;

architecture behav of binaryCtr is

signal ctr : std_logic_vector (3 downto 0) :="0000";

begin

process(clock)
begin
	if clock'event and clock='0' then
		--if mode = count up
		ctr <= ctr + 1;
	end if;
end process;

bVal <= ctr;

end behav;