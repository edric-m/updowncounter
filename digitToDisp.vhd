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
		when "0000" => disp = "1111110";
		when "0001" => disp = "0110000";
		when "0010" => disp = "1101101";
		when "0011" => disp = "1111001";
		when "0100" => disp = "0110011";
		when "0101" => disp = "1011011";
		when "0110" => disp = "1011111";
		when "0111" => disp = "1110000";
		when "1000" => disp = "1111111";
		when "1001" => disp = "1111011";
		when others => disp = "0111110";
	end case;

end process; 


end behav;