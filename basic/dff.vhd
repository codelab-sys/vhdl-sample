-- Author 	: Antony. Han
-- Description
--			: Very simple D Flip Flop

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
	port(
		data 	: in std_logic;
		clk 	: in std_logic;
		q 		: out std_logic
	);
end dff;

architecture behav of dff is
begin

process (clk) begin

	if (clk'event and clk = '1') then
		q <= data;
	end if;
	
end process;

end behav;