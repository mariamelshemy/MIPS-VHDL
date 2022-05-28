----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:19 04/21/2021 
-- Design Name: 
-- Module Name:    DataMemoryUnit - Behavioral 
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

entity DataMemoryUnit is
    Port ( Adress : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           MemRead : in  STD_LOGIC;
           MemWrite : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end DataMemoryUnit;

architecture Behavioral of DataMemoryUnit is
type memoryfile is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);
signal memory : memoryfile :=(
   x"AB", x"CD", x"EF", x"00",
	x"75", x"74", x"65", x"72",
	x"20", x"41", x"72", x"63",
	x"68", x"69", x"74", x"65",
	x"12", x"34", x"56", x"78",
	x"7F", x"7F", x"6D", x"6D",
	x"00", x"00", x"00", x"00",
	x"78", x"78", x"6A", x"6A",
	x"00", x"00", x"00", x"01"
	);

begin
process(MemRead, MemWrite, clk)
begin
if rising_edge(clk) and MemRead = '1' and MemWrite = '0' then
ReadData <= memory(to_integer(unsigned(Adress)))&
            memory(to_integer(unsigned(Adress))+1)&
            memory(to_integer(unsigned(Adress))+2)&
            memory(to_integer(unsigned(Adress))+3);
elsif rising_edge(clk) and MemRead = '0' and MemWrite = '1'	then
    memory(to_integer(unsigned(Adress))) <= WriteData(31 downto 24);
    memory(to_integer(unsigned(Adress))) <= WriteData(23 downto 16);
    memory(to_integer(unsigned(Adress))) <= WriteData(15 downto 8);
    memory(to_integer(unsigned(Adress))) <= WriteData(7 downto 0);			
  end if;
 end process;
end Behavioral;

