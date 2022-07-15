----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:31:53 07/14/2022 
-- Design Name: 
-- Module Name:    Ejer_16 - Behavioral 
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

entity Ejer_16 is
    Port ( clk, x : in  STD_LOGIC;
           s : out  STD_LOGIC);
end Ejer_16;

architecture Behavioral of Ejer_16 is
	type estado is (a,b,c,d,e,f);
	signal presente, futuro : estado;
begin
	process_01: process(presente, x) begin
		case presente is
			when a => s <= '0';
				if x = '1' then
					futuro <= b;
				end if;
			when b => s <= '0';
				if x = '1' then
					futuro <= c;
				end if;
			when c => s <= '0';
				if x = '0' then
					futuro <= d;
				end if;
			when d => s <= '0';
				if x = '0' then
					futuro <= e;
				end if;
			when e => s <= '0';
				if x = '1' then
					futuro <= f;
				end if;
			when f =>
				if x = '1' then
					futuro <= a;
					s <= '1';
				else
					s <= '0';
				end if;
		end case;
	end process process_01;

	 process_02: process(clk) begin
		if (clk' event and clk='1') then
			presente <= futuro;
		end if;
	end process process_02;
end Behavioral;

