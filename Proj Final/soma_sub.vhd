library IEEE; use IEEE.STD_LOGIC_1164.all;

entity soma_sub is
	port(a: 			in  STD_LOGIC_VECTOR(15 downto 0);
		 clk,s0,s1:  	in  STD_LOGIC;
		 s:    			buffer STD_LOGIC_VECTOR(15 downto 0);
		 cout:			out STD_LOGIC);
end;

architecture struct of soma_sub is

component  cla16 is
	port(a, b: in  STD_LOGIC_VECTOR(15 downto 0);
		 cin:  in  STD_LOGIC;
		 cout: out STD_LOGIC;
		 s:    out STD_LOGIC_VECTOR(15 downto 0));		   
end component;

component mux2 is   

port(d0, d1: in STD_LOGIC_VECTOR(15 downto 0);      
s: in STD_LOGIC;      
y: out STD_LOGIC_VECTOR(15 downto 0)); 
end component;

component inv is
	port(a: in STD_LOGIC_VECTOR(15 downto 0);
		 y: out STD_LOGIC_VECTOR(15 downto 0));
end component;

component flop is
    port(clk: in STD_LOGIC;
         d: in STD_LOGIC_VECTOR(15 downto 0);
         q: out STD_LOGIC_VECTOR(15 downto 0));
end component;


signal  i , mux0, mux1, f, s_final: STD_LOGIC_VECTOR(15 downto 0);
begin

inversor: 			inv  port map ( a , i);

multiplexador0: 	mux2 port map ( a, i, s0, mux0);

multiplexador1: 	mux2 port map ( mux0, s_final, s1 , s);

acumulador:			flop port map ( clk, s, f);

somador: 			cla16 port map( mux0, f, s0 , cout , s_final); 
	
end;