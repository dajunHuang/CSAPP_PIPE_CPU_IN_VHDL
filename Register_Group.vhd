----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    09:19:25 04/19/2022 
-- Design Name: 
-- Module Name:    Register_Group - Behavioral 
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

entity Register_Group is
    Port ( D_icode : in  OPCODE;
           D_rA : in  REGISTER_NAME;
           D_rB : in  REGISTER_NAME;
			  D_valP : in STD_LOGIC_VECTOR (63 downto 0);
			  
			  d_valA : out  STD_LOGIC_VECTOR (63 downto 0);
			  d_valB : out  STD_LOGIC_VECTOR (63 downto 0);
			  
			  W_icode : in OPCODE;
			  W_rA : in  REGISTER_NAME;
			  W_rB : in  REGISTER_NAME;
           W_valM : in  STD_LOGIC_VECTOR (63 downto 0);
           W_valE : in  STD_LOGIC_VECTOR (63 downto 0);
           W_Cnd : in  STD_LOGIC);
end Register_Group;

architecture Behavioral of Register_Group is

	signal val_rax, val_rcx, val_rdx, val_rbx, val_rsp : STD_LOGIC_VECTOR (63 downto 0) := (others => '0'); 
	signal val_rbp, val_rsi, val_rdi, val_r8, val_r9 : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
	signal val_r10, val_r11, val_r12, val_r13, val_r14 : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
begin

	process (D_icode, D_rA, D_rB, D_valP) --¶Á¼Ä´æÆ÷
	begin	
		case srcA(D_icode, D_rA) is
			when RNONE => d_valA <= std_logic_vector(to_unsigned(0, 64));
			when RRAX => d_valA <= val_rax;
			when RRCX => d_valA <= val_rbx;
			when RRDX => d_valA <= val_rdx;
			when RRBX => d_valA <= val_rbx;
			when RRSP => d_valA <= val_rsp;
			when RRBP => d_valA <= val_rbp;
			when RRSI => d_valA <= val_rsi;
			when RRDI => d_valA <= val_rdi;
			when RR8 => d_valA <= val_r8;
			when RR9 => d_valA <= val_r9;
			when RR10 => d_valA <= val_r10;
			when RR11 => d_valA <= val_r11;
			when RR12 => d_valA <= val_r12;
			when RR13 => d_valA <= val_r13;
			when RR14 => d_valA <= val_r14;
		end case;
	
		case srcB(D_icode, D_rB) is
			when RNONE => d_valB <= std_logic_vector(to_unsigned(0, 64));
			when RRAX => d_valB <= val_rax;
			when RRCX => d_valB <= val_rbx;
			when RRDX => d_valB <= val_rdx;
			when RRBX => d_valB <= val_rbx;
			when RRSP => d_valB <= val_rsp;
			when RRBP => d_valB <= val_rbp;
			when RRSI => d_valB <= val_rsi;
			when RRDI => d_valB <= val_rdi;
			when RR8 => d_valB <= val_r8;
			when RR9 => d_valB <= val_r9;
			when RR10 => d_valB <= val_r10;
			when RR11 => d_valB <= val_r11;
			when RR12 => d_valB <= val_r12;
			when RR13 => d_valB <= val_r13;
			when RR14 => d_valB <= val_r14;
		end case;
	end process;
	
	process (W_icode, W_rA, W_rB, W_valM, W_valE, W_Cnd)--Ð´¼Ä´æÆ÷
	begin
		case dstE(W_icode, W_rB, W_Cnd) is
			when RNONE => null;
			when RRAX => val_rax <= W_valE;
			when RRCX => val_rcx <= W_valE;
			when RRDX => val_rdx <= W_valE;
			when RRBX => val_rbx <= W_valE;
			when RRSP => val_rsp <= W_valE;
			when RRBP => val_rbp <= W_valE;
			when RRSI => val_rsi <= W_valE;
			when RRDI => val_rdi <= W_valE;
			when RR8 => val_r8 <= W_valE;
			when RR9 => val_r9 <= W_valE;
			when RR10 => val_r10 <= W_valE;
			when RR11 => val_r11 <= W_valE;
			when RR12 => val_r12 <= W_valE;
			when RR13 => val_r13 <= W_valE;
			when RR14 => val_r14 <= W_valE;
		end case;
		
		case dstM(W_icode, W_rA) is
			when RNONE => null;
			when RRAX => val_rax <= W_valM;
			when RRCX => val_rcx <= W_valM;
			when RRDX => val_rdx <= W_valM;
			when RRBX => val_rbx <= W_valM;
			when RRSP => val_rsp <= W_valM;
			when RRBP => val_rbp <= W_valM;
			when RRSI => val_rsi <= W_valM;
			when RRDI => val_rdi <= W_valM;
			when RR8 => val_r8 <= W_valM;
			when RR9 => val_r9 <= W_valM;
			when RR10 => val_r10 <= W_valM;
			when RR11 => val_r11 <= W_valM;
			when RR12 => val_r12 <= W_valM;
			when RR13 => val_r13 <= W_valM;
			when RR14 => val_r14 <= W_valM;
		end case;

	end process;
	
end Behavioral;

