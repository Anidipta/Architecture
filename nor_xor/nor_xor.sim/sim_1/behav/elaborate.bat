@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 11055b6e1a8f47a8b2a75db44b00edbb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nor_xor_gate_flow_behav xil_defaultlib.nor_xor_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
