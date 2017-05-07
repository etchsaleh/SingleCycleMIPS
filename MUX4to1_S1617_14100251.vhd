----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:57 04/30/2017 
-- Design Name: 
-- Module Name:    MUX4to1_S1617_14100251 - Behavioral 
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

entity MUX4to1_S1617_14100251 is
    Port ( X : in  STD_LOGIC_VECTOR (31 downto 0);
           Y : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : in  STD_LOGIC_VECTOR (31 downto 0);
           W : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
			  sel : in STD_LOGIC_VECTOR (1 downto 0));
end MUX4to1_S1617_14100251;

architecture Behavioral of MUX4to1_S1617_14100251 is

COMPONENT MUX2to1_S1617_14100251
	PORT(
		a : IN std_logic_vector(31 downto 0);
		b : IN std_logic_vector(31 downto 0);
		s : IN std_logic;          
		z : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal temp1:std_logic_vector(31 downto 0);
	signal temp2:std_logic_vector(31 downto 0);

begin

   MUX_1: MUX2to1_S1617_14100251 PORT MAP(
		a => x,
		b => y,
		s => sel(0),
		z => temp1
	);
	
	MUX_2: MUX2to1_S1617_14100251 PORT MAP(
		a => z,
		b => w,
		s => sel(0),
		z => temp2
	);
	
	MUX_3: MUX2to1_S1617_14100251 PORT MAP(
		a => temp1,
		b => temp2,
		s => sel(1),
		z => output
	);

end Behavioral;

