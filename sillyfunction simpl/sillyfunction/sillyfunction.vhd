library IEEE; use IEEE.STD_LOGIC_1164.all;

entity sillyfunction is
	port(a, b, c: in STD_LOGIC;
		 y:		out STD_LOGIC);
	end;
	
	architecture synth of sillyfunction is
	begin
	y <= (not b and not c) or
		(a and not b);
	end;
		
		