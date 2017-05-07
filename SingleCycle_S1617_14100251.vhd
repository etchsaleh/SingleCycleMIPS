----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:55 05/05/2017 
-- Design Name: 
-- Module Name:    SingleCycle_S1617_14100251 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SingleCycle_S1617_14100251 is
    Port ( CLKmain : in  STD_LOGIC);
end SingleCycle_S1617_14100251;

architecture Behavioral of SingleCycle_S1617_14100251 is

COMPONENT ALUControl_S1617_14100251
	PORT(
		Func : IN std_logic_vector(5 downto 0);
		ALUop : IN std_logic_vector(1 downto 0);          
		ALUcon : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT ALU_S1617_14100251
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		ALUControl : IN std_logic_vector(3 downto 0);          
		Output : OUT std_logic_vector(31 downto 0);
		Zero : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT Adder_S1617_14100251
	PORT(
		a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);          
		c : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
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
	
COMPONENT DataMemory_S1617_14100251
	PORT(
		memread : IN std_logic;
		memwrite : IN std_logic;
		Wdata : IN std_logic_vector(31 downto 0);
		address : IN std_logic_vector(31 downto 0);          
		Rdata : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT InstructionMemory_S1617_14100251
	PORT(
		PC : IN std_logic_vector(31 downto 0);          
		instruct : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT MUX2to1_S1617_14100251
	PORT(
		a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);
		sel : IN std_logic;          
		output : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT MUXRegDst_S1617_14100251
	PORT(
		a : IN std_logic_vector(4 downto 0);
		b : IN std_logic_vector(4 downto 0);
		sel : IN std_logic;          
		output : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
COMPONENT PC_S1617_14100251
	PORT(
		CLK : IN std_logic;
		PCin : IN std_logic_vector(31 downto 0);          
		PCout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT RegisterFile_S1617_14100251
	PORT(
		rs : IN std_logic_vector(4 downto 0);
		rt : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		WriteData : IN std_logic_vector(31 downto 0);
		RegWrite : IN std_logic;          
		ReadData1 : OUT std_logic_vector(31 downto 0);
		ReadData2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT ShiftLeft2_S1617_14100251
	PORT(
		a : IN std_logic_vector(31 downto 0);          
		b : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT SignExtend_S1617_14100251
	PORT(
		a : IN std_logic_vector(15 downto 0);          
		b : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal ALUinput1: std_logic_vector(31 downto 0);
	signal ALUinput2: std_logic_vector(31 downto 0);
	signal ALUoutput: std_logic_vector(31 downto 0);
	signal ALUzeroFlag: std_logic;
	signal ALUselect: std_logic_vector(3 downto 0);
	
	signal PCoutput: std_logic_vector(31 downto 0);
	signal PCinput: std_logic_vector (31 downto 0);
	signal AdderOut: std_logic_vector (31 downto 0);
	
	signal inputInstruction: std_logic_vector (31 downto 0);
	signal readData2: std_logic_vector (31 downto 0);
	signal dataMemoryOut: std_logic_vector (31 downto 0);
	signal writeDataIn: std_logic_vector (31 downto 0);
	signal MUXregDstOut:std_logic_vector (4 downto 0);
	
	signal regDstControlSig: std_logic;
	signal branchControlSig: std_logic;
	signal memReadControlSig: std_logic;
	signal memToRegControlSig: std_logic;
	signal ALUopControl: std_logic_vector (1 downto 0);
	signal memWriteControlSig: std_logic;
	signal ALUSrcControlSig: std_logic;
	signal RegWriteControlSig: std_logic;
	
	signal signExtend: std_logic_vector (31 downto 0);
	signal shiftLeft2: std_logic_vector (31 downto 0);
	
	signal ALUoutputToPCMUX: std_logic_vector (31 downto 0);
	signal PCMUXcontrol: std_logic;
	
begin

	Inst_PC_S1617_14100251: PC_S1617_14100251 PORT MAP(
		CLK => CLKmain,
		PCin => PCinput,
		PCout => PCoutput 
	);
	
	Inst_Adder1_S1617_14100251: Adder_S1617_14100251 PORT MAP(
		a => PCoutput,
		b => "00000000000000000000000000000100",
		c => AdderOut
	);
	
	Inst_InstructionMemory_S1617_14100251: InstructionMemory_S1617_14100251 PORT MAP(
		PC => PCoutput,
		instruct => inputInstruction
	);
	
	Inst_ControlUnit_S1617_14100251: ControlUnit_S1617_14100251 PORT MAP(
		OP => inputInstruction (31 downto 26),
		RegDst => regDstControlSig,
		ALUSrc => ALUSrcControlSig,
		MemToReg => memToRegControlSig,
		RegWrite => RegWriteControlSig,
		MemRead => memReadControlSig,
		MemWrite => memWriteControlSig,
		Branch => branchControlSig,
		ALUop => ALUopControl
	);
	
	Inst_MUXRegDst_S1617_14100251: MUXRegDst_S1617_14100251 PORT MAP(
		a => inputInstruction (20 downto 16),
		b => inputInstruction (15 downto 11),
		sel => regDstControlSig,
		output => MUXregDstOut 
	);
	
	Inst_RegisterFile_S1617_14100251: RegisterFile_S1617_14100251 PORT MAP(
		ReadData1 => ALUinput1,
		ReadData2 => readData2,
		rs => inputInstruction (25 downto 21),
		rt => inputInstruction (20 downto 16),
		rd => MUXregDstOut,
		WriteData => writeDataIn,
		RegWrite => RegWriteControlSig
	);
	
	Inst_SignExtend_S1617_14100251: SignExtend_S1617_14100251 PORT MAP(
		a => inputInstruction (15 downto 0),
		b => signExtend
	);
	
	Inst_ShiftLeft2_S1617_14100251: ShiftLeft2_S1617_14100251 PORT MAP(
		a => signExtend,
		b => shiftLeft2
	);
	
	Inst_Adder2_S1617_14100251: Adder_S1617_14100251 PORT MAP(
		a => AdderOut,
		b => shiftLeft2,
		c => ALUoutputToPCMUX
	);

	Inst_ALUControl_S1617_14100251: ALUControl_S1617_14100251 PORT MAP(
		Func => inputInstruction (5 downto 0),
		ALUop => ALUopControl,
		ALUcon => ALUselect
	);
	
	ALUMUX_S1617_14100251: MUX2to1_S1617_14100251 PORT MAP(
		a => readData2,
		b => signExtend,
		sel => ALUSrcControlSig,
		output => ALUinput2 
	);
	
	Inst_ALU_S1617_14100251: ALU_S1617_14100251 PORT MAP(
		A => ALUinput1,
		B => ALUinput2,
		ALUControl => ALUselect,
		Output => ALUoutput,
		Zero => ALUzeroFlag
	);
	
	PCMUXcontrol <= (branchControlSig AND ALUzeroFlag);
	
	PCMUX_S1617_14100251: MUX2to1_S1617_14100251 PORT MAP(
		a => AdderOut,
		b => ALUoutputToPCMUX,
		sel => PCMUXcontrol,
		output => PCinput
	);
	
	Inst_DataMemory_S1617_14100251: DataMemory_S1617_14100251 PORT MAP(
		memread => memReadControlSig,
		memwrite => memWriteControlSig,
		Wdata => readData2,
		address => ALUoutput,
		Rdata => dataMemoryOut
	);
	
	MemoryMUX_S1617_14100251: MUX2to1_S1617_14100251 PORT MAP(
		a => ALUoutput,
		b => dataMemoryOut,
		sel => memToRegControlSig,
		output => writeDataIn
	);

end Behavioral;

