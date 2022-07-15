--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_03 is
	port( clk,REST: IN STD_LOGIC;
			R,L: IN STD_LOGIC;
	      datos : IN STD_LOGIC_VECTOR(0 TO 3);
			S : IN STD_LOGIC_VECTOR(0 TO 1);
			Q : OUT STD_LOGIC_VECTOR(0 TO 3));
end Ejer_03;

architecture Behavioral of Ejer_03 is
	signal aux: STD_LOGIC_VECTOR(0 TO 3);
begin
	process (clk, REST)
	begin
		if(REST = '0') then 
			aux <= "0000";
		elsif (clk' event and clk = '1') THEN 
			case S  is
				when "01" => aux <= R & aux(0 TO 2) ;
				when "10" => aux <= L & aux(1 TO 3) ;
				when "11" => aux <= datos;
				when others => aux <= "UUUU";
			end case;
		end if;
	end process;
end Behavioral;