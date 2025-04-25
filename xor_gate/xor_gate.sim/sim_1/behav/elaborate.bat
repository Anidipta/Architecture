@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 800d482912f74f72adddf99a6fcabd9d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot xor_gate_flow_behav xil_defaultlib.xor_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
