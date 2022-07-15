--Adrian
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_01 IS
END TB_01;
 
ARCHITECTURE behavior OF TB_01 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejer_01
    PORT(
         Q : OUT  std_logic;
         qq : OUT  std_logic;
         clk : IN  std_logic;
         j : IN  std_logic;
         k : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal j : std_logic := '0';
   signal k : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal qq : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejer_01 PORT MAP (
          Q => Q,
          qq => qq,
          clk => clk,
          j => j,
          k => k
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for clk_period*10;
		j	<= '0';
		k	<= '1';
		wait for clk_period*10;	
		j	<= '0';
		k	<= '0';
		wait for clk_period*10;	
		j	<= '1';
		k	<= '0';
		wait for clk_period*10;
		j	<= '1';
		k	<= '1';
      wait;
   end process;

END;
