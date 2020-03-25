----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:26:17 03/24/2020 
-- Design Name: 
-- Module Name:    Prescaler - Behavioral 
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

entity Prescaler is
    Port ( CLK50MHz : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK32kHz : out  STD_LOGIC);
end Prescaler;

architecture Behavioral of Prescaler is
signal tmp: UNSIGNED(11 downto 0);
signal iCLK32kHz : STD_LOGIC;
begin

	process (CLK50MHz, CLR)
	begin
		if CLR = '1' then
			tmp <= X"000";
			iCLK32kHz <= '0';
		elsif rising_edge(CLK50MHz) then
			tmp <= tmp + 1;
			if tmp = X"30D" then		--0x30D = 50 000 / 32 / 2
				iCLK32kHz <= not iCLK32kHz;
				tmp <= X"000";
			end if;			
		end if;
		
	end process;
	
	CLK32kHz <= iCLK32kHz;
	
end Behavioral;

