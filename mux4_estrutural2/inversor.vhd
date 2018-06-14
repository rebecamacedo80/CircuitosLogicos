library IEEE; use IEEE.STD_LOGIC_1164.all;

entity inversor is

port (a: in STD_LOGIC;
	y: out STD_LOGIC);
end;

architecture synth of inversor is
begin
y <= not a;
end;