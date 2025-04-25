----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2025 10:26:56
-- Design Name: 
-- Module Name: half_adder_str - STRUCTURAL
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

entity half_adder_str is
--  Port ( );
end half_adder_str;

architecture STRUCTURAL of half_adder_str is

component HALF_ADDER_STR is
    Port( A: in STD_LOGIC;
          B: in STD_LOGIC;
          S: out STD_LOGIC;
          C: out STD_LOGIC);
end component;
Signal A1:STD_LOGIC:='0';
Signal B1:STD_LOGIC:='0';
Signal S1:STD_LOGIC;
Signal C1:STD_LOGIC;

begin
uut: HALF_ADDER_STR Port Map(A=>A1,B=>B1,S=>S1,C=>C1);
Stim_proc:process
begin
wait for 100ns;
A1<='0';B1<='0';
wait for 100ns;
A1<='0';B1<='1';
wait for 100ns;
A1<='1';B1<='0';
wait for 100ns;
A1<='1';B1<='1';
wait;
end process;
end STRUCTURAL;