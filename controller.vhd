library ieee;
use ieee.std_logic_1164.all;

entity controller is
	port (clk : in std_logic;
			dip : in std_logic_vector(3 downto 0);
			ctlBus : out std_logic_vector(2 downto 0));
end controller;

architecture behav of controller is

type state_type is (stop, count_up, count_down);
signal state: state_type;
signal mode : std_logic := '1';
signal stp : std_logic := '1';

begin

process(clk, dip(2))
begin
	if dip(2) = '0' then
		state <= stop;
		if mode = '1' then
			ctlBus <= "101";
		else
			ctlBus <= "100";
		end if;
	elsif clk'event and clk = '0' then
	
		case state is
			when stop => 
				if stp = '1' then 
					state <= stop;
					ctlBus <= "000";
				else
					if mode = '1' then
						state <= count_up;
						ctlBus <= "011";
					else
						state <= count_down;
						ctlBus <= "010";
					end if;
				end if;
			when count_up => 
				if stp = '1' then
					state <= stop;
					ctlBus <= "000";
				else
					if mode = '1' then
						state <= count_up;
						ctlBus <= "011";
					else
						state <= count_down;
						ctlBus <= "010";
					end if; 
				end if;
			when count_down => 
				if stp = '1' then
					state <= stop;
					ctlBus <= "000";
				else
					if mode = '1' then
						state <= count_up;
						ctlBus <= "011";
					else
						state <= count_down;
						ctlBus <= "010";
					end if; 
				end if;
		end case;
	
	end if;
end process;

process(dip(0))
begin

	if dip(0)'event and dip(0) = '0' then
	
		mode <= not mode;
	
	end if;

end process;

process(dip(1))
begin

	if dip(1)'event and dip(1) = '0' then
	
		stp <= not stp;
	
	end if;

end process;

end behav;