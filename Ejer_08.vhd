--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_08 is
    Port ( clk, X : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end Ejer_08;

architecture Behavioral of Ejer_08 is
	signal signalQ : STD_LOGIC_VECTOR (1 downto 0);
begin
	Q <= signalQ;
	process(clk)
	begin
		if (clk' event and clk = '1') then
			if (X = '0') then
				signalQ <= signalQ+1;
			else 
				signalQ <= signalQ - 1;
			end if;
		end if;
	end process;
end Behavioral;