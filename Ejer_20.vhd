----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:28 07/14/2022 
-- Design Name: 
-- Module Name:    Ejer_20 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_20 is
    Port ( clk : in  STD_LOGIC;
           x: in  STD_LOGIC_VECTOR(4 downto 0);
           s : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejer_20;

architecture Behavioral of Ejer_20 is
	type estado is (a,b,c,d);
	signal presente, futuro : estado;
begin
 proceso1: process(presente, x) begin
	case presente is
		when a => s <= "0000";
			if x = "00101" then
				futuro <= b;
			elsif x = "01010" then
				futuro <= c;
			elsif x = "10100" then
				futuro <= d;
			else
				futuro <= a;
			end if;
		when b => s <= "0000";
			futuro<= a;
		when c => s <= "0101";
			futuro<= a;
		when d => s <= "1111";
			futuro<= a;
	end case;
 end process  proceso1;

  proceso2: process(clk) begin
	if clk' event and clk = '1' then
		presente <= futuro;
	end if;
 end process  proceso2;
end Behavioral;

