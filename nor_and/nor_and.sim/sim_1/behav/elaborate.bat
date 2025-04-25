@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto efae1e2382b44694a1914d6f27dc5171 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nor_and_gate_flow_behav xil_defaultlib.nor_and_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
