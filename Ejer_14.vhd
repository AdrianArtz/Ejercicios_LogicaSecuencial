--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_14 is
	port (clk : in  STD_LOGIC;
				x: in  STD_LOGIC;
				z : inout  STD_LOGIC_VECTOR (2 downto 0));
end Ejer_14;

architecture arEjer_14 of Ejer_14 is
	Type estados is (A, B, C, D, E,F,G,H);
	signal pres, fut: estados;
begin
	proceso1: process (pres, x) begin
			case pres is
				when A => z <= "000";
					if x = '1' then 
						fut <= B;
					else
						fut <= H;
					end if;
				when B => z <= "001";
					if x = '1' then 
						fut <= C;
					else
						fut <= A;
					end if;
				when C => z <= "011";
					if x = '1' then 
						fut <= D;
					else
						fut <= B;
					end if;
				when D => z <= "010";
					if x = '1' then 
						fut <= E;
					else
						fut <= C;
					end if;
				when E => z <= "110";
					if x = '1' then 
						fut <= F;
					else
						fut <= D;
					end if;
				when F => z <= "111";
					if x = '1' then 
						fut <= G;
					else
						fut <= E;
					end if;
				when G => z <= "101";
					if x = '1' then 
						fut <= H;
					else
						fut <= F;
					end if;
				when H => z <= "110";
					if x = '1' then 
						fut <= A;
					else
						fut <= G;
					end if;
				end case;
	end process proceso1;
				
	proceso2: process (clk) begin
		if(clk'event and clk='1') then
			pres <= fut;
		end if;
	end process proceso2;
end arEjer_14;