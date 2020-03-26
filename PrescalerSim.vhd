--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:47:44 03/24/2020
-- Design Name:   
-- Module Name:   E:/Xilinx/Projects/Organy/PrescalerSim.vhd
-- Project Name:  Organy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Prescaler
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PrescalerSim IS
END PrescalerSim;
 
ARCHITECTURE behavior OF PrescalerSim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Prescaler
    PORT(
         CLK50MHz : IN  STD_LOGIC;
         CLR : IN  STD_LOGIC;
         CLK32kHz : OUT  STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal CLK50MHz : STD_LOGIC := '0';
   signal CLR : STD_LOGIC := '1';

 	--Outputs
   signal CLK32kHz : STD_LOGIC;

   -- Clock period definitions
   constant CLK50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Prescaler PORT MAP (
          CLK50MHz => CLK50MHz,
          CLR => CLR,
          CLK32kHz => CLK32kHz
        );

   CLK50MHz <= not CLK50MHz after CLK50MHz_period / 2;

	CLR <= '0' after 5 ns;

END;
