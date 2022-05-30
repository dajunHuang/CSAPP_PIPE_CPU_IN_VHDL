--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:53:09 04/20/2022
-- Design Name:   
-- Module Name:   C:/Users/djhuang_1/Desktop/zazong/FPGA/y86_64_CPU_SEQ/tb_imemory.vhd
-- Project Name:  y86_64_CPU_SEQ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: INSTRUCTION_MEMORY
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
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_imemory IS
END tb_imemory;
 
ARCHITECTURE behavior OF tb_imemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT INSTRUCTION_MEMORY
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           PC : in  STD_LOGIC_VECTOR (63 downto 0);
           icode : out  OPCODE;
           ifun : out  OPFUN;  
			  rA : out  REGISTER_NAME;
           rB : out  REGISTER_NAME;
           valC : out  STD_LOGIC_VECTOR (63 downto 0);
           valP : out  STD_LOGIC_VECTOR (63 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal PC : std_logic_vector(63 downto 0) := (others => '0');

 	--Outputs
   signal icode : OPCODE;
   signal ifun : OPFUN;
	signal rA : REGISTER_NAME;
   signal rB : REGISTER_NAME;
   signal valC : std_logic_vector(63 downto 0);
   signal valP : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: INSTRUCTION_MEMORY PORT MAP (
          clk => clk,
          rst => rst,
          PC => PC,
          icode => icode,
          ifun => ifun,
          rB => rB,
			 rA => rA,
          valC => valC,
          valP => valP
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 25 ns;	
		clk <= '0';
		PC <= (others => '0');
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= std_logic_vector(to_unsigned(0, 64));
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= std_logic_vector(to_unsigned(10, 64));
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= std_logic_vector(to_unsigned(20, 64));
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= std_logic_vector(to_unsigned(22, 64));
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= std_logic_vector(to_unsigned(32, 64));
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
		clk <= '0';
		--PC <= X"FFFFFFFFFFFFFFFF";
		wait for 25 ns;
		clk <= '1';


      wait;
   end process;

END;
