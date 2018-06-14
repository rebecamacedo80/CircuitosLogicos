library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity testbench_flopra is -- no inputs or outputs
end;
architecture sim of testbench_flopra is
	component flopra
		port(ck, reset: in STD_LOGIC;
         	 d: in STD_LOGIC_VECTOR(3 downto 0);
         	 q: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
signal clk: STD_LOGIC;
signal ck: STD_LOGIC;
signal reset: STD_LOGIC;
signal d, q: STD_LOGIC_VECTOR(3 downto 0);
signal qexpected: STD_LOGIC_VECTOR(3 downto 0);
constant MEMSIZE: integer := 15; 
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (9 downto 0); 
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: flopra port map (ck, reset, d, q);
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
	FILE_OPEN (tv, "./flopra.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 9 downto 0 loop
			read (L, ch);
			if (ch = '_') then read (L, ch);			
			end if;
			if (ch = 'U') then
			testvectors (i) (j) <= 'U';
			end if;
			if (ch = '0') then
			testvectors (i) (j) <= '0';
			end if;
			if(ch = '1') then 
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
		
		d <= testvectors (vectornum) (9 downto 6);
		ck <= testvectors (vectornum) (5);
		reset <= testvectors (vectornum) (4);
		qexpected <= testvectors (vectornum)(3 downto 0); --numero de colunas da tabela verdade começando da direita.
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 0 to 3 loop
			if (qexpected(k) /= 'U') then
				assert q(k) = qexpected(k)
					report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado yesp ="& STD_LOGIC'image(qexpected(k))&"Valor Obtido: y1("&integer'image(k)&") ="& STD_LOGIC'image(q(k));
				
				if (q /= qexpected) then
					errors := errors + 1;
				end if;
			end if;
		end loop;
		
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
