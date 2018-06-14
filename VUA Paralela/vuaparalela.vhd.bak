	library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity vuaparalela is
	port(cin: 	 in STD_LOGIC;
		 p, g: 	 in STD_LOGIC_VECTOR(3 downto 0);
		 pg, gg: out STD_LOGIC;
		 c: 	 inout STD_LOGIC_VECTOR(3 downto 1));
end;

architecture synth of vuaparalela is
begin
	pg <= p(0) and p(1) and p(2) and p(3);
	gg <= g(3) or (g(2) and p(3)) or (g(1) and p(3) and p(2)) or (g(0) and p(3) and p(2) and p(1));

	c(1) <= g(0) or (p(0) and cin);
	c(2) <= g(1) or (g(0) and p(1)) or (p(0) and p(1) and cin);
	c(3) <= g(2) or (g(1) and p(2)) or (g(0) and p(1) and p(2)) or (cin and p(0) and p(1) and p(2));
end;