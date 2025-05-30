----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.03.2025 09:49:14
-- Design Name: 
-- Module Name: not_gate_flow - Behavioral
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

entity not_gate_flow is
--  Port ( );
end not_gate_flow;

architecture Behavioral of not_gate_flow is
component NOT_GATE is
    Port( A: in STD_LOGIC;
          B: out STD_LOGIC);
     end component;
    Signal A1:STD_LOGIC:='0';
    Signal B1:STD_LOGIC;
begin
UUT:NOT_GATE port map(A=>A1, B=>B1);
Stim_proc:process
begin
wait for 100ns;
A1<='0';
wait for 100ns;
A1<='1';
wait;
end process;
end Behavioral;
