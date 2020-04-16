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
			  DI : in STD_LOGIC_VECTOR (7 downto 0);
			  DI_Rdy : in STD_LOGIC;
			  F0 : in STD_LOGIC;
			  StartO : out  STD_LOGIC;
			  CmdO : out  STD_LOGIC_VECTOR (3 downto 0);
           AddrO : out  STD_LOGIC_VECTOR (3 downto 0);
           DO : out  STD_LOGIC_VECTOR (4 downto 0));
end SawGenerator;

architecture Behavioral of SawGenerator is
	signal tmp: UNSIGNED(4 downto 0);
	signal scalertmp: UNSIGNED(15 downto 0);
	signal scalertmpmax: UNSIGNED(15 downto 0);
	signal iCE : STD_LOGIC;
begin

--	process (DI_Rdy, F0, CLR)
--	begin
--		if DI_Rdy = '1' then
--			case DI is
--				when X"1C" =>	;	--A - C'		261.6256Hz => 50 000 000 / 261.6256 / 32 = 5 972 = 0x1754
--				when X"1D" =>	;	--W - C#'	277.1826Hz => 50 000 000 / 277.1826 / 32 = 5 637 = 0x1605
--				when X"1B" =>	;	--S - D'		293.6648Hz => 50 000 000 / 293.6648 / 32 = 5 320 = 0x14C8
--				when X"24" =>	;	--E - D#'	311.1270Hz => 50 000 000 / 311.1270 / 32 = 5 022 = 0x139E
--				when X"23" =>	;	--D - E'		329.6276Hz => 50 000 000 / 329.6276 / 32 = 4 740 = 0x1284
--				when X"2B" =>	;	--F - F'		349.2282Hz => 50 000 000 / 349.2282 / 32 = 4 474 = 0x117A
--				when X"2C" =>	;	--T - F#'	369.9944Hz => 50 000 000 / 369.9944 / 32 = 4 223 = 0x107F
--				when X"34" =>	;	--G - G'		391.9954Hz => 50 000 000 / 391.9954 / 32 = 3 986 = 0x0F92
--				when X"35" =>	;	--Y - G#'	415.3047Hz => 50 000 000 / 415.3047 / 32 = 3 762 = 0x0EB2
--				when X"33" =>	;	--H - A'		440.0000Hz => 50 000 000 / 440.0000 / 32 = 3 551 = 0x0DDF
--				when X"3C" =>	;	--U - A#'	466.1638Hz => 50 000 000 / 466.1638 / 32 = 3 351 = 0x0D17
--				when X"3B" =>	;	--J - B'		493.8833Hz => 50 000 000 / 493.8833 / 32 = 3 163 = 0x0C5B
--				when X"42" =>	;	--K - C''	523.2511Hz => 50 000 000 / 523.2511 / 32 = 2 986 = 0x0BAA
--				when others =>	;	--???
--			end case;
--		end if;
--	end process;

	process (CLK, CLR)
	begin
		if CLR = '1' then
			scalertmp <= X"0000";
			iCE <= '0';
		elsif rising_edge(CLK) then
			scalertmp <= scalertmp + 1;
			if scalertmp = X"061A" then		--0x61A = 50 000 / 32
				iCE <= not iCE;
				scalertmp <= X"0000";
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
	

	
	DO <= STD_LOGIC_VECTOR(tmp);
	CmdO <= "0011";
	AddrO <= "1111";
	StartO <= iCE;

end Behavioral;


