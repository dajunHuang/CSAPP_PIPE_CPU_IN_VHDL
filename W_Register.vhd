----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    11:29:49 04/23/2022 
-- Design Name: 
-- Module Name:    W_Register - Behavioral 
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

entity W_Register is
    Port ( clk : in  STD_LOGIC;
	 
           icode : in  OPCODE;
           rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valE : in  STD_LOGIC_VECTOR (63 downto 0);
           Cnd : in  STD_LOGIC;
           valM : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           W_icode : out  OPCODE;
           W_rA : out  REGISTER_NAME;
           W_rB : out  REGISTER_NAME;
           W_valE : out  STD_LOGIC_VECTOR (63 downto 0);
           W_Cnd : out  STD_LOGIC;
           W_valM : out  STD_LOGIC_VECTOR (63 downto 0));
end W_Register;

architecture Behavioral of W_Register is

begin
	process(clk)
	begin
		if rising_edge(clk) then
			W_icode <= icode;
			W_rA <= rA;
			W_rB <= rB;
			W_valM <= valM;
			W_valE <= valE;
			W_Cnd <= Cnd;
		end if;
	end process;

end Behavioral;

