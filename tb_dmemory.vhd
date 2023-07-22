--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:36 04/19/2022
-- Design Name:   
-- Module Name:   C:/Users/djhuang_1/Desktop/zazong/FPGA/y86_64_CPU_SEQ/tb_dmemory.vhd
-- Project Name:  y86_64_CPU_SEQ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DATA_MEMORY
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
 
ENTITY tb_dmemory IS
END tb_dmemory;
 
ARCHITECTURE behavior OF tb_dmemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DATA_MEMORY
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         icode : IN  OPCODE;
         valA : IN  std_logic_vector(63 downto 0);
         valE : IN  std_logic_vector(63 downto 0);
         valP : IN  std_logic_vector(63 downto 0);
         valM : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal icode : OPCODE;
   signal valA : std_logic_vector(63 downto 0) := (others => '0');
   signal valE : std_logic_vector(63 downto 0) := (others => '0');
   signal valP : std_logic_vector(63 downto 0) := (others => '0');

 	--Outputs
   signal valM : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DATA_MEMORY PORT MAP (
          clk => clk,
          rst => rst,
          icode => icode,
          valA => valA,
          valE => valE,
          valP => valP,
          valM => valM
        );
 

   -- Stimulus process
   stim_proc: process
   begin		

		clk <= '0';
		icode <= IRMMOVQ;
		valE <= X"0000000000000010";
		valA <= X"0FFFFFFFFFFFFFF0";
      wait for 25 ns;	
		clk <= '1';
		wait for 25 ns;	
		clk <= '0';
		icode <= IMRMOVQ;
		wait for 25 ns;	
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		valA <= X"0FFFFF000000FFF0";
		icode <= IRMMOVQ;
		wait for 25 ns;	
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		icode <= IMRMOVQ;
		wait for 25 ns;	
		clk <= '1';		
		wait;
   end process;

END;
