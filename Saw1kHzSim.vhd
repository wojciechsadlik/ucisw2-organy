-- Vhdl test bench created from schematic E:\Xilinx\Projects\Organy\Saw1kHz.sch - Tue Mar 24 23:15:28 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Saw1kHz_Saw1kHz_sch_tb IS
END Saw1kHz_Saw1kHz_sch_tb;
ARCHITECTURE behavioral OF Saw1kHz_Saw1kHz_sch_tb IS 

   COMPONENT Saw1kHz
   PORT( CLK50MHz	:	IN	STD_LOGIC; 
         CLR	:	IN	STD_LOGIC; 
			StartOUT : OUT  STD_LOGIC;
			CmdOUT : OUT  STD_LOGIC_VECTOR (3 downto 0);
			AddrOUT : OUT  STD_LOGIC_VECTOR (3 downto 0);
         Q : OUT  STD_LOGIC_VECTOR(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK50MHz : STD_LOGIC := '0';
   signal CLR : STD_LOGIC := '1';

 	--Outputs
   signal Q : STD_LOGIC_VECTOR(4 downto 0);
	signal StartOUT : STD_LOGIC;
	signal CmdOUT : STD_LOGIC_VECTOR (3 downto 0);
	signal AddrOUT : STD_LOGIC_VECTOR (3 downto 0);
	
	constant CLK_period : time := 20 ns;

BEGIN

   UUT: Saw1kHz PORT MAP(
		CLK50MHz => CLK50MHz, 
		CLR => CLR,
		StartOUT => StartOUT,
		CmdOUT => CmdOUT,
      AddrOUT => AddrOUT,		
		Q => Q
   );

	CLK50MHz <= not CLK50MHz after CLK_period / 2;

	CLR <= '0' after 5 ns;

END;
