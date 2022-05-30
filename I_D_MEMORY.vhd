----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:45:42 04/22/2022 
-- Design Name: 
-- Module Name:    I_D_MEMORY - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I_D_MEMORY is
    Port ( clk1 : in  STD_LOGIC;
           clk2 : in  STD_LOGIC;
           clk3 : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           PC : out  STD_LOGIC_VECTOR (63 downto 0);
           icode : out  STD_LOGIC;
           ifun : out  STD_LOGIC;
           valC : out  STD_LOGIC_VECTOR (63 downto 0);
           valP : out  STD_LOGIC_VECTOR (63 downto 0));
end I_D_MEMORY;


entity DATA_MEMORY is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           icode : OPCODE;
           valA : in  STD_LOGIC_VECTOR (63 downto 0);
           valE : in  STD_LOGIC_VECTOR (63 downto 0);
           valP : in  STD_LOGIC_VECTOR (63 downto 0);
           valM : out  STD_LOGIC_VECTOR (63 downto 0));
end DATA_MEMORY;

architecture Behavioral of I_D_MEMORY is

begin


end Behavioral;

