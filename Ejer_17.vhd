--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_17 is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR(0 to 6));
end Ejer_17;

architecture Behavioral of Ejer_17 is
	type estado is (a,b,c,d,e,f,g,h);
	signal presente, futuro : estado;
begin
	process_01 : process (presente, x) begin
		case presente is
			when a => s <= "0000000";
				if x = '0' then
					futuro <= b;
				end if;
			when b => s <= "0000000";
				if x = '1' then
					futuro <= c;
				end if;
			when c => s <= "0000000";
				if x = '1' then
					futuro <= d;
				end if;
			when d => s <= "0000000";
				if x = '0' then
					futuro <= e;
				end if;
			when e => s <= "0000000";
				if x = '1' then
					futuro <= f;
				end if;
			when f => s <= "0000000";
				if x = '0' then
					futuro <= g;
				end if;
			when g => s <= "0000000";
				if  x = '1' then
					futuro <= h;
				end if;
			when h =>
				if x = '0' then 
					futuro <= a;
					s <= "1101111";
				else
					s <= "0000000";
				end if;
		end case;
	end process process_01;

	process_02 : process(clk) begin
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process process_02;
end Behavioral;

