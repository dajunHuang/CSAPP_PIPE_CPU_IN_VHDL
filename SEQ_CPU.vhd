----------------------------------------------------------------------------------
-- Company: XDU
-- Engineer: djhuang
-- 
-- Create Date:    17:13:07 04/20/2022 
-- Design Name: 	
-- Module Name:    SEQ_CPU - Behavioral 
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


entity SEQ_CPU is
    PORT(clk : IN  std_logic;
         rst : IN  std_logic);
end SEQ_CPU;

architecture Behavioral of SEQ_CPU is

	COMPONENT Stream_Control
    Port ( E_icode : in  OPCODE;
           E_rA : in REGISTER_NAME;
			  D_icode : in OPCODE;
			  D_rA : in REGISTER_NAME;
			  D_rB : in REGISTER_NAME;
			  M_icode : in OPCODE;
			  e_Cnd : in STD_LOGIC;
			  
			  F_stall : out STD_LOGIC;
			  D_stall : out STD_LOGIC;
			  D_bubble : out STD_LOGIC;
			  E_bubble : out STD_LOGIC	  
			  );
	end COMPONENT;

	COMPONENT F_Register
		 Port ( clk : in  STD_LOGIC;
				  F_stall : in STD_LOGIC;
				  rst : in  STD_LOGIC;
				  Predict_PC : in  STD_LOGIC_VECTOR (63 downto 0);
				  F_predPC : out  STD_LOGIC_VECTOR (63 downto 0));
	end COMPONENT;

	COMPONENT Select_PC
		 Port ( predPC : in STD_LOGIC_VECTOR (63 downto 0);
				  M_icode : in OPCODE;
				  M_Cnd : in STD_LOGIC;
				  M_valA : in STD_LOGIC_VECTOR (63 downto 0);
				  W_icode: in OPCODE;
				  W_valM : in STD_LOGIC_VECTOR (63 downto 0);
				  f_pc : out STD_LOGIC_VECTOR (63 downto 0));
	end COMPONENT;

	COMPONENT INSTRUCTION_MEMORY
		 Port ( f_pc : in STD_LOGIC_VECTOR (63 downto 0);
		 
				  f_icode : out  OPCODE;
				  f_ifun : out  OPFUN;
				  f_rA : out  REGISTER_NAME;
				  f_rB : out  REGISTER_NAME;
				  f_valC : out  STD_LOGIC_VECTOR (63 downto 0);
				  f_valP : out  STD_LOGIC_VECTOR (63 downto 0);
				  Predict_PC : out STD_LOGIC_VECTOR (63 downto 0));	  
	end COMPONENT;

	COMPONENT D_Register
		 Port ( clk : in  STD_LOGIC;
				  D_stall : in STD_LOGIC;
				  D_bubble : in STD_LOGIC;
				  icode : in  OPCODE;
				  ifun : in  OPFUN;
				  rA : in  REGISTER_NAME;
				  rB : in  REGISTER_NAME;
				  valC : in  STD_LOGIC_VECTOR (63 downto 0);
				  valP : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  D_icode : out  OPCODE;
				  D_ifun : out  OPFUN;
				  D_rA : out  REGISTER_NAME;
				  D_rB : out  REGISTER_NAME;
				  D_valC : out  STD_LOGIC_VECTOR (63 downto 0);
				  D_valP : out  STD_LOGIC_VECTOR (63 downto 0));
	end COMPONENT;

	COMPONENT Register_Group
		 Port ( D_icode : in  OPCODE;
				  D_rA : in  REGISTER_NAME;
				  D_rB : in  REGISTER_NAME;
				  D_valP : in STD_LOGIC_VECTOR (63 downto 0);
				  
				  d_valA : out  STD_LOGIC_VECTOR (63 downto 0);
				  d_valB : out  STD_LOGIC_VECTOR (63 downto 0);
				  
				  W_icode : in OPCODE;
				  W_rA : in  REGISTER_NAME;
				  W_rB : in  REGISTER_NAME;
				  W_valM : in  STD_LOGIC_VECTOR (63 downto 0);
				  W_valE : in  STD_LOGIC_VECTOR (63 downto 0);
				  W_Cnd : in  STD_LOGIC);
	end COMPONENT;
	
	COMPONENT Forward
		 Port ( D_icode : in  OPCODE;
              D_rA : in  REGISTER_NAME;
              D_rB : in  REGISTER_NAME;
				  
				  E_icode : in  OPCODE;
				  E_rB : in  REGISTER_NAME;
				  e_Cnd : in  STD_LOGIC;
				  e_valE : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  M_icode : in  OPCODE;
				  M_rB : in  REGISTER_NAME;
				  M_Cnd : in  STD_LOGIC;
				  M_valE : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  M_rA : in  REGISTER_NAME;
				  m_valM : in  STD_LOGIC_VECTOR (63 downto 0);

				  W_icode : in  OPCODE;
				  W_rA : in  REGISTER_NAME;
				  W_valM : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  W_rB : in  REGISTER_NAME;
				  W_Cnd : in  STD_LOGIC;
				  W_valE : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  d_rvalA : in  STD_LOGIC_VECTOR (63 downto 0);
				  d_valA : out  STD_LOGIC_VECTOR (63 downto 0);
				  
				  d_rvalB : in  STD_LOGIC_VECTOR (63 downto 0);
				  d_valB : out  STD_LOGIC_VECTOR (63 downto 0);
			  
				  A_src : out VAL_SRC;
				  B_src : out VAL_SRC);
	end COMPONENT;
				 
				 signal A_src, B_src : VAL_SRC; --²âÊÔÓÃÐÅºÅ

	COMPONENT E_Register
		 Port ( E_bubble : in STD_LOGIC;
				  icode : in  OPCODE;
				  ifun : in  OPFUN;
				  rA : in  REGISTER_NAME;
				  rB : in  REGISTER_NAME;
				  valC : in  STD_LOGIC_VECTOR (63 downto 0);
				  valP : in  STD_LOGIC_VECTOR (63 downto 0);
				  valA : in  STD_LOGIC_VECTOR (63 downto 0);
				  valB : in  STD_LOGIC_VECTOR (63 downto 0);
				  
				  E_icode : out  OPCODE;
				  E_ifun : out OPFUN;
				  E_rA : out  REGISTER_NAME;
				  E_rB : out  REGISTER_NAME;
				  E_valC : out  STD_LOGIC_VECTOR (63 downto 0);
				  E_valP : out  STD_LOGIC_VECTOR (63 downto 0);
				  E_valA : out  STD_LOGIC_VECTOR (63 downto 0);
				  E_valB : out  STD_LOGIC_VECTOR (63 downto 0);
				  
				  clk : in  STD_LOGIC);
	end COMPONENT;

	
	COMPONENT ALU
		 Port(E_icode : in OPCODE;
				E_ifun : in OPFUN;
				E_valA : in STD_LOGIC_VECTOR (63 downto 0);
				E_valB : in STD_LOGIC_VECTOR (63 downto 0);
				E_valC : in STD_LOGIC_VECTOR (63 downto 0);
				
				e_valE : out STD_LOGIC_VECTOR (63 downto 0);
				e_Cnd : out STD_LOGIC
				);
	end COMPONENT;

	COMPONENT M_Register
		 Port ( clk : in  STD_LOGIC;
		 
				  icode : in OPCODE;
				  rA : in  REGISTER_NAME;
				  rB : in  REGISTER_NAME;
				  valP : in  STD_LOGIC_VECTOR (63 downto 0);
				  valA : in  STD_LOGIC_VECTOR (63 downto 0);
				  valE : in  STD_LOGIC_VECTOR (63 downto 0);
				  Cnd : in  STD_LOGIC;
				  
				  M_icode : out  OPCODE;
				  M_rA : out  REGISTER_NAME;
				  M_rB : out  REGISTER_NAME;
				  M_valP : out  STD_LOGIC_VECTOR (63 downto 0);
				  M_valA : out  STD_LOGIC_VECTOR (63 downto 0);
				  M_valE : out  STD_LOGIC_VECTOR (63 downto 0);
				  M_Cnd : out  STD_LOGIC);
	end COMPONENT;

	COMPONENT DATA_MEMORY 
		 Port ( M_icode : OPCODE;
				M_valP : in  STD_LOGIC_VECTOR (63 downto 0);
				M_valA : in  STD_LOGIC_VECTOR (63 downto 0);
				M_valE : in  STD_LOGIC_VECTOR (63 downto 0);
				
				m_valM : out  STD_LOGIC_VECTOR (63 downto 0)
				);
	end COMPONENT;

	COMPONENT W_Register
    Port ( clk : in  STD_LOGIC;
	 
           icode : in  OPCODE;
           rA : in  REGISTER_NAME;
           rB : in  REGISTER_NAME;
           valE : in  STD_LOGIC_VECTOR (63 downto 0);
           Cnd : in  STD_LOGIC;
           valM : in  STD_LOGIC_VECTOR (63 downto 0);
			  
           W_icode : out  OPCODE;
           W_rA : out  REGISTER_NAME;
           W_rB : out  REGISTER_NAME;
           W_valE : out  STD_LOGIC_VECTOR (63 downto 0);
           W_Cnd : out  STD_LOGIC;
           W_valM : out  STD_LOGIC_VECTOR (63 downto 0)
			  );
	end COMPONENT;
	
	signal predict_PC : STD_LOGIC_VECTOR (63 downto 0);
	
	signal F_predPC : STD_LOGIC_VECTOR (63 downto 0);
	
	signal fetch_pc : STD_LOGIC_VECTOR (63 downto 0);
	
	signal fetch_icode : OPCODE;
	signal fetch_ifun : OPFUN;
	signal fetch_rA, fetch_rB : REGISTER_NAME;
	signal fetch_valC, fetch_valP : STD_LOGIC_VECTOR(63 downto 0);
	
	signal D_icode : OPCODE;
	signal D_ifun : OPFUN;
	signal D_rA, D_rB : REGISTER_NAME;
	signal D_valC, D_valP : STD_LOGIC_VECTOR(63 downto 0);
	
	signal decode_valA, decode_valB, decode_rvalA, decode_rvalB : STD_LOGIC_VECTOR(63 downto 0);
	
	signal E_icode : OPCODE;
	signal E_ifun : OPFUN;
	signal E_rA, E_rB : REGISTER_NAME;
	signal E_valC, E_valA, E_valB , E_valP: STD_LOGIC_VECTOR(63 downto 0);
	
	signal execute_valE : STD_LOGIC_VECTOR(63 downto 0);
	signal execute_Cnd : STD_LOGIC;
	
	signal M_icode : OPCODE;
	signal M_rA, M_rB : REGISTER_NAME;
	signal M_valP, M_valA, M_valE : STD_LOGIC_VECTOR(63 downto 0);
	signal M_Cnd : STD_LOGIC;
	
	signal memory_valM : STD_LOGIC_VECTOR(63 downto 0);
	
	signal W_icode : OPCODE;
	signal W_rA, W_rB : REGISTER_NAME;
	signal W_valE, W_valM : STD_LOGIC_VECTOR(63 downto 0);
	signal W_Cnd : STD_LOGIC;
	
	signal F_stall, D_bubble, D_stall, E_bubble : STD_LOGIC;
