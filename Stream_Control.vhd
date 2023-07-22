----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:13 04/26/2022 
-- Design Name: 
-- Module Name:    Stream_Control - Behavioral 
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


entity Stream_Control is
    Port ( E_icode : in  OPCODE;
           E_rA : in REGISTER_NAME;
			  D_icode : in OPCODE;
			  D_rA : in REGISTER_NAME;
			  D_rB : in REGISTER_NAME;
			  M_icode : in OPCODE;
			  e_Cnd : in STD_LOGIC;
			  
			  F_stall : out STD_LOGIC;
			  D_stall : out STD_LOGIC;
			  D_bubble : out STD_LOGIC;
			  E_bubble : out STD_LOGIC	  
			  );
end Stream_Control;

architecture Behavioral of Stream_Control is
	signal E_dstM, d_srcA, d_srcB : REGISTER_NAME;
	signal ret_err, mem_err, predit_err : boolean;
begin
	d_srcA <= srcA(D_icode, D_rA);
	d_srcB <= srcB(D_icode, D_rB);
	E_dstM <= dstM(E_icode, E_rA);
	
	ret_err <= D_icode = IRET or E_icode = IRET or M_icode = IRET;
	mem_err <= (E_icode = IMRMOVQ or E_icode = IPOPQ)and(E_dstM = d_srcA or E_dstM = d_srcB);
	predit_err <= E_icode = IJXX and e_Cnd = '0';
	
	F_stall <= '1' when mem_err or ret_err else '0';
	D_stall <= '1' when mem_err else '0';
	D_bubble <= '1' when predit_err or D_icode = IRET or ((not mem_err) and ret_err) else '0';
	E_bubble <= '1' when ((E_icode = IMRMOVQ or E_icode = IPOPQ) and (E_dstM = d_srcA or E_dstM = d_srcB)) or 
		(E_icode = IJXX and e_Cnd = '0') else '0';
end Behavioral;

