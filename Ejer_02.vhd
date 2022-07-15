--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer_02 is
	 port( Q, notQ : out std_logic;
			 clk, t : in std_logic);
end Ejer_02;

architecture Behavioral of Ejer_02 is
    signal qAux: std_logic;
begin
    Q <= qAux;
    notQ <= not qAux;
    main_process : process (clk)
    begin
        if rising_edge (clk) then
            if qAux = 'U' then
                qAux <= t;
            else
                if t = '1' then
						qAux<= not qAux;
                else
						qAux <= qAux;
                end if;
            end if;
        end if;
    end process;
end Behavioral;