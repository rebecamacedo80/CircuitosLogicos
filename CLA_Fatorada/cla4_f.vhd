library IEEE; use IEEE.STD_LOGIC_1164.all;

entity cla4 is
	port(a, b: 		   in  STD_LOGIC_VECTOR(3 downto 0);
		 cin:  		   in  STD_LOGIC;
		 s:     	   out STD_LOGIC_VECTOR(3 downto 0);
		 p, g: 		   buffer STD_LOGIC);
end;

architecture struct of cla4_f is

component vuafatorada is
	port(cin: 	 in STD_LOGIC;
		 p, g:   in STD_LOGIC_VECTOR(3 downto 0);
		 pg, gg: out STD_LOGIC;
		 c: 	 inout STD_LOGIC_VECTOR(3 downto 1));
end component;

component fulladder_pg is
	port(a, b, cin:     in STD_LOGIC;
		 p, g: inout STD_LOGIC;
		 s: out STD_LOGIC);
end component;

signal sinalp, sinalg:   STD_LOGIC_VECTOR(3 downto 0);
signal sinalc:      	 STD_LOGIC_VECTOR(3 downto 1);

begin
	somador0: fulladder_pg   port map (a(0), b(0), cin, sinalp(0), sinalg(0), s(0));
	somador1: fulladder_pg   port map (a(1), b(1), sinalc(1), sinalp(1), sinalg(1), s(1));
	somador2: fulladder_pg   port map (a(2), b(2), sinalc(2), sinalp(2), sinalg(2), s(2));
	somador3: fulladder_pg   port map (a(3), b(3), sinalc(3), sinalp(3), sinalg(3), s(3));
	carry: 	 vuafatorada port map (cin, sinalp, sinalg, p, g, sinalc);
end;