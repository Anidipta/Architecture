@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto e4d2d483e34246f3985af48d188c4399 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot or_gate_flow_behav xil_defaultlib.or_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
