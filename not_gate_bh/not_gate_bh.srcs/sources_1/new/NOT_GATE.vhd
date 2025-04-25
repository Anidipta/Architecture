----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2025 09:46:32
-- Design Name: 
-- Module Name: NOT_GATE - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NOT_GATE is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is
begin
process(A)
begin
if(A ='0') then
    B<='1';
   else
    B<='0';
 end if;
 end process;
end Behavioral;
