--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Ejer_06 is
    Port ( clk : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Ejer_06;

architecture Behavioral of Ejer_06 is
	signal aux : STD_LOGIC_VECTOR (3 downto 0);
begin
	process (clk,RST)
	begin
		Q <= aux;
		if (clk' event and clk ='1') then
			if(RST = '0' or aux ="101") then
				aux <= "0000";
			elsif(aux = "0000") then
				aux <= aux + 1;
			else
				aux <= aux + 2;
			end if;
		end if;
	end process;
end Behavioral;