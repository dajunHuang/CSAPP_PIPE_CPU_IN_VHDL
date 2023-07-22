----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    09:40:38 04/20/2022 
-- Design Name: 
-- Module Name:    INSTRUCTION_MEMORY - Behavioral 
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
use ieee.numeric_std.all;

entity INSTRUCTION_MEMORY is
    Port (f_pc : in STD_LOGIC_VECTOR (63 downto 0);
	 
           f_icode : out  OPCODE;
           f_ifun : out  OPFUN;  
			  f_rA : out  REGISTER_NAME;
           f_rB : out  REGISTER_NAME;
           f_valC : out  STD_LOGIC_VECTOR (63 downto 0);
           f_valP : out  STD_LOGIC_VECTOR (63 downto 0);
 
			  Predict_PC : out STD_LOGIC_VECTOR (63 downto 0)
			  );
			  
end INSTRUCTION_MEMORY;

architecture Behavioral of INSTRUCTION_MEMORY is
	signal i_memory : MEMORY;
begin	
	process(f_pc)
		variable ten_byte_data : std_logic_vector(79 downto 0) := (others => '0');
		variable fetch_icode : OPCODE := IHALT;
		variable fetch_ifun : OPFUN := ALUADD;
		variable fetch_valC : std_logic_vector(63 downto 0) := (others => '0');
		variable fetch_valP : std_logic_vector(63 downto 0) := (others => '0');
		variable index : INTEGER := 0;
	begin	

		index := to_integer(resize(unsigned(f_pc),32));
		---双端口存储器要完成输入index或f_pc返回十字节数据
		if (index + 9 < MEMORY_SIZE) then
			ten_byte_data(7 downto 0) := i_memory(index);
			ten_byte_data(15 downto 8) := i_memory(index+1);
			ten_byte_data(23 downto 16) := i_memory(index+2);
			ten_byte_data(31 downto 24) := i_memory(index+3);
			ten_byte_data(39 downto 32) := i_memory(index+4);
			ten_byte_data(47 downto 40) := i_memory(index+5);
			ten_byte_data(55 downto 48) := i_memory(index+6);
			ten_byte_data(63 downto 56) := i_memory(index+7);
			ten_byte_data(71 downto 64) := i_memory(index+8);
			ten_byte_data(79 downto 72) := i_memory(index+9);	

			case ten_byte_data(7 downto 4) is
				when X"0" => fetch_icode := IHALT;
				when X"2" => fetch_icode := IRRMOVQ;
				when X"3" => fetch_icode := IIRMOVQ;
				when X"4" => fetch_icode := IRMMOVQ;
				when X"5" => fetch_icode := IMRMOVQ;
				when X"6" => fetch_icode := IOPQ;
				when X"7" => fetch_icode := IJXX;
				when X"8" => fetch_icode := ICALL;
				when X"9" => fetch_icode := IRET;
				when X"A" => fetch_icode := IPUSHQ;
				when X"B" => fetch_icode := IPOPQ;
				when others => fetch_icode := INOP;
			end case;
			---双端口存储器要完成输入index或f_pc返回十字节数据
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
				fetch_valP := f_pc;
				fetch_valC := (others => '0');
			when INOP | IRET => 
				fetch_valP := std_logic_vector(unsigned(f_pc) + 1);-- +8
				fetch_valC := (others => '0');
			when IRRMOVQ | IOPQ | IPUSHQ | IPOPQ => 
				fetch_valP := std_logic_vector(unsigned(f_pc) + 2); -- +16
				fetch_valC := (others => '0');
			when IJXX | ICALL => 
				fetch_valP := std_logic_vector(unsigned(f_pc) + 9); -- +72;
				fetch_valC := ten_byte_data(71 downto 8);
			when IMRMOVQ | IIRMOVQ | IRMMOVQ => 
				fetch_valP := std_logic_vector(unsigned(f_pc) + 10); -- +80
				fetch_valC := ten_byte_data(79 downto 16);
		end case;
		
		case fetch_icode is
			when IJXX | ICALL => Predict_PC <= fetch_valC;
			when others => Predict_PC <= fetch_valP;
		end case;
		
		if (fetch_icode = IHALT) or (fetch_icode = INOP) or 
		(fetch_icode = IRET) or (fetch_icode = IJXX) or (fetch_icode = ICALL) then
			f_rA <= RNONE;
			f_rB <= RNONE;
		else
			case ten_byte_data(15 downto 12) is
				when X"0" => f_rA <= RRAX;
				when X"1" => f_rA <= RRCX;
				when X"2" => f_rA <= RRDX;
				when X"3" => f_rA <= RRBX;
				when X"4" => f_rA <= RRSP;
				when X"5" => f_rA <= RRBP;
				when X"6" => f_rA <= RRSI;
				when X"7" => f_rA <= RRDI;
				when X"8" => f_rA <= RR8;
				when X"9" => f_rA <= RR9;
				when X"A" => f_rA <= RR10;
				when X"B" => f_rA <= RR11;
				when X"C" => f_rA <= RR12;
				when X"D" => f_rA <= RR13;
				when X"E" => f_rA <= RR14;
				when others => f_rA <= RNONE;
			end case;

			case ten_byte_data(11 downto 8) is
				when X"0" => f_rB <= RRAX;
				when X"1" => f_rB <= RRCX;
				when X"2" => f_rB <= RRDX;
				when X"3" => f_rB <= RRBX;
				when X"4" => f_rB <= RRSP;
				when X"5" => f_rB <= RRBP;
				when X"6" => f_rB <= RRSI;
				when X"7" => f_rB <= RRDI;
				when X"8" => f_rB <= RR8;
				when X"9" => f_rB <= RR9;
				when X"A" => f_rB <= RR10;
				when X"B" => f_rB <= RR11;
				when X"C" => f_rB <= RR12;
				when X"D" => f_rB <= RR13;
				when X"E" => f_rB <= RR14;
				when others => f_rB <= RNONE;
			end case;
		end if;
		
		f_icode <= fetch_icode;
		f_ifun <= fetch_ifun;
		f_valC <= fetch_valC;
		f_valP <= fetch_valP;
	end process;

	i_memory(0) <= X"30"; -- irmov 0xA rax
	i_memory(1) <= X"F0";
	i_memory(2) <= X"0A";
	i_memory(3) <= X"00";
	i_memory(4) <= X"00";
	i_memory(5) <= X"00";
	i_memory(6) <= X"00";
	i_memory(7) <= X"00";
	i_memory(8) <= X"00";
	i_memory(9) <= X"00";	

	i_memory(10) <= X"40"; --rmmovq rax, 2(rax);
	i_memory(11) <= X"00";
	i_memory(12) <= X"02";
	i_memory(13) <= X"00";
	i_memory(14) <= X"00";
	i_memory(15) <= X"00";
	i_memory(16) <= X"00";
	i_memory(17) <= X"00";
	i_memory(18) <= X"00";
	i_memory(19) <= X"00";

	i_memory(20) <= X"50";-- mrmovq 2(rax), rbx
	i_memory(21) <= X"30";
	i_memory(22) <= X"02";
	i_memory(23) <= X"00";
	i_memory(24) <= X"00";
	i_memory(25) <= X"00";
	i_memory(26) <= X"00";
	i_memory(27) <= X"00";
	i_memory(28) <= X"00";
	i_memory(29) <= X"00";
	
	i_memory(30) <= X"20";--rrmovq rbx, rcx;
	i_memory(31) <= X"31";
	i_memory(32) <= X"00";--halt


end Behavioral;

