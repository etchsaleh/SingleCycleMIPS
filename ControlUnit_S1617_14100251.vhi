
-- VHDL Instantiation Created from source file ControlUnit_S1617_14100251.vhd -- 20:32:11 05/05/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ControlUnit_S1617_14100251
	PORT(
		OP : IN std_logic_vector(5 downto 0);          
		RegDst : OUT std_logic;
		ALUSrc : OUT std_logic;
		MemToReg : OUT std_logic;
		RegWrite : OUT std_logic;
		MemRead : OUT std_logic;
		MemWrite : OUT std_logic;
		Branch : OUT std_logic;
		ALUop : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_ControlUnit_S1617_14100251: ControlUnit_S1617_14100251 PORT MAP(
		OP => ,
		RegDst => ,
		ALUSrc => ,
		MemToReg => ,
		RegWrite => ,
		MemRead => ,
		MemWrite => ,
		Branch => ,
		ALUop => 
	);


