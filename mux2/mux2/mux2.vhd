library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux2 is
	port(d0, d1: in STD_LOGIC_VECTOR(3 downto 0);
		s: in STD_LOGIC;
		Y: OUT STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of mux2 is
begin
	y <= d0 when s = '0' else d1;
end;