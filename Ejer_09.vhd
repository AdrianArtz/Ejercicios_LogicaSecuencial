--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_09 is
    Port ( clk : in  STD_LOGIC;
           X : in  STD_LOGIC;
           Z1, Z2 : out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Ejer_09r;

architecture BehavioralEjer_09 of Ejer_09 is
	signal aux: std_logic_vector(3 downto 0) := "0000";
begin
	Q <= aux;
	
	process(clk, X) begin
		if (clk'event and clk = '1') then 
			if(X = '0') then
				aux <= aux+1;
			else 
				aux <= aux-1;
			end if;
			if(aux(0) = '0') then
				Z1 <= '1';
				Z2 <= '0';
			else 
				Z1 <= '0';
				Z2 <= '1';
			end if;
		end if;
	end process;
end BehavioralEjer_09;