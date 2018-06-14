library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;
entity testbench_cla4 is -- no inputs or outputs
end;
architecture sim of testbench_cla4 is
	component cla4
		port (a, b: 		   in  STD_LOGIC_VECTOR(3 downto 0);
		   	cin:  		   in  STD_LOGIC;
			s:     	   	   out STD_LOGIC_VECTOR(3 downto 0);
			p, g: 		   inout STD_LOGIC);
	end component;	
signal clk: STD_LOGIC;
signal cin: STD_LOGIC;
signal p, g: STD_LOGIC;
signal s, a, b: STD_LOGIC_VECTOR(3 downto 0);
signal s_expected: STD_LOGIC_VECTOR(3 downto 0);
signal p_expected, g_expected: STD_LOGIC;
constant MEMSIZE: integer := 512;
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (14 downto 0);
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: cla4 port map (a, b, cin, s, p, g);
-- generate clock
process begin
	clk <= '1'; wait for 15 ns;  
	clk <= '0'; wait for 5 ns;
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
	FILE_OPEN (tv, "cla4.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 14 downto 0 loop
			read (L, ch);
			if (ch = '_') then read (L, ch);
			end if;
			if (ch = '0') then
			testvectors (i) (j) <= '0';
			else testvectors (i) (j) <= '1';
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
		a <= testvectors (vectornum) (14 downto 11);
		b <= testvectors (vectornum) (10 downto 7);
		cin <= testvectors (vectornum) (6); --after 1 ns;
		s_expected <= testvectors (vectornum) (5 downto 2); --after 1 ns;
		g_expected <= testvectors (vectornum) (1); --after 1 ns;
		p_expected <= testvectors (vectornum) (0); --after 1 ns;
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 0 to 3 loop
			assert s(k)= s_expected(k)
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado s_expected ="& STD_LOGIC'image(s_expected(k))&"Valor Obtido: s("&integer'image(k)&") ="& STD_LOGIC'image(s(k));			
			if (s /= s_expected) then
				errors := errors + 1;
			end if;			
		end loop;			
		assert p = p_expected
			report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado p_expected ="& STD_LOGIC'image(p_expected)&"Valor Obtido: p ="& STD_LOGIC'image(p);			
			if (p /= p_expected) then
				errors := errors + 1;
			end if;			
		assert g = g_expected
			report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado g_expected ="& STD_LOGIC'image(g_expected)&"Valor Obtido: g ="& STD_LOGIC'image(g);			
			if (g /= g_expected) then
				errors := errors + 1;
			end if;	
		vectornum := vectornum + 1;
		if (MEMSIZE = vectornum) then
			if (errors = 0) then
				report "Just kidding -- " &
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