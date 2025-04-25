----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2025 10:41:12
-- Design Name: 
-- Module Name: DECODE - Behavioral
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

entity DECODE is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end DECODE;

architecture Behavioral of DECODE is
begin
process(I)
begin
O<="00000000";
case I is
when "000"=> O(0) <='1';
when "001"=> O(1) <='1';
when "010"=> O(2) <='1';
when "011"=> O(3) <='1';
when "100"=> O(4) <='1';
when "101"=>O(5)<='1';
when "110"=>O(6)<='1';
when "111"=>O(7)<='1';
when others=>NULL;
end case;
end process;
end Behavioral;
