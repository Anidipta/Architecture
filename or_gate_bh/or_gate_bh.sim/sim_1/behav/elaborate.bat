@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 382e879b91c341c6ae04deb1f6698d25 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot or_gate_flow_behav xil_defaultlib.or_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
