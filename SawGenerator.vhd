----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:52 04/15/2020 
-- Design Name: 
-- Module Name:    SawGenerator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SawGenerator is
    Port ( CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
			  StartOUT : out  STD_LOGIC;
			  CmdOUT : out  STD_LOGIC_VECTOR (3 downto 0);
           AddrOUT : out  STD_LOGIC_VECTOR (3 downto 0);
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end SawGenerator;

architecture Behavioral of SawGenerator is
	signal tmp: UNSIGNED(4 downto 0);
	signal scalertmp: UNSIGNED(11 downto 0);
	signal iCE : STD_LOGIC;
begin

	process (CLK, CLR)
	begin
		if CLR = '1' then
			scalertmp <= X"000";
			iCE <= '0';
		elsif rising_edge(CLK) then
			scalertmp <= scalertmp + 1;
			if scalertmp = X"61A" then		--0x61A = 50 000 / 32
				iCE <= not iCE;
				scalertmp <= X"000";
			elsif iCE = '1' then
				iCE <= '0';
			end if;			
		end if;
	end process;
	
	process (CLK, CLR, iCE)
	begin
		if CLR = '1' then
			tmp <= "00000";
		elsif rising_edge(CLK) and iCE = '1' then
			tmp <= tmp + 1;
		end if;
	end process;
	
	Q <= STD_LOGIC_VECTOR(tmp);
	CmdOUT <= "0011";
	AddrOUT <= "1111";
	StartOUT <= iCE;

end Behavioral;


