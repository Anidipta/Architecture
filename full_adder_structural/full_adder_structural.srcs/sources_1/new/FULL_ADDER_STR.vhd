----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2025 09:27:34
-- Design Name: 
-- Module Name: FULL_ADDER_STR - STRUCTURAL
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

entity FULL_ADDER_STR is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end FULL_ADDER_STR;

architecture STRUCTURAL of FULL_ADDER_STR is
component HALF_ADDER is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end component;
component OR_GATE is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component;

signal S1:STD_LOGIC;
signal C1:STD_LOGIC;
signal C2:STD_LOGIC;

begin
L1: HALF_ADDER port map(X,Y,S1,C1);
L2: HALF_ADDER port map(S1,Z,Sum,C2);
L3: OR_GATE port map(C1,C2,Carry);

end STRUCTURAL;
