----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:50 03/28/2021 
-- Design Name: 
-- Module Name:    Control_Unit - Behavioral 
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

entity Control_Unit is
    Port ( Op : in  STD_LOGIC_VECTOR(5 Downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
--			  Jump : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_VECTOR(1 Downto 0));
			  
end Control_Unit;

architecture Behavioral of Control_Unit is

begin
process(Op)
begin
if Op ="000000" then
RegDst <= '1';
--Jump  <='0';
ALUSrc <= '0';
MemtoReg <='0';
RegWrite <= '1';
MemRead <= '0';
MemWrite <= '0';
Branch <= '0';
ALUOp <= "10";
elsif
Op ="100011" then
RegDst <= '0';
--Jump  <='0';
ALUSrc <= '1';
MemtoReg <= '1';
RegWrite <= '1';
MemRead <= '1';
MemWrite <= '0';
Branch <= '0';
ALUOp <= "00";
elsif
Op ="101011" then
ALUSrc <= '1';
--Jump  <='0';
RegWrite <= '0';
MemRead <= '0';
MemWrite <= '1';
Branch <= '0';
ALUOp <= "00";
--elsif OP ="000010" then RegDst <='X';
--                     Jump  <='1';
--                     Branch <='0';
--                     MemRead <='0';
--                     MemToReg <='X';
--                     ALUOp <= "00";
--                     MemWrite <= '0';
--                     ALUsrc <='0'; 
--                     RegWrite <='0';
elsif
Op ="000100" then
ALUSrc <= '0';
RegWrite <= '0';
--Jump  <='0';
MemRead <= '0';
MemWrite <= '0';
Branch <= '1';
ALUOp <= "01";
end if;
end process;
end Behavioral;

