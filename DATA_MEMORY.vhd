----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    10:57:50 04/19/2022 
-- Design Name: 
-- Module Name:    DATA_MEMORY - Behavioral 
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

entity DATA_MEMORY is
    Port ( M_icode : OPCODE;
			M_valP : in  STD_LOGIC_VECTOR (63 downto 0);
			M_valA : in  STD_LOGIC_VECTOR (63 downto 0);
			M_valE : in  STD_LOGIC_VECTOR (63 downto 0);
			
			m_valM : out  STD_LOGIC_VECTOR (63 downto 0)
			);
end DATA_MEMORY;

architecture Behavioral of DATA_MEMORY is
	signal d_memory : MEMORY;
begin

	process(M_icode, M_valP, M_valA, M_valE)--写内存
		variable mem_addr : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
		variable mem_data : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
		variable index : INTEGER := 0;
	begin
		if M_icode = IRMMOVQ or M_icode = IPUSHQ or M_icode = ICALL then
			
			mem_addr := M_valE;
		
			case M_icode is
				when IRMMOVQ | IPUSHQ => mem_data := M_valA;
				when ICALL => mem_data := M_valP;
				when others => null;
			end case;

			index := to_integer(resize(unsigned(mem_addr),32));
			---双端口存储器要完成输入index或mem_addr写入mem_data
			if(index + 7 < MEMORY_SIZE) then --总共只有128字节限制范围
				d_memory(index) <= mem_data(7 downto 0); --此处把mem_data写到地址为mem_address的位置	
				d_memory(index+1) <= mem_data(15 downto 8);
				d_memory(index+2) <= mem_data(23 downto 16);
				d_memory(index+3) <= mem_data(31 downto 24);
				d_memory(index+4) <= mem_data(39 downto 32);
				d_memory(index+5) <= mem_data(47 downto 40);
				d_memory(index+6) <= mem_data(55 downto 48);
				d_memory(index+7) <= mem_data(63 downto 56);
			---
			end if;
		end if;	
	end process;


	process(M_icode, M_valP, M_valA, M_valE)--读内存
		variable mem_addr : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
		variable index : INTEGER := 0;
		variable out_val : STD_LOGIC_VECTOR (63 downto 0) := (others => '0');
	begin
		if M_icode = IMRMOVQ or M_icode = IPOPQ or M_icode = IRET then
			case M_icode is
				when IMRMOVQ => mem_addr := M_valE;
				when IPOPQ | IRET => mem_addr := M_valA;
				when others => null;
			end case;

			index := to_integer(resize(unsigned(mem_addr),32));
			
			if(index + 7 < MEMORY_SIZE) then --范围是0-120
				out_val(7 downto 0) := d_memory(index);
				out_val(15 downto 8) := d_memory(index+1);
				out_val(23 downto 16) := d_memory(index+2);
				out_val(31 downto 24) := d_memory(index+3);
				out_val(39 downto 32) := d_memory(index+4);
				out_val(47 downto 40) := d_memory(index+5);
				out_val(55 downto 48) := d_memory(index+6);
				out_val(63 downto 56) := d_memory(index+7);			
				m_valM <= out_val;
			end if;
		else
			m_valM <= std_logic_vector(to_unsigned(0, 64));
		end if;
	end process;
end Behavioral;

