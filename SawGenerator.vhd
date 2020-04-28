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

	process (CLK, CLR)
	begin
		if CLR = '1' then
				scalertmpmax <= X"FFFF";
		elsif rising_edge(CLK) then
			if DI_Rdy = '1' and F0 = '0' then
				case DI is
					when X"1C" =>	scalertmpmax <= X"0BAA";	--A - C''		523.2511Hz => 50 000 000 / 523.2511 / 32 = 0x0BAA
					when X"1D" =>	scalertmpmax <= X"0B02";	--W - C#''		554.3653Hz => 50 000 000 / 554.3653 / 32 = 0x0B02
					when X"1B" =>	scalertmpmax <= X"0A64";	--S - D''		587.3295Hz => 50 000 000 / 587.3295 / 32 = 0x0A64
					when X"24" =>	scalertmpmax <= X"09CF";	--E - D#''		622.2540Hz => 50 000 000 / 622.2540 / 32 = 0x09CF
					when X"23" =>	scalertmpmax <= X"0942";	--D - E''		659.2551Hz => 50 000 000 / 659.2551 / 32 = 0x0942
					when X"2B" =>	scalertmpmax <= X"08BD";	--F - F''		698.4565Hz => 50 000 000 / 698.4565 / 32 = 0x08BD
					when X"2C" =>	scalertmpmax <= X"083F";	--T - F#''		739.9888Hz => 50 000 000 / 739.9888 / 32 = 0x083F
					when X"34" =>	scalertmpmax <= X"07C9";	--G - G''		783.9909Hz => 50 000 000 / 783.9909 / 32 = 0x07C9
					when X"35" =>	scalertmpmax <= X"0759";	--Y - G#''		830.6094Hz => 50 000 000 / 830.6094 / 32 = 0x0759
					when X"33" =>	scalertmpmax <= X"06EF";	--H - A''		880.0000Hz => 50 000 000 / 880.0000 / 32 = 0x06EF
					when X"3C" =>	scalertmpmax <= X"068B";	--U - A#''		932.3275Hz => 50 000 000 / 932.3275 / 32 = 0x068B
					when X"3B" =>	scalertmpmax <= X"062D";	--J - B''		987.7666Hz => 50 000 000 / 987.7666 / 32 = 0x062D
					when X"42" =>	scalertmpmax <= X"05D5";	--K - C'''		1046.502Hz => 50 000 000 / 1046.502 / 32 = 0x05D5
					when others =>	scalertmpmax <= X"FFFF";
				end case;
			elsif F0 = '1' then
				scalertmpmax <= X"FFFF";
			end if;
		end if;
	end process;

	process (CLK, CLR)
	begin
		if CLR = '1' then
			scalertmp <= X"0000";
			iCE <= '0';
		elsif rising_edge(CLK) then
			scalertmp <= scalertmp + 1;
			if scalertmp = scalertmpmax then
				if scalertmpmax /= X"FFFF" then
					iCE <= '1';
				end if;
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


