----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2025 10:47:00
-- Design Name: 
-- Module Name: full_adder_gate_flow - DATAFLOW
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

entity full_adder_gate_flow is
--  Port ( );
end full_adder_gate_flow;

architecture DATAFLOW of full_adder_gate_flow is
component FULL_ADDER is
    Port( A: in STD_LOGIC;
          B: in STD_LOGIC;
          C: in STD_LOGIC;
          S: out STD_LOGIC;
          Cout: out STD_LOGIC);
     end component;
    Signal A1:STD_LOGIC:='0';
    Signal B1:STD_LOGIC:='0';
    Signal C1:STD_LOGIC:='0';
    Signal S1:STD_LOGIC;
    Signal Cout1:STD_LOGIC;
begin
UUT:FULL_ADDER port map(A=>A1, B=>B1, C=>C1, S=>S1, Cout=>Cout1);
Stim_proc:process
begin
wait for 100ns;
C1<='0';A1<='0';B1<='0';
wait for 100ns;
C1<='0';A1<='0';B1<='1';
wait for 100ns;
C1<='0';A1<='1';B1<='0';
wait for 100ns;
C1<='0';A1<='1';B1<='1';
wait for 100ns;
C1<='1';A1<='0';B1<='0';
wait for 100ns;
C1<='1';A1<='0';B1<='1';
wait for 100ns;
C1<='1';A1<='1';B1<='0';
wait for 100ns;
C1<='1';A1<='1';B1<='1';
wait;
end process;
end DATAFLOW;

