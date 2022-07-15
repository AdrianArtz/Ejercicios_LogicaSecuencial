--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_04 is
	port( clk, C: IN STD_LOGIC;
			serieIn: INOUT STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR(0 TO 3));
end Ejer_04;

architecture Behavioral of Ejer_04 is
 signal aux: STD_LOGIC_VECTOR(0 TO 3);
begin
	serieIn <= not(aux(0) or aux(1) or aux(2));
	Q <=aux;
process (clk)
	begin
	if (clk' EVENT and clk = '0' and C = '0') THEN 
		case aux IS
		when "0000" => aux	<= "1000" ;
		when "1000" => aux	<= "0100" ;
		when "0100" => aux	<= "0010" ;
		when "0010" => aux   <= "0001" ;
		when "0001" => aux	<= "0000" ;
		when others => aux   <= "0000" ; 
		end case;
	end if;
end process;
end Behavioral;