@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto a95f7333c22f420ca59dd2f9d247e5af -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot half_adder_gate_flow_behav xil_defaultlib.half_adder_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
