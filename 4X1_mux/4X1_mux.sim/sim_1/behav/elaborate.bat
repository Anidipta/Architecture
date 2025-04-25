@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto d0d0f6d28e6248ad91bc59c9b7664f5e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot mux_gate_flow_behav xil_defaultlib.mux_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
