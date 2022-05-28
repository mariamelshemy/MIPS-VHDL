----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:06:53 05/23/2021 
-- Design Name: 
-- Module Name:    Instruction_Memory - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0));
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is
	type memoryfile is array ( 0 to 23) of STD_LOGIC_VECTOR (7 downto 0);
	signal memory : memoryfile :=(
	x"00", x"85", x"10", x"20",
	x"AC", x"02", x"00", x"08",
	x"8C", x"06", x"00", x"08",
	x"20", x"8C", x"00", x"01",
	x"00", x"46", x"88", x"2A",
	x"00", x"A4", x"88", x"22"
	);

begin
process(clk)
begin
if(rising_edge(clk))
then
	ReadData <= memory(to_integer(unsigned(Address)))&
					memory(to_integer(unsigned(Address))+1)&
					memory(to_integer(unsigned(Address))+2)&
					memory(to_integer(unsigned(Address))+3);
end if;
end process;
end Behavioral;

