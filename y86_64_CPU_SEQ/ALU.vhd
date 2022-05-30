----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    17:04:37 04/15/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port(E_icode : in OPCODE;
			E_ifun : in OPFUN;
			E_valA : in STD_LOGIC_VECTOR (63 downto 0);
			E_valB : in STD_LOGIC_VECTOR (63 downto 0);
			E_valC : in STD_LOGIC_VECTOR (63 downto 0);
			
			e_valE : out STD_LOGIC_VECTOR (63 downto 0);
			e_Cnd : out STD_LOGIC
			);
end ALU;

architecture Behavioral of ALU is

begin
	process(E_icode, E_ifun, E_valA, E_valB, E_valC)
		variable set_CC : STD_LOGIC := '0';
		variable ALU_ZF, ALU_SF, ALU_OF: STD_LOGIC := '0';
		variable ALU_fun : OPFUN := ALUADD;
		variable ALU_A, ALU_B : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
		variable ALU_E : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
		variable ALU_Cnd : STD_LOGIC := '0';
	begin
		case E_icode is -- 是否设置标志位
			when IOPQ => set_CC := '1';
			when others => set_CC := '0';
		end case;
		
		if E_icode = IOPQ then -- 根据icode设置ALU的功能
			ALU_fun := E_ifun;
		else
			ALU_fun := ALUADD;
		end if;
		
		case E_icode is	-- 根据icode设置ALU_A的来源
			when IRRMOVQ | IOPQ => ALU_A := E_valA;
			when IIRMOVQ | IRMMOVQ | IMRMOVQ => ALU_A := E_valC;
			when ICALL | IPUSHQ => ALU_A := std_logic_vector(to_signed(-8, 64));
			when IRET | IPOPQ => ALU_A := std_logic_vector(to_signed(8, 64));
			when others => ALU_A := std_logic_vector(to_signed(0, 64));
		end case;
		
		case E_icode is -- 根据icode设置 ALU_B的来源
			when IRMMOVQ | IMRMOVQ | IPUSHQ | ICALL | IRET | IPOPQ | IOPQ => ALU_B := E_valB;
			when others => ALU_B := std_logic_vector(to_signed(0, 64));
		end case;
			
		case ALU_fun is	-- 根据ALU的功能和输入计算结果
			when ALULE => ALU_E := std_logic_vector(signed(ALU_B) - signed(ALU_A));
			when ALUL => ALU_E :=	ALU_A and ALU_B;
			when ALUE => ALU_E :=	ALU_A xor ALU_B;
			when others => ALU_E := std_logic_vector(signed(ALU_B) + signed(ALU_A));
		end case;
			
		if set_CC = '1' then	--设置标志位
			if ALU_E = X"0000000000000000" then --设置ZF
				ALU_ZF := '1';
			else
				ALU_ZF := '0';
			end if;
			
			ALU_SF := ALU_E(63);--设置SF
			
			if ALU_fun = ALULE then--设置OF
				if (ALU_A(63) /= ALU_B(63)) and (ALU_B(63) /= ALU_E(63)) then
					ALU_OF := '1';
				else 
					ALU_OF := '0';
				end if;
			else
				if (ALU_A(63) = ALU_B(63)) and (ALU_B(63) /= ALU_E(63)) then
					ALU_OF := '1';
				else
					ALU_OF := '0';
				end if;
			end if;
		end if;

		if (E_icode = IJXX or E_icode = IRRMOVQ) then--如果是条件跳转和条件转移指令，设置Cnd
			case E_ifun is 
				when ALUADD => ALU_Cnd := '1';
				when ALULE => ALU_Cnd := (ALU_SF xor ALU_OF) or ALU_ZF;
				when ALUL => ALU_Cnd := (ALU_SF xor ALU_OF);
				when ALUE => ALU_Cnd := ALU_ZF;
				when ALUNE => ALU_Cnd := not ALU_ZF;
				when ALUGE => ALU_Cnd := not(ALU_SF xor ALU_OF);
				when ALUG => ALU_Cnd := (not(ALU_SF xor ALU_OF)) and (not ALU_ZF);
			end case;
		else
			ALU_Cnd := '0';
		end if;

		e_Cnd <= ALU_Cnd;
		e_valE <= ALU_E;
	end process;
end Behavioral;

