----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:50 04/22/2022 
-- Design Name: 
-- Module Name:    FETCH_CODE - Behavioral 
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
use work.CPU_Type.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FETCH_CODE is
    Port ( PC : in  STD_LOGIC_VECTOR (63 downto 0);
				ten_byte_data : in  STD_LOGIC_VECTOR (79 downto 0);
           icode : out  STD_LOGIC;
           ifun : out  STD_LOGIC;
           rA : out  STD_LOGIC;
           rB : out  STD_LOGIC;
           valC : out  STD_LOGIC_VECTOR (63 downto 0);
           valP : out  STD_LOGIC_VECTOR (63 downto 0));
end FETCH_CODE;

architecture Behavioral of FETCH_CODE is

begin

	process
		variable fetch_icode : OPCODE := IHALT;
		variable fetch_ifun : OPFUN := ALUADD;
	begin
	
		case ten_byte_data(3 downto 0) is
			when X"1" => fetch_ifun:= ALULE;
			when X"2" => fetch_ifun:= ALUL;
			when X"3" => fetch_ifun:= ALUE;
			when X"4" => fetch_ifun:= ALUNE;
			when X"5" => fetch_ifun:= ALUGE;
			when X"6" => fetch_ifun:= ALUG;
			when others => fetch_ifun:= ALUADD;
		end case;
	end if;
	
	case fetch_icode is
		when IHAlT =>
			valP <= (others => '1');
			valC <= (others => '0');
		when INOP | IRET => 
			valP <= std_logic_vector(unsigned(PC) + 1);-- +8
			valC <= (others => '0');
		when IRRMOVQ | IOPQ | IPUSHQ | IPOPQ => 
			valP <= std_logic_vector(unsigned(PC) + 2); -- +16
			valC <= (others => '0');
		when IJXX | ICALL => 
			valP <= std_logic_vector(unsigned(PC) + 9); -- +72;
			valC <= ten_byte_data(71 downto 8);
		when IMRMOVQ | IIRMOVQ | IRMMOVQ => 
			valP <= std_logic_vector(unsigned(PC) + 10); -- +80
			valC <= ten_byte_data(79 downto 16);
	end case;
	
	if (fetch_icode = IHALT) or (fetch_icode = INOP) or 
	(fetch_icode = IRET) or (fetch_icode = IJXX) or (fetch_icode = ICALL) then
		rA <= RNONE;
		rB <= RNONE;
	else
		case ten_byte_data(15 downto 12) is
			when X"0" => rA <= RRAX;
			when X"1" => rA <= RRCX;
			when X"2" => rA <= RRDX;
			when X"3" => rA <= RRBX;
			when X"4" => rA <= RRSP;
			when X"5" => rA <= RRBP;
			when X"6" => rA <= RRSI;
			when X"7" => rA <= RRDI;
			when X"8" => rA <= RR8;
			when X"9" => rA <= RR9;
			when X"A" => rA <= RR10;
			when X"B" => rA <= RR11;
			when X"C" => rA <= RR12;
			when X"D" => rA <= RR13;
			when X"E" => rA <= RR14;
			when others => rA <= RNONE;
		end case;

		case ten_byte_data(11 downto 8) is
			when X"0" => rB <= RRAX;
			when X"1" => rB <= RRCX;
			when X"2" => rB <= RRDX;
			when X"3" => rB <= RRBX;
			when X"4" => rB <= RRSP;
			when X"5" => rB <= RRBP;
			when X"6" => rB <= RRSI;
			when X"7" => rB <= RRDI;
			when X"8" => rB <= RR8;
			when X"9" => rB <= RR9;
			when X"A" => rB <= RR10;
			when X"B" => rB <= RR11;
			when X"C" => rB <= RR12;
			when X"D" => rB <= RR13;
			when X"E" => rB <= RR14;
			when others => rB <= RNONE;
		end case;
	end if;
	
	end process;

end Behavioral;

