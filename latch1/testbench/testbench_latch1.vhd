library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL ;

entity testbench_latch1 is -- no inputs or outputs
end;
architecture sim of testbench_latch1 is
	component latch1
		port (clk: in STD_LOGIC;
          d: in STD_LOGIC_VECTOR (3 downto 0);
          q: out STD_LOGIC_VECTOR (3 downto 0));
	end component;
signal clk: STD_LOGIC; --clock do sistema
signal clk2: STD_LOGIC; --clock da tabela
signal d: STD_LOGIC_VECTOR (3 downto 0);
signal q: STD_LOGIC_VECTOR (3 downto 0);
signal qexpected: STD_LOGIC_VECTOR (3 downto 0);
constant MEMSIZE: integer := 9; --colocar numero de linhas aqui que eu vou escolher.
type tvarray is array (MEMSIZE downto 0) of
STD_LOGIC_VECTOR (8 downto 0); --número de colunas começando a contar do 0.
signal testvectors: tvarray;
shared variable vectornum, errors: integer;
begin
-- instantiate device under test
dut: latch1 port map (clk2, d, q);
-- generate clock
process begin
	clk <= '1'; wait for 15 ns;  --mudar esses números.
	clk <= '0'; wait for 5 ns;  --mudar esses números.
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
	FILE_OPEN (tv, "./latch.tv", READ_MODE);
	while not endfile(tv) loop
		readline (tv, L);
		for j in 8 downto 0 loop --número de colunas.
			read (L, ch);
			if (ch = '_') then read (L, ch);
			end if;
			if (ch = 'U') then 
				testvectors (i) (j) <= 'U';
			end if;
			if (ch = '0') then
				testvectors (i) (j) <= '0';
			end if;
			if (ch = '1') then 
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
		d <= testvectors (vectornum) (8 downto 5);
		clk2 <= testvectors (vectornum) (4);
		qexpected <= testvectors (vectornum)(3 downto 0); --numero de colunas da tabela verdade começando da direita.
	end if;
end process;
-- check results on falling edge of clk
process (clk) begin
	if (clk'event and clk = '0')then
		for k in 0 to 3 loop
			if (qexpected(k) /= 'U') then
				assert q(k) = qexpected(k)
					report "Vetor deu erro n. Teste: " &integer'image(vectornum)&". Esperado qesp ="& STD_LOGIC'image(qexpected(k))&"Valor Obtido: q("&integer'image(k)&") ="& STD_LOGIC'image(q(k));
					if (q /= qexpected) then
						errors := errors + 1;
					end if;
			end if;
		end loop;
		
		vectornum := vectornum + 1;
		if (vectornum = MEMSIZE) then
			if (errors = 0) then
				--report "Just kidding --" &
				report integer'image (vectornum) &
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