
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity inv is
	port(a: in STD_LOGIC_VECTOR(15 downto 0);
		 y: out STD_LOGIC_VECTOR(15 downto 0));
end;


architecture synth of inv is
begin
	y <= not a(15 downto 0);

end;