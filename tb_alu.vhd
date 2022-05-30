--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:52:11 04/17/2022
-- Design Name:   
-- Module Name:   C:/Users/djhuang_1/Desktop/zazong/FPGA/y86_64_CPU_SEQ/tb_alu.vhd
-- Project Name:  y86_64_CPU_SEQ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         icode : IN  OPCODE;
         ifun : IN  OPFUN;
         valA : IN  std_logic_vector(63 downto 0);
         valB : IN  std_logic_vector(63 downto 0);
         valC : IN  std_logic_vector(63 downto 0);
         Cnd : OUT  std_logic;
         valE : OUT  std_logic_vector(63 downto 0);
			ZF : out  STD_LOGIC;
			SF : out  STD_LOGIC;
			O_F : out  STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal icode : OPCODE;
   signal ifun : OPFUN;
   signal valA : std_logic_vector(63 downto 0) := (others => '0');
   signal valB : std_logic_vector(63 downto 0) := (others => '0');
   signal valC : std_logic_vector(63 downto 0) := (others => '0');
	signal ZF : STD_LOGIC := '0';
	signal SF : STD_LOGIC := '0';
	signal O_F : STD_LOGIC := '0';

 	--Outputs
   signal Cnd : std_logic;
   signal valE : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk => clk,
          rst => rst,
          icode => icode,
          ifun => ifun,
          valA => valA,
          valB => valB,
          valC => valC,
          Cnd => Cnd,
          valE => valE,
			 ZF => ZF,
			 SF => SF,
			 O_F => O_F
        );


 
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 75 ns;	

      -- insert stimulus here 
		icode <= IOPQ;	
		ifun <= ALUADD;
		valA <= X"7FFFFFFFFFFFFFFF";
		valB <= X"7FFFFFFFFFFFFFFF";
		valC <= X"000000000FFFFFFF";
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		ifun <= ALULE;
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		ifun <= ALULE;
		valA <= X"7FFFFFFFFFFFFFFF";
		valB <= X"8000000000000001";
		valC <= X"000000000FFFFFFF";
		wait for 50 ns;
		clk <= '1';
		
      wait;
   end process;
END;
