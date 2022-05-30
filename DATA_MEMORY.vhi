
-- VHDL Instantiation Created from source file DATA_MEMORY.vhd -- 15:19:27 04/23/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DATA_MEMORY
	PORT(
		M_icode : IN std_logic;
		M_valP : IN std_logic_vector(63 downto 0);
		M_valA : IN std_logic_vector(63 downto 0);
		M_valE : IN std_logic_vector(63 downto 0);          
		m_valM : OUT std_logic_vector(63 downto 0)
		);
	END COMPONENT;

	Inst_DATA_MEMORY: DATA_MEMORY PORT MAP(
		M_icode => ,
		M_valP => ,
		M_valA => ,
		M_valE => ,
		m_valM => 
	);


