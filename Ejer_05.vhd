--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_05 is
	port( clk, MC: IN STD_LOGIC;
			serieIn: INOUT STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(0 TO 2)	);
end Ejer_05;

architecture Behavioral of Ejer_05 is
	signal aux: STD_LOGIC_VECTOR(0 TO 2);
begin
	serieIn <= not(aux(0) or aux(1) or aux(2));
	Q <=aux;
process (clk)
	begin
	if (clk' event and clk= '0' and MC = '0') THEN 
		case signalAux IS
		when "000" => aux	<= "100" ;
		when "100" => aux	<= "010" ;
		when "010" => aux	<= "001" ;
		when others => aux <= "000" ; 
		end case;
	end if;
end process;
end Behavioral;