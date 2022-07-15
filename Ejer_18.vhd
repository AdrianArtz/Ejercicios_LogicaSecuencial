----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:26 07/14/2022 
-- Design Name: 
-- Module Name:    Ejer_18 - Behavioral 
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

entity Ejer_18 is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Ejer_18;

architecture Behavioral of Ejer_18  is
	type estado is (a,b,c,d,e);
	signal presente, futuro : estado;
begin
	process_01 : process(presente, x) begin
		case presente is
			when a => s <= '0';
				if x = '0' then
					futuro <= b;
				else
					futuro <= e;
				end if;
			when b => s <= '1';
				if x = '0' then
					futuro <= a;
				else
					futuro <= c;
				end if;
			when c =>
				if x = '0' then
					futuro <= b;
					s  <= '0';
				else
					futuro <= c;
					s	<= '1';
				end if;
			when d => s <= '0'; 
				if x = '0' then
					futuro <= c;
				else
					futuro <= e;
				end if;
			when e => 
				if x = '0' then 
					futuro <= d;
					s	<= '1';
				else
					futuro <= a;
					s	<= '0';
				end if;
		end case;
	end process process_01;

	process_02 : process (clk) begin
		if clk' event and clk = '1' then
			presente <= futuro;
		end if;
	end process process_02;
end Behavioral;



