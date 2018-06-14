library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity fulladder_pg is
port(a, b, cin: in STD_LOGIC;
	s: out STD_LOGIC;
	p, g: inout std_logic);
end;

architecture synth of fulladder_pg is

begin
	p <= a xor b;
	g <= a and b;
	s <= p xor cin;
	
end;
