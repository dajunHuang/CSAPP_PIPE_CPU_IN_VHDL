----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang 
-- 
-- Create Date:    11:01:25 04/23/2022 
-- Design Name: 
-- Module Name:    D_Register - Behavioral 
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

entity D_Register is
    Port ( clk : in  STD_LOGIC;
			  D_stall : in STD_LOGIC;
			  D_bubble : in STD_LOGIC;
			  icode : in  OPCODE;
           ifun : in  OPFUN;
           rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valC : in  STD_LOGIC_VECTOR (63 downto 0);
           valP : in  STD_LOGIC_VECTOR (63 downto 0);
           
           D_icode : out  OPCODE;
           D_ifun : out  OPFUN;
           D_rA : out  REGISTER_NAME;
           D_rB : out  REGISTER_NAME;
           D_valC : out  STD_LOGIC_VECTOR (63 downto 0);
           D_valP : out  STD_LOGIC_VECTOR (63 downto 0));
end D_Register;

architecture Behavioral of D_Register is

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if D_stall = '0' then
				if D_bubble = '1' then
					D_icode <= INOP;
					D_ifun <= ALUADD;
					D_rA <= RNONE;
					D_rB <= RNONE; 
					D_valC <= (others => '0');
					D_valP <= (others => '0');
				else
					D_icode <= icode;
					D_ifun <= ifun;
					D_rA <= rA;
					D_rB <= rB;
					D_valC <= valC;
					D_valP <= valP;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

