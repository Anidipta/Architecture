----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2025 10:56:09
-- Design Name: 
-- Module Name: FULL_ADDER - Behavioral
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

entity FULL_ADDER is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is
begin
process(A,B,C)
begin
if(A='0')then
    if(B=C)then
        S<='0';
    else
        S<='1';
    end if;
else
     if(B=C)then
       S<='1';
     else
       S<='0';
     end if;
end if;
if(A='0')then
    if(B='1' and C='1')then
        Cout<='1';
    else
        Cout<='0';
    end if;
else
     if(B='0' and C='0')then
       Cout<='0';
   else
       Cout<='1';
   end if;
end if;
end process;
end Behavioral;
