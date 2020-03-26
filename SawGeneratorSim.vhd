--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:09:03 03/24/2020
-- Design Name:   
-- Module Name:   E:/Xilinx/Projects/Organy/SawGenerator_TestBench.vhd
-- Project Name:  Organy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SawGenerator
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
 
ENTITY SawGenerator_TestBench IS
END SawGenerator_TestBench;
 
ARCHITECTURE behavior OF SawGenerator_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SawGenerator
    PORT(
         CLK : IN  STD_LOGIC;
         CLR : IN  STD_LOGIC;
			StartOUT : OUT  STD_LOGIC;
			CmdOUT : OUT  STD_LOGIC_VECTOR (3 downto 0);
			AddrOUT : OUT  STD_LOGIC_VECTOR (3 downto 0);
         Q : OUT  STD_LOGIC_VECTOR(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : STD_LOGIC := '0';
   signal CLR : STD_LOGIC := '1';

 	--Outputs
   signal Q : STD_LOGIC_VECTOR(4 downto 0);
	signal StartOUT : STD_LOGIC;
	signal CmdOUT : STD_LOGIC_VECTOR (3 downto 0);
	signal AddrOUT : STD_LOGIC_VECTOR (3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SawGenerator PORT MAP (
          CLK => CLK,
          CLR => CLR,
			 StartOUT => StartOUT,
			 CmdOUT => CmdOUT,
          AddrOUT => AddrOUT,
          Q => Q
        );

	CLK <= not CLK after CLK_period / 2;

	CLR <= '0' after 5 ns;
	
END;
