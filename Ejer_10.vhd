--Adrian
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer_10 is
Port ( clk, C : in  STD_LOGIC;
       SAL1, SAL2 : inout  STD_LOGIC;
       Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Ejer_10;

architecture Behavioral of Ejer_10 is
	signal Qaux : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	Q <= Qaux;
	process(clk, C)
	begin
		if (clk'event and clk = '1') then
			if (C = '0') then
				if(Qaux = "1001") then
					Qaux <= "0000";
				else
					Qaux <= Qaux+1;
				end if;
			else
				if(Qaux = "0000") then
					Qaux <= "1001";
				else
					Qaux <= Qaux-1;
				end if;
			end if;
			if (C = '0' and Qaux(0) = '1') then
				SAL1 <= '1';
				SAL2 <= '0';
			elsif(C = '1' and Qaux(0) = '0') then
				SAL1 <= '0';
				SAL2 <= '1';
			else
				SAL1 <= '0';
				SAL2 <= '0';
			end if;
		end if;
	end process;
end Behavioral;