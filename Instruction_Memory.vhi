
-- VHDL Instantiation Created from source file Instruction_Memory.vhd -- 22:02:21 05/28/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Instruction_Memory
	PORT(
		Address : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;          
		ReadData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Instruction_Memory: Instruction_Memory PORT MAP(
		Address => ,
		clk => ,
		ReadData => 
	);


