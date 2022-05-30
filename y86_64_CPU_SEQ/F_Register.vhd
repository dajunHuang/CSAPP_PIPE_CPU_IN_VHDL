----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    10:05:23 04/23/2022 
-- Design Name: 
-- Module Name:    F_Register - Behavioral 
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

entity F_Register is
    Port ( F_stall : in STD_LOGIC;
			  clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Predict_PC : in  STD_LOGIC_VECTOR (63 downto 0);
           F_predPC : out  STD_LOGIC_VECTOR (63 downto 0));
end F_Register;

architecture Behavioral of F_Register is
begin
	process(rst, clk)
	begin
		if rst = '0' then
			F_predPC <= (others => '0');
		elsif clk = '1' and F_stall = '0' then
			F_predPC <= Predict_PC;
		end if;
	end process;

end Behavioral;

