----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:18 03/24/2020 
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
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end SawGenerator;

architecture Behavioral of SawGenerator is
	signal tmp: UNSIGNED(4 downto 0);
begin

	process (CLK, CLR)
	begin
		if CLR = '1' then
			tmp <= "00000";
		elsif rising_edge(CLK) then
			tmp <= tmp + 1;
		end if;
	end process;
	
	Q <= STD_LOGIC_VECTOR(tmp);

end Behavioral;

