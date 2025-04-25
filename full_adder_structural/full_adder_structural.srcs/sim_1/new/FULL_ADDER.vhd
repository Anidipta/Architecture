----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2025 09:58:32
-- Design Name: 
-- Module Name: FULL_ADDER - STRUCTURAL
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
--  Port ( );
end FULL_ADDER;

architecture STRUCTURAL of FULL_ADDER is

component FULL_ADDER_STR is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;
signal A1:STD_LOGIC:='0';
signal B1:STD_LOGIC:='0';
signal C1:STD_LOGIC:='0';
signal S1:STD_LOGIC;
signal CY1:STD_LOGIC;


begin
uut: FULL_ADDER_STR Port Map(X=>A1,Y=>B1,Z=>C1,Sum=>S1,Carry=>CY1);
stim_proc:process
begin
A1<='0';
B1<='0';
C1<='0';
wait for 100ns;
A1<='0';
B1<='0';
C1<='1';
wait for 100ns;
A1<='0';
B1<='1';
C1<='0';
wait for 100ns;
A1<='0';
B1<='1';
C1<='1';
wait for 100ns;
A1<='1';
B1<='0';
C1<='0';
wait for 100ns;
A1<='1';
B1<='0';
C1<='1';
wait for 100ns;
A1<='1';
B1<='1';
C1<='0';
wait for 100ns;
A1<='1';
B1<='1';
C1<='1';
wait;
end process;

end STRUCTURAL;
