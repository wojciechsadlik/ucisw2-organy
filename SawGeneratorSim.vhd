--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:40 04/15/2020
-- Design Name:   
-- Module Name:   D:/XilinxPrj/organy/SawGeneratorSim.vhd
-- Project Name:  organy
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
 
ENTITY SawGeneratorSim IS
END SawGeneratorSim;
 
ARCHITECTURE behavior OF SawGeneratorSim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SawGenerator
    PORT(
         CLK : IN  std_logic;
         CLR : IN  std_logic;
			D : in std_logic_vector(7 downto 0);
         StartO : OUT  std_logic;
         CmdO : OUT  std_logic_vector(3 downto 0);
         AddrO : OUT  std_logic_vector(3 downto 0);
         DO : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';
	signal  	D : std_logic_vector(7 downto 0) := "00000000";

 	--Outputs
   signal StartO : std_logic;
   signal CmdO : std_logic_vector(3 downto 0);
   signal AddrO : std_logic_vector(3 downto 0);
   signal DO : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SawGenerator PORT MAP (
          CLK => CLK,
          CLR => CLR,
			 D => D,
          StartO => StartO,
          CmdO => CmdO,
          AddrO => AddrO,
          DO => DO
        );

   CLK <= not CLK after CLK_period / 2;
	
	CLR <= '1', '0' after 10 ns;

END;
