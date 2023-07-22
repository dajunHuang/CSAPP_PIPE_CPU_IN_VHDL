--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package CPU_Type is

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--
	
	constant MEMORY_SIZE : INTEGER := 128;
	
	type OPCODE is (IHALT, INOP, IRRMOVQ, IIRMOVQ, IRMMOVQ, IMRMOVQ, IOPQ, IJXX, ICALL, IRET, IPUSHQ, IPOPQ);
		
	type OPFUN is (ALUADD, ALULE, ALUL, ALUE, ALUNE, ALUGE, ALUG);
	
	type REGISTER_NAME is (RRAX, RRCX, RRDX, RRBX, RRSP, RRBP, RRSI, RRDI, RR8, RR9, RR10, RR11, RR12, RR13, RR14, RNONE);
	
	type MEMORY is array(0 to (MEMORY_SIZE-1)) of STD_LOGIC_VECTOR (7 downto 0);
	
	type VAL_SRC is (evalE, MvalE, mvalM, WvalM, WvalE, rval);

	function srcA(icode : OPCODE; rA : REGISTER_NAME) return REGISTER_NAME;

	function srcB(icode : OPCODE; rB : REGISTER_NAME) return REGISTER_NAME;

	function dstE(icode : OPCODE; rB : REGISTER_NAME; Cnd : STD_LOGIC) return REGISTER_NAME;

	function dstM(icode : OPCODE; rA : REGISTER_NAME) return REGISTER_NAME;

end CPU_Type;

package body CPU_Type is


	function srcA(icode : OPCODE; rA : REGISTER_NAME) return REGISTER_NAME is
	begin
		case icode is
			when IRRMOVQ | IRMMOVQ | IOPQ | IPUSHQ => return rA;
			when IPOPQ | IRET => return RRSP;
			when others => return RNONE;
		end case;
	end srcA;

	function srcB(icode : OPCODE; rB : REGISTER_NAME) return REGISTER_NAME is
	begin
		case icode is
			when IMRMOVQ | IRMMOVQ | IOPQ => return rB;
			when IPUSHQ | IPOPQ | ICALL | IRET => return RRSP;
			when others => return RNONE;
		end case;
	end srcB;

	function dstE(icode : OPCODE; rB : REGISTER_NAME; Cnd : STD_LOGIC) return REGISTER_NAME is
	begin
		case icode is
			when IRRMOVQ => 
				if Cnd = '1' then
					return rB;
				else
					return RNONE;
				end if;
			when IIRMOVQ | IOPQ => return rB;
			when IPUSHQ | IPOPQ | ICALL | IRET => return RRSP;
			when others => return RNONE;
		end case;
	end dstE;

	function dstM(icode : OPCODE; rA : REGISTER_NAME) return REGISTER_NAME is
	begin
		case icode is
			when IMRMOVQ | IPOPQ => return rA;
			when others => return RNONE;
		end case;
	end dstM;
---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end CPU_Type;
