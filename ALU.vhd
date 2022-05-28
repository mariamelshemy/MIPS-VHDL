----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:33 03/07/2021 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR(31 Downto 0);
           B : in  STD_LOGIC_VECTOR(31 Downto 0);
			  OP : in STD_LOGIC_VECTOR(3 Downto 0);
           Res : out  STD_LOGIC_VECTOR(31 Downto 0);
           Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
begin
process (A, B, OP)
begin
if  A = B then
Zero <= '1';
else Zero <= '0';
end if;
if OP = "0000" then Res <= A and B;
elsif OP = "0001" then Res <= A or B;
elsif OP = "0010" then Res <= A + B;
elsif OP = "0110" then Res <= A - B;
elsif OP = "0111" then
if (A < B) then Res <= "00000000000000000000000000000001";
else
Res <= "00000000000000000000000000000000";
end if;
elsif OP = "1100" then Res <= A nor B;
end if;
if A = B then Zero<= '1';
else Zero <= '0';
end if ;
end process;
end Behavioral;

