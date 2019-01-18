-- Author 	: Antony. Han
-- Description
--			: D Latch with gated asynchronous data

library IEEE;
use IEEE.std_logic_1164.all;

entity d_latch_e is
	port(
		enable 	: in std_logic; -- active high
		gate 	: in std_logic;
		data 	: in std_logic;
		y 		: out std_logic
	);
end d_latch_e;

architecture behav of d_latch_e is
begin

process (enable, data, gate) begin

	if (enable = '1') then
		y <= data and gate;
	end if;
	
end process;

end behav;




