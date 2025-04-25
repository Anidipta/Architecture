----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.04.2025 10:13:16
-- Design Name: 
-- Module Name: mux_gate_flow - DATAFLOW
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

architecture DATAFLOW of mux_gate_flow is

component MUX is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC);
end component;

signal I1: STD_LOGIC_VECTOR(3 downto 0):="0010";
signal S1: STD_LOGIC_VECTOR(1 downto 0):="00";
signal O1: STD_LOGIC;
begin
uut: MUX port map(I=>I1,S=>S1,O=>O1);
stim_proc: process
begin
wait for 100ns;
S1<="01";
wait for 100ns;
S1<="10";
wait for 100ns;
S1<="11";
end process;
end DATAFLOW;
