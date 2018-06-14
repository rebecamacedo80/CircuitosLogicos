library IEEE; use IEEE.STD_LOGIC_1164.all;

entity flop is
	port (ck: in STD_LOGIC;
		   d:  in STD_LOGIC_VECTOR (3 downto 0);
		   q:  out STD_LOGIC_VECTOR (3 downto 0));
end;

architecture synth of flop is
begin
	process (ck) begin
		if ck'event and ck = '1' then
			q <= d;
		end if;
	end process;
end;