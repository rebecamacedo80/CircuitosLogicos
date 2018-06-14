library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity testbench_soma_sub is
	-- no inputs or outputs
end;

architecture sim of testbench_soma_sub is
component soma_sub
	port(	a: 			in  STD_LOGIC_VECTOR(15 downto 0);
			clk,s0,s1: 	in  STD_LOGIC;
		    s: 			buffer STD_LOGIC_VECTOR(15 downto 0);
			cout: 		out STD_LOGIC);
end component;

signal clk: STD_LOGIC;
signal clk2: STD_LOGIC;
signal a, s, sexpected: STD_LOGIC_VECTOR(15 downto 0);
signal s0, s1, cout, coutexpected: STD_LOGIC;

constant MEMSIZE: integer := 16;
type tvarray is array (MEMSIZE downto 0) of STD_LOGIC_VECTOR (35 downto 0);
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: soma_sub port map (a, clk2, s0, s1, s, cout);
-- generate clock
process begin
	clk <= '1'; wait for 16ns;  
	clk <= '0'; wait for 5ns; 
end process;
-- at start of test, load vectors
-- and pulse reset
process is
file tv: TEXT;
variable i, j: integer;
variable L: line;
variable ch: character;
begin
	-- read file of test vectors
	i := 0;
	FILE_OPEN (tv, "./soma_sub.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 35 downto 0 loop
			read (L, ch);
			if (ch = '_') then
				read (L, ch);
			end if;
			if (ch = '0') then
				testvectors (i) (j) <= '0';
			else
				testvectors (i) (j) <= '1';
			end if;
		end loop;
		i := i + 1;
	end loop;
	vectornum := 0; errors := 0;
	-- reset <= '1'; wait for 27 ns; reset <= '0';
	wait;
end process;
-- apply test vectors on rising edge of clk
process (clk) begin
	if (clk'event and clk='1') then
		a <= testvectors (vectornum) (32 downto 17);
		clk2 <= testvectors (vectornum)(35);
		s0 <= testvectors (vectornum) (34);
		s1 <= testvectors (vectornum) (33);
		sexpected <= testvectors (vectornum)(16 downto 1);
		coutexpected <= testvectors (vectornum) (0);
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 0 to 15 loop
			assert s(k)= sexpected(k)
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado sesp ="& STD_LOGIC'image(sexpected(k))&"Valor Obtido: s("&integer'image(k)&") ="& STD_LOGIC'image(s(k));
			
			if (s /= sexpected) then
				errors := errors + 1;
			end if;
		end loop;
		
		assert cout = coutexpected
			report "Cout deu erro. Esperado = " & STD_LOGIC'image(coutexpected) & ", valor obtido = " & STD_LOGIC'image(cout);
		
		if (cout /= coutexpected) then
			errors := errors +1;
		end if;
		
		vectornum := vectornum + 1;
		if (is_x (testvectors(vectornum))) then
			if (errors = 0) then
				report "Just kidding --" &
				integer'image (vectornum) &
				"tests completed successfully."
				severity failure;
			else
				report integer'image (vectornum) &
				"tests completed, errors = " &
				integer'image (errors)
				severity failure;
			end if;
		end if;
	end if;
	
end process;
end;