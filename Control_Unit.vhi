
-- VHDL Instantiation Created from source file Control_Unit.vhd -- 21:59:36 05/28/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Control_Unit
	PORT(
		Op : IN std_logic_vector(5 downto 0);          
		RegDst : OUT std_logic;
		ALUSrc : OUT std_logic;
		MemtoReg : OUT std_logic;
		RegWrite : OUT std_logic;
		MemRead : OUT std_logic;
		MemWrite : OUT std_logic;
		Branch : OUT std_logic;
		ALUOp : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Control_Unit: Control_Unit PORT MAP(
		Op => ,
		RegDst => ,
		ALUSrc => ,
		MemtoReg => ,
		RegWrite => ,
		MemRead => ,
		MemWrite => ,
		Branch => ,
		ALUOp => 
	);


