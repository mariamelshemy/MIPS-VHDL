----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:08 03/14/2021 
-- Design Name: 
-- Module Name:    ALU_Control - Behavioral 
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

entity ALU_Control is
    Port ( ALU_OP : in  STD_LOGIC_VECTOR(1 Downto 0);
           Fun : in  STD_LOGIC_VECTOR(5 Downto 0);
           ALU_Operation : out  STD_LOGIC_VECTOR(3 Downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is
begin
process(ALU_OP, Fun)
begin
if ALU_OP = "00" then
ALU_Operation <= "0010";
elsif ALU_OP = "01" then
ALU_Operation <= "0110";
elsif ALU_OP = "10" then
if Fun(3 Downto 0) = "0000" then
ALU_Operation <= "0010";
elsif Fun(3 Downto 0) = "0010" then
ALU_Operation <= "0110";
elsif Fun(3 Downto 0) = "0100" then
ALU_Operation <= "0000";
elsif Fun(3 Downto 0) = "0101" then
ALU_Operation <= "0001";
elsif Fun(3 Downto 0) = "1010" then
ALU_Operation <= "0111";
end if;
end if;
end process;
end Behavioral;

