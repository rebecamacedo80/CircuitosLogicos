library IEEE; use IEEE.STD_LOGIC_1164.all;

entity floprs is
    port(clk: in STD_LOGIC;
         reset: in STD_LOGIC;
         d: in STD_LOGIC_VECTOR(3 downto 0);
         q: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synchronus of floprs is
begin
	process(clk) begin 
		if clk' event and clk = '1' then
			if reset = '1' then
 			q <=  "0000";
			else q <= d;
			end if;
		end if;
	end process;
end;	