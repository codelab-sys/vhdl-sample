-- Author 	: Antony. Han
-- Description
--			: D Latch with data and enable

library IEEE;
use IEEE.std_logic_1164.all;

entity d_latch is
	port(
		enable 	: in std_logic; -- active high
		data 	: in std_logic;
		y 		: out std_logic
	);
end d_latch;

architecture behav of d_latch is
begin

process (enable, data) begin

	if (enable = '1') then
		y <= data;
	end if;
	
end process;

end behav;




