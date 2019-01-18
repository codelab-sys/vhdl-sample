-- Author 	: Antony. Han
-- Description
--			: Rising edge D Flip Flop with asynchronous reset and clock enable

library IEEE;
use IEEE.std_logic_1164.all;

entity dff_ck_en is
	port(
		reset 	: in std_logic; -- active low
		data 	: in std_logic;
		clk 	: in std_logic;
		en  	: in std_logic; -- active high
		q 		: out std_logic
	);
end dff_ck_en;

architecture behav of dff_ck_en is
begin

process (clk, reset, en) begin

	if (reset = '0') then
		q <= '0';
	elsif (clk'event and clk = '1') then
		if (en = '1') then
			q <= data;
		end if;
	end if;
	
end process;

end behav;


