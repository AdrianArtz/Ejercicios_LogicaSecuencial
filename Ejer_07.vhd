--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_07 is
	Port ( clk, reset : in  STD_LOGIC; 
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejer_07;

architecture Behavioral of Ejer_07 is
	signal aux :  STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= aux;
	process(clk, reset)
	begin
		if (clk' event and clk = '1') then
			if (reset = '0' or aux= "111") then
				aux <= "000";
			else
				aux<= aux+1;
			end if;
		end if;
	end process;
end Behavioral;
