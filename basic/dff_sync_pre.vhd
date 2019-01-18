-- Author 	: Antony. Han
-- Description
--			: Rising edge D Flip Flop with synchronous preset

library IEEE;
use IEEE.std_logic_1164.all;

entity dff_sync_pre is
	port(
		preset 	: in std_logic; -- active low
		data 	: in std_logic;
		clk 	: in std_logic;
		q 		: out std_logic
	);
end dff_sync_pre;

architecture behav of dff_sync_pre is
begin

process (clk, preset) begin

	if (clk'event and clk = '1') then
		if (preset = '0') then
			q <= '1';
		else
			q <= data;
		end if;
	end if;
	
end process;

end behav;
