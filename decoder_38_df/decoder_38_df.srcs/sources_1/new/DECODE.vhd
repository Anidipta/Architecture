----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2025 10:59:00
-- Design Name: 
-- Module Name: DECODE - DATAFLOW
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

architecture DATAFLOW of DECODE is

begin
O(0)<= '1' WHEN I="000" ELSE '0';
O(1)<= '1' WHEN I="001" ELSE '0';
O(2)<= '1' WHEN I="010" ELSE '0';
O(3)<= '1' WHEN I="011" ELSE '0';
O(4)<= '1' WHEN I="100" ELSE '0';
O(5)<= '1' WHEN I="101" ELSE '0';
O(6)<= '1' WHEN I="110" ELSE '0';
O(7)<= '1' WHEN I="111" ELSE '0';

end DATAFLOW;
