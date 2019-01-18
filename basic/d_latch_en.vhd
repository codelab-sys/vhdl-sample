-- Author 	: Antony. Han
-- Description
--			: D Latch with gated enable

library IEEE;
use IEEE.std_logic_1164.all;

entity d_latch_en is
	port(
		enable 	: in std_logic; -- active high
		gate 	: in std_logic;
		data 	: in std_logic;
		y 		: out std_logic
	);
end d_latch_en;

architecture behav of d_latch_en is
begin

process (enable, data, gate) begin

	if (( enable and gate ) = '1') then
		y <= data;
	end if;
	
end process;

end behav;




