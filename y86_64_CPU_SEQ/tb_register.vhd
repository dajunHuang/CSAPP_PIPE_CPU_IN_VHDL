--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:03 04/19/2022
-- Design Name:   
-- Module Name:   C:/Users/djhuang_1/Desktop/zazong/FPGA/y86_64_CPU_SEQ/tb_register.vhd
-- Project Name:  y86_64_CPU_SEQ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_Group
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
 
ENTITY tb_register IS
END tb_register;
 
ARCHITECTURE behavior OF tb_register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_Group
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           icode : in  OPCODE;
			  ifun : in OPFUN;
           rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valM : in  STD_LOGIC_VECTOR (63 downto 0);
           valE : in  STD_LOGIC_VECTOR (63 downto 0);
           Cnd : in  STD_LOGIC;
           valA : out  STD_LOGIC_VECTOR (63 downto 0);
           valB : out  STD_LOGIC_VECTOR (63 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal icode : OPCODE := IOPQ;
   signal ifun : OPFUN := ALUADD;
   signal rA : REGISTER_NAME := RRAX;
   signal rB : REGISTER_NAME := RRBX;
   signal valM : std_logic_vector(63 downto 0) := X"0000000011111111";
   signal valE : std_logic_vector(63 downto 0) := X"1111111100000000";
   signal Cnd : std_logic := '0';

 	--Outputs
   signal valA : std_logic_vector(63 downto 0);
   signal valB : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_Group PORT MAP (
          clk => clk,
          rst => rst,
          icode => icode,
          ifun => ifun,
          rA => rA,
          rB => rB,
          valM => valM,
          valE => valE,
          Cnd => Cnd,
          valA => valA,
          valB => valB
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
