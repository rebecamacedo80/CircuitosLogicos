library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity testbench_vua_f is -- no inputs or outputs
end;
architecture sim of testbench_vua_f is
	component vua_f
		port (cin: in STD_LOGIC;
			  p, g: in STD_LOGIC_VECTOR(3 downto 0);
			  pg, gg: out STD_LOGIC;
			  c: buffer STD_LOGIC_VECTOR(3 downto 1));
	end component;	
signal clk: STD_LOGIC;
signal cin: STD_LOGIC;
signal p, g: STD_LOGIC_VECTOR(3 downto 0);
signal pg, gg: STD_LOGIC;
signal c: STD_LOGIC_VECTOR(3 downto 1);
signal pg_expected, gg_expected: STD_LOGIC;
signal c_expected: STD_LOGIC_VECTOR(3 downto 1);
constant MEMSIZE: integer := 512;
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (13 downto 0);
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: vua_f port map (cin, p, g, pg, gg, c);
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
	FILE_OPEN (tv, "vuafatorada.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 13 downto 0 loop
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
		p <= testvectors (vectornum) (13 downto 10); --after 1 ns;
		g <= testvectors (vectornum) (9 downto 6); --after 1 ns;
		cin <= testvectors (vectornum) (5); --after 1 ns;
		gg_expected <= testvectors (vectornum)(4); --after 1 ns;
		pg_expected <= testvectors (vectornum)(3); --after 1 ns;
		c_expected <= testvectors (vectornum)(2 downto 0); --after 1 ns;
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 1 to 3 loop
			assert c(k)= c_expected(k)
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado c_expected ="& STD_LOGIC'image(c_expected(k))&"Valor Obtido: c("&integer'image(k)&") ="& STD_LOGIC'image(c(k));			
			if (c /= c_expected) then
				errors := errors + 1;
			end if;			
		end loop;		
		assert gg = gg_expected
			report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado gg_expected ="& STD_LOGIC'image(gg_expected)&"Valor Obtido: gg ="& STD_LOGIC'image(gg);			
			if (gg /= gg_expected) then
				errors := errors + 1;
			end if;		
		assert pg = pg_expected
				report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado pg_expected ="& STD_LOGIC'image(pg_expected)&"Valor Obtido: pg ="& STD_LOGIC'image(pg);			
			if (pg /= pg_expected) then
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