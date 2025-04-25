----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2025 10:49:05
-- Design Name: 
-- Module Name: decode_gate_flow - Behavioral
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

entity decode_gate_flow is
--  Port ( );
end decode_gate_flow;

architecture Behavioral of decode_gate_flow is


component DECODE is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal I1: STD_LOGIC_VECTOR(2 downto 0):="000";
signal O1: STD_LOGIC_VECTOR(7 downto 0):="00000000";
begin
uut: DECODE port map(I=>I1,O=>O1);
stim_proc: process
begin 
wait for 100ns;
I1<="001";
wait for 100ns;
I1<="010";
wait for 100ns;
I1<="011";
wait for 100ns;
I1<="100";
wait for 100ns;
I1<="101";
wait for 100ns;
I1<="110";
wait for 100ns;
I1<="111";
end process;
end Behavioral;
