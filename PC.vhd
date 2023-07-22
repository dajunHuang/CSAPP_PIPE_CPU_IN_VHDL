----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang 
-- 
-- Create Date:    15:23:43 04/15/2022 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port (clk, rst : in  STD_LOGIC;
			icode : in  OPCODE;
           Cnd : in  STD_LOGIC;
           valC : in  STD_LOGIC_VECTOR (63 downto 0);
           valM : in  STD_LOGIC_VECTOR (63 downto 0);
           valP : in  STD_LOGIC_VECTOR (63 downto 0);
           new_pc : out  STD_LOGIC_VECTOR (63 downto 0));
end PC;

architecture Behavioral of PC is
begin

	process(clk ,rst)
	begin
	
		if rising_edge(clk) then	
			case icode is
				when ICALL => new_pc <= valC;
				when IJXX =>
					if Cnd = '1' then
						new_pc <= valC;
					else
						new_pc <= valP;
					end if;
				when IRET => new_pc <= valM;
				when others => new_pc <= valP;
			end case;
		elsif rising_edge(rst) then
			 new_pc <= X"0000000000000000";
		end if;						
		
	end process;
end Behavioral;

