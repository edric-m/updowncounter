library ieee;
use ieee.std_logic_1164.all;

entity digitToDisp is
	port (d : in std_logic_vector(3 downto 0);
			disp : out std_logic_vector(6 downto 0));
end digitToDisp;

architecture behav of digitToDisp is

begin

--take in a 4 bit binary and return the appropriate display code
process(d)
begin

	case d is
		when "0000" => disp <= "1111110"; --0
		when "0001" => disp <= "0110000"; --1
		when "0010" => disp <= "1101101"; --2
		when "0011" => disp <= "1111001"; --3
		when "0100" => disp <= "0110011"; --4
		when "0101" => disp <= "1011011"; --5
		when "0110" => disp <= "1011111"; --6
		when "0111" => disp <= "1110000"; --7
		when "1000" => disp <= "1111111"; --8
		when "1001" => disp <= "1111011"; --9
		when others => disp <= "0111110"; --H (error)
	end case;

end process; 


end behav;