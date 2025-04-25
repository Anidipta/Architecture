@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto de813dc9d5134263b69edcbfde5e7fd9 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot full_adder_gate_flow_behav xil_defaultlib.full_adder_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