begin

StrCtl : Stream_Control port map(E_icode => E_icode, E_rA => E_rA, D_icode => D_icode, D_rA => D_rA, D_rB => D_rB, 
	M_icode => M_icode, e_Cnd => execute_Cnd, F_stall => F_stall, D_stall => D_stall, D_bubble => D_bubble, E_bubble => E_bubble);

rF : F_Register port map(clk => clk, rst => rst, F_stall => F_stall, Predict_PC => predict_PC, F_predPC => F_predPC);

U0 : Select_PC port map(predPC => F_predPC, M_icode => M_icode, M_Cnd => M_Cnd, M_valA => M_valA, 
	W_icode => W_icode, W_valM => W_valM, f_pc => fetch_pc);
	
U1 : INSTRUCTION_MEMORY port map(f_pc => fetch_pc, f_icode => fetch_icode, f_ifun => fetch_ifun,
	f_rA => fetch_rA, f_rB => fetch_rB, f_valC => fetch_valC, f_valP => fetch_valP, Predict_PC => predict_PC);
	
rD : D_Register port map(clk => clk, D_stall => D_stall, D_bubble => D_bubble, icode => fetch_icode, ifun => fetch_ifun, rA => fetch_rA, 
	rB => fetch_rB, valC => fetch_valC, valP => fetch_valP, D_icode => D_icode, D_ifun => D_ifun, D_rA => D_rA, D_rB=> D_rB,
	D_valC => D_valC, D_valP => D_valP);
	
