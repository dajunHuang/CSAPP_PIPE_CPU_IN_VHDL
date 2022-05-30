----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    10:28:28 04/23/2022 
-- Design Name: 
-- Module Name:    Select_PC - Behavioral 
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


entity Select_PC is
    Port ( predPC : in STD_LOGIC_VECTOR (63 downto 0);
			  M_icode : in OPCODE;
			  M_Cnd : in STD_LOGIC;
			  M_valA : in STD_LOGIC_VECTOR (63 downto 0);
			  W_icode: in OPCODE;
			  W_valM : in STD_LOGIC_VECTOR (63 downto 0);
			  f_pc : out STD_LOGIC_VECTOR (63 downto 0));
end Select_PC;

architecture Behavioral of Select_PC is
begin
	f_pc <= M_valA when (M_icode = IJXX and M_Cnd = '0') else
		     W_valM when W_icode = IRET else
		     predPC;
end Behavioral;

