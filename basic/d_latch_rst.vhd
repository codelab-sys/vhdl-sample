-- Author 	: Antony. Han
-- Description
--			: D Latch with Asynchronous reset and enable

library IEEE;
use IEEE.std_logic_1164.all;

entity d_latch_rst is
	port(
		reset 	: in std_logic; -- active low
		enable 	: in std_logic; -- active high
		data 	: in std_logic;
		y 		: out std_logic
	);
end d_latch_rst;

architecture behav of d_latch_rst is
begin

process (reset, enable, data) begin

	if( reset = '0')then	
		y <= '0';
	elsif (enable = '1') then
		y <= data;
	end if;
	
end process;

end behav;




