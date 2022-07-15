--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_12 is
    Port ( clk : in  STD_LOGIC;
           D1, D2, D3 : out  STD_LOGIC_VECTOR (0 to 6);
           Q1, Q2, Q3 : out  STD_LOGIC_VECTOR (0 to 3));
end Ejer_12;

architecture Behavioral of Ejer_12 is
	signal aux1 : std_logic_vector(0 to 3) := "0000";
	signal aux2 : std_logic_vector(0 to 3) := "0000";
	signal aux3 : std_logic_vector(0 to 3) := "0000";
begin
	Q1 <= aux1;
	Q2 <= aux2;
	Q3 <= aux3;
	process(clk) begin
		if (clk'event and clk = '1') then 
			aux1 <= aux1+1;
			if(aux1 = "1001")then
				aux1 <= "0000";
				aux2 <= aux2+1;
			end if;
			
			if(aux2 = "1001" and aux1 = "1001") then
				aux3 <= aux3+1;
				aux2 <= "0000";
				aux1 <= "0000";
			end if;
			
			if((aux3 = "0010" and aux2 = "0100") and aux1 = "0101")then
				aux1 <= "0000";
				aux2 <= "0000";
				aux3 <= "0000";
			end if;
			
			case aux1 is
				when "0000" => D1 <= "0000001";
				when "0001" => D1 <= "1001111";
				when "0010" => D1 <= "0010010";
				when "0011" => D1 <= "0000110";
				when "0100" => D1 <= "1001100";
				when "0101" => D1 <= "0100100";
				when "0110" => D1 <= "0100000";
				when "0111" => D1 <= "0001110";
				when "1000" => D1 <= "0000000";
				when "1001" => D1 <= "0000100";
				when others => D1 <= "1111111";
			end case;
			
			case aux2 is
				when "0000" => D2 <= "0000001";
				when "0001" => D2 <= "1001111";
				when "0010" => D2 <= "0010010";
				when "0011" => D2 <= "0000110";
				when "0100" => D2 <= "1001100";
				when "0101" => D2 <= "0100100";
				when "0110" => D2 <= "0100000";
				when "0111" => D2 <= "0001110";
				when "1000" => D2 <= "0000000";
				when "1001" => D2 <= "0000100";
				when others => D2 <= "1111111";
			end case;
			
			case aux3 is
				when "0000" => D3 <= "0000001";
				when "0001" => D3 <= "1001111";
				when "0010" => D3 <= "0010010";
				when "0011" => D3 <= "0000110";
				when "0100" => D3 <= "1001100";
				when "0101" => D3 <= "0100100";
				when "0110" => D3 <= "0100000";
				when "0111" => D3 <= "0001110";
				when "1000" => D3 <= "0000000";
				when "1001" => D3 <= "0000100";
				when others => D3 <= "1111111";
			end case;
			
		end if;	
	end process;
end Behavioral;