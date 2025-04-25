----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2025 09:54:30
-- Design Name: 
-- Module Name: mux_gate_flow - Behavioral
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

entity mux_gate_flow is
--  Port ( );
end mux_gate_flow;

architecture Behavioral of mux_gate_flow is
component MUX is
    Port( I0: in STD_LOGIC;
          I1: in STD_LOGIC;
          S: in STD_LOGIC;
          O: out STD_LOGIC);
     end component;
    Signal I01:STD_LOGIC:='0';
    Signal I11:STD_LOGIC:='1';
    Signal S1:STD_LOGIC:='0';
    Signal O1:STD_LOGIC;
begin
UUT: MUX port map(I0=>I01,I1=>I11,S=>S1,O=>O1);
stim_proc: process
begin	
wait for 100ns;
S1<='1';
wait;
end process;
end Behavioral;
