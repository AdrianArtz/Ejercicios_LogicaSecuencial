--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_01 is
	port( Q, qq : out std_logic;
         clk, j, k : in std_logic );
end Ejer_01;

architecture Behavioral of Ejer_01 is
	 signal aux : std_logic;
begin
	 Q <= aux;
    qq <= not aux;
    main_process : process (clk)
    begin
	 if rising_edge (clk) then
            if j = '0' and k = '0' then
              aux <= aux;
            elsif j = '0' and k = '1' then
               aux <= '0';
            elsif j = '1' and k = '0' then
               aux <= '1';
            else
               aux <= not aux;
            end if;
        end if;
    end process;
end Behavioral;