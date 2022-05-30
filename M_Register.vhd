----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    11:23:42 04/23/2022 
-- Design Name: 
-- Module Name:    M_Register - Behavioral 
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

entity M_Register is
    Port ( clk : in  STD_LOGIC;
	 
           icode : in OPCODE;
			  rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valP : in  STD_LOGIC_VECTOR (63 downto 0);
           valA : in  STD_LOGIC_VECTOR (63 downto 0);
           valE : in  STD_LOGIC_VECTOR (63 downto 0);
           Cnd : in  STD_LOGIC;
			  
           M_icode : out  OPCODE;
           M_rA : out  REGISTER_NAME;
           M_rB : out  REGISTER_NAME;
           M_valP : out  STD_LOGIC_VECTOR (63 downto 0);
           M_valA : out  STD_LOGIC_VECTOR (63 downto 0);
           M_valE : out  STD_LOGIC_VECTOR (63 downto 0);
           M_Cnd : out  STD_LOGIC);
end M_Register;

architecture Behavioral of M_Register is

begin
	process(clk)
	begin
		if rising_edge(clk) then
			M_icode <= icode;
			M_rA <= rA;
			M_rB <= rB;
			M_valA <= valA;
			M_valP <= valP;
			M_valE <= valE;
			M_Cnd <= Cnd;
		end if;
	end process;

end Behavioral;

