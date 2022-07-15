--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_11 is
     Port ( clk : in  STD_LOGIC;
           Deco1, Deco2 : out  STD_LOGIC_VECTOR (0 to 6);
           Q1, Q2 : out  STD_LOGIC_VECTOR (0 to 3));
end Ejer_11;

architecture Behavioral of Ejer_11 is
	signal Q1aux : STD_LOGIC_VECTOR(0 to 3) := "0000";
	signal Q2aux : STD_LOGIC_VECTOR(0 to 3) := "0000";
begin
	Q1 <= Q1aux;
	Q2 <= Q2aux;
	process(clk)
	begin
		if(clk'event and clk = '1') then
			Q1aux <= Q1aux+1;
			if(Q1aux = "1001") then
				Q1aux <= "0000";
				Q2aux <= Q2aux+1;
			end if;
			if (Q2aux = "1001" and Q1aux = "1001") then
				Q2aux <= "0000";
			end if;
			case Q1aux is
				when "0000" => Deco1 <= "0000001";
				when "0001" => Deco1 <= "1001111";
				when "0010" => Deco1 <= "0010010";
				when "0011" => Deco1 <= "0000110";
				when "0100" => Deco1 <= "1001100";
				when "0101" => Deco1 <= "0100100";
				when "0110" => Deco1 <= "0100000";
				when "0111" => Deco1 <= "0001110";
				when "1000" => Deco1 <= "0000000";
				when "1001" => Deco1 <= "0000100";
				when others => Deco1 <= "1111111";
			end case;
			case Q2aux is
				when "0000" => Deco2 <= "0000001";
				when "0001" => Deco2 <= "1001111";
				when "0010" => Deco2 <= "0010010";
				when "0011" => Deco2 <= "0000110";
				when "0100" => Deco2 <= "1001100";
				when "0101" => Deco2 <= "0100100";
				when "0110" => Deco2 <= "0100000";
				when "0111" => Deco2 <= "0001110";
				when "1000" => Deco2 <= "0000000";
				when "1001" => Deco2 <= "0000100";
				when others => Deco2 <= "1111111";
			end case;
		end if;
	end process;
end  Behavioral;