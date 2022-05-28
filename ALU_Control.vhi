
-- VHDL Instantiation Created from source file ALU_Control.vhd -- 21:52:44 05/28/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU_Control
	PORT(
		ALU_OP : IN std_logic_vector(1 downto 0);
		Fun : IN std_logic_vector(5 downto 0);          
		ALU_Operation : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_ALU_Control: ALU_Control PORT MAP(
		ALU_OP => ,
		Fun => ,
		ALU_Operation => 
	);