U2 : Register_Group port map (D_icode => D_icode, D_rA => D_rA, D_rB => D_rB, D_valP => D_valP, d_valA => decode_rvalA, 
	d_valB => decode_rvalB, W_icode => W_icode, W_rA => W_rA, W_rB => W_rB, W_valM => W_valM, W_valE => W_valE, W_Cnd => W_Cnd); 

U3 : Forward port map (D_icode => D_icode, D_rA => D_rA, D_rB => D_rB, E_icode => E_icode, E_rB => E_rB, e_Cnd => execute_Cnd,
	e_valE => execute_valE, M_icode => M_icode, M_rB => M_rB, M_Cnd => M_Cnd, M_valE => M_valE, M_rA => M_rA, m_valM => memory_valM,
	W_icode => W_icode, W_rA => W_rA, W_valM => W_valM, W_rB => W_rB, W_Cnd => W_Cnd, W_valE => W_valE, d_rvalA => decode_rvalA,
	d_rvalB => decode_rvalB, d_valA => decode_valA, d_valB => decode_valB, A_src => A_src, B_src => B_src);

rE : E_Register port map (clk => clk, E_bubble => E_bubble, icode => D_icode, ifun => D_ifun, rA=> D_rA, rB => D_rB, valA => decode_valA,
	valB => decode_valB, valC => D_valC, valP => D_valP, E_icode => E_icode, E_ifun => E_ifun, E_rA => E_rA, E_rB => E_rB,
	E_valC => E_valC, E_valP => E_valP, E_valA => E_valA, E_valB => E_valB);
	
U4 : ALU port map (E_icode => E_icode, E_ifun => E_ifun, E_valA => E_valA, E_valB => E_valB, E_valC => E_valC, e_valE => execute_valE,
	e_Cnd => execute_Cnd);
	
rM : M_Register port map(clk => clk, icode => E_icode, rA => E_rA, rB => E_rB, valP => E_valP, valA => E_valA, valE => execute_valE,
	Cnd => execute_Cnd, M_icode => M_icode, M_rA => M_rA, M_rB => M_rB, M_valP => M_valP, M_valA => M_valA, M_valE => M_valE, M_Cnd => M_Cnd);
	
U5 : DATA_MEMORY port map (M_icode => M_icode, M_valP => M_valP, M_valA => M_valA, M_valE => M_valE, m_valM => memory_valM);

rW : W_Register port map (clk => clk, icode => M_icode, rA => M_rA, rB => M_rB, valE => M_valE, Cnd => M_Cnd, valM => memory_valM, W_icode => W_icode,
	W_rA => W_rA, W_rB => W_rB, W_valE => W_valE, W_Cnd => W_Cnd, W_valM => W_valM);
	
		
end Behavioral;

