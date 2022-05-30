--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:46 04/15/2022
-- Design Name:   
-- Module Name:   C:/Users/djhuang_1/Desktop/zazong/FPGA/y86_64_CPU_SEQ/tb_pc.vhd
-- Project Name:  y86_64_CPU_SEQ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.CPU_Type.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_pc IS
END tb_pc;
 
ARCHITECTURE behavior OF tb_pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         icode : IN  OPCODE;
         Cnd : IN  std_logic;
         valC : IN  std_logic_vector(63 downto 0);
         valM : IN  std_logic_vector(63 downto 0);
         valP : IN  std_logic_vector(63 downto 0);
         new_pc : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal valC : std_logic_vector(63 downto 0) := (others => '0');
   signal valM : std_logic_vector(63 downto 0) := X"00000000ffffffff";
   signal valP : std_logic_vector(63 downto 0) := (others => '1');
	signal clk : std_logic;
	signal rst : std_logic;
	signal icode : OPCODE;
	signal Cnd : std_logic;
	
 	--Outputs
   signal new_pc : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          clk => clk,
          rst => rst,
          icode => icode,
          Cnd => Cnd,
          valC => valC,
          valM => valM,
          valP => valP,
          new_pc=>new_pc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      icode <= ICALL;
		wait for clk_period*10;
		icode <= IRET;
		wait for clk_period*10;
		icode <= IPOPQ;
		wait for clk_period*10;
		icode <= IJXX;
		Cnd <= '1';
		wait for clk_period*10;
		Cnd <= '0';
      wait;
   end process;

END;
