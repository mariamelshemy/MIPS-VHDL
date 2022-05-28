
-- VHDL Instantiation Created from source file DataMemoryUnit.vhd -- 22:01:44 05/28/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DataMemoryUnit
	PORT(
		Adress : IN std_logic_vector(31 downto 0);
		WriteData : IN std_logic_vector(31 downto 0);
		MemRead : IN std_logic;
		MemWrite : IN std_logic;
		clk : IN std_logic;          
		ReadData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_DataMemoryUnit: DataMemoryUnit PORT MAP(
		Adress => ,
		WriteData => ,
		MemRead => ,
		MemWrite => ,
		ReadData => ,
		clk => 
	);


