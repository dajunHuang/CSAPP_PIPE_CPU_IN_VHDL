----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    16:11:32 04/24/2022 
-- Design Name: 
-- Module Name:    Forward - Behavioral 
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

entity Forward is
    Port ( D_icode : in  OPCODE;
           D_rA : in  REGISTER_NAME;
           D_rB : in  REGISTER_NAME;
			  
			  E_icode : in  OPCODE;
           E_rB : in  REGISTER_NAME;
           e_Cnd : in  STD_LOGIC;
           e_valE : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           M_icode : in  OPCODE;
           M_rB : in  REGISTER_NAME;
           M_Cnd : in  STD_LOGIC;
           M_valE : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           M_rA : in  REGISTER_NAME;
           m_valM : in  STD_LOGIC_VECTOR (63 downto 0);

           W_icode : in  OPCODE;
           W_rA : in  REGISTER_NAME;
           W_valM : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           W_rB : in  REGISTER_NAME;
           W_Cnd : in  STD_LOGIC;
           W_valE : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           d_rvalA : in  STD_LOGIC_VECTOR (63 downto 0);
           d_valA : out  STD_LOGIC_VECTOR (63 downto 0);
			  
           d_rvalB : in  STD_LOGIC_VECTOR (63 downto 0);
           d_valB : out  STD_LOGIC_VECTOR (63 downto 0);
			  
			  A_src : out VAL_SRC;
			  B_src : out VAL_SRC);
end Forward;

architecture Behavioral of Forward is	
	signal d_srcA, d_srcB, e_dstE, M_dstE, M_dstM, W_dstM, W_dstE : REGISTER_NAME;
begin
	d_srcA <= srcA(D_icode, D_rA);
	d_srcB <= srcB(D_icode, D_rB);
	e_dstE <= dstE(E_icode, E_rB, e_Cnd);
	M_dstE <= dstE(M_icode, M_rB, M_Cnd);
	M_dstM <= dstM(M_icode, M_rA);
	W_dstM <= dstM(W_icode, W_rA);
	W_dstE <= dstE(W_icode, W_rB, W_Cnd);

	process(d_srcA, d_srcB, 
		e_dstE, M_dstE, M_dstM, W_dstM, W_dstE,
		e_valE, M_valE, m_valM, W_valM, W_valE, d_rvalA, d_rvalB)
	begin
		if d_srcA /= RNONE then
		if d_srcA = e_dstE then
			d_valA <= e_valE;
			A_src <= evalE;
		elsif d_srcA = M_dstE then
			d_valA <= M_valE;
			A_src <= MvalE;
		elsif d_srcA = M_dstM then
			d_valA <= m_valM;
			A_src <= mvalM;
		elsif d_srcA = W_dstM then
			d_valA <= W_valM;
			A_src <= WvalM;
		elsif d_srcA = W_dstE then
			d_valA <= W_valE;
			A_src <= WvalE;
		else
			d_valA <= d_rvalA;
			A_src <= rval;
		end if;
		end if;
		
		if d_srcB /= RNONE then
		if d_srcB = e_dstE then
			d_valB <= e_valE;
			B_src <= evalE;
		elsif d_srcB = M_dstE then
			d_valB <= M_valE;
			B_src <= MvalE;
		elsif d_srcB = M_dstM then
			d_valB <= m_valM;
			B_src <= mvalM;
		elsif d_srcB = W_dstM then
			d_valB <= W_valM;
			B_src <= WvalM;
		elsif d_srcB = W_dstE then
			d_valB <= W_valE;
			B_src <= WvalE;
		else
			d_valB <= d_rvalB;
			B_src <= rval;
		end if;
		end if;

	end process;
	
end Behavioral;

