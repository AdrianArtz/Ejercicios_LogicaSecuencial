--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_19 is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejer_19;

architecture Behavioral of Ejer_19 is
	type estado is (a,b,c,d,e,f,g,h);
	signal presente, futuro : estado;
begin
	proceso1 : process(presente, x) begin
		case presente is
			when a =>
				if x = '0' then
					futuro <= b;
				end if;
			when b =>
				if x = '0' then 
					futuro <= c;
				else
					futuro <= e;
				end if;
			when c =>
				if x = '0' then
					futuro <= d;
				else
					futuro <= f;
				end if;
			when d =>
				if x = '0' then
					futuro <= e;
				else
					futuro <= b;
				end if;
			when e => 
				if x = '0' then 
					futuro <= f;
				else
					futuro <= b;
				end if;
			when f => futuro <= g;
			when g => futuro <= h;
			when h =>
				if x = '0' then
					futuro <= a;
				else
					futuro <= c;
				end if;
		end case;
	end process proceso1;
	
	proceso2 : process(presente) begin
		case presente is
			when a => s <= "000";
			when b => s <= "001";
			when c => s <= "010";
			when d => s <= "011";
			when e => s <= "100";
			when f => s <= "101";
			when g => s <= "110";
			when h => s <= "111";
		end case;
	end process proceso2;
	
	proceso3 : process(clk) begin	
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process proceso3;
end Behavioral;
