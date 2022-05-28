
-- VHDL Instantiation Created from source file ALU.vhd -- 21:54:22 05/28/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		OP : IN std_logic_vector(3 downto 0);          
		Res : OUT std_logic_vector(31 downto 0);
		Zero : OUT std_logic
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		A => ,
		B => ,
		OP => ,
		Res => ,
		Zero => 
	);


