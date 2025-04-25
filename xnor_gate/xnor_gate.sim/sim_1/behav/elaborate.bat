@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 4bf0a7dd36b24bb59a9604d0a41930da -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot xnor_gate_flow_behav xil_defaultlib.xnor_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
