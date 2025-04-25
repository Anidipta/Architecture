----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2025 10:41:44
-- Design Name: 
-- Module Name: nor_gate_data - Behavioral
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

entity nor_gate_data is
--  Port ( );
end nor_gate_data;

architecture DATAFLOW of nor_gate_data is
component NOR_GATE is
    Port( A: in STD_LOGIC;
          B: in STD_LOGIC;
          C: out STD_LOGIC);
     end component;
    Signal A1:STD_LOGIC:='0';
    Signal B1:STD_LOGIC:='0';
    Signal C1:STD_LOGIC;
begin
UUT:NOR_GATE port map(A=>A1, B=>B1, C=>C1);
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
end DATAFLOW;

