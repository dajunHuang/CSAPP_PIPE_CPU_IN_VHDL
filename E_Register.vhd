----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    11:13:49 04/23/2022 
-- Design Name: 
-- Module Name:    E_Register - Behavioral 
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

entity E_Register is
    Port ( E_bubble : in STD_LOGIC;
		     icode : in  OPCODE;
           ifun : in  OPFUN;
           rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valC : in  STD_LOGIC_VECTOR (63 downto 0);
           valP : in  STD_LOGIC_VECTOR (63 downto 0);
           valA : in  STD_LOGIC_VECTOR (63 downto 0);
           valB : in  STD_LOGIC_VECTOR (63 downto 0);
				  
           E_icode : out  OPCODE;
			  E_ifun : out OPFUN;
           E_rA : out  REGISTER_NAME;
           E_rB : out  REGISTER_NAME;
           E_valC : out  STD_LOGIC_VECTOR (63 downto 0);
           E_valP : out  STD_LOGIC_VECTOR (63 downto 0);
           E_valA : out  STD_LOGIC_VECTOR (63 downto 0);
			  E_valB : out  STD_LOGIC_VECTOR (63 downto 0);
			  
           clk : in  STD_LOGIC);
end E_Register;

architecture Behavioral of E_Register is

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if E_bubble = '1' then
				E_icode <= INOP;
				E_ifun <= ALUADD;
				E_rA <= RNONE;
				E_rB <= RNONE;
				E_valC <= (others => '0');
				E_valP <= (others => '0');
				E_valA <= (others => '0');
				E_valB <= (others => '0');
			else
				E_icode <= icode;
				E_ifun <= ifun;
				E_rA <= rA;
				E_rB <= rB;
				E_valC <= valC;
				E_valP <= valP;
				E_valA <= valA;
				E_valB <= valB;
			end if;
		end if;
	end process;
end Behavioral;

