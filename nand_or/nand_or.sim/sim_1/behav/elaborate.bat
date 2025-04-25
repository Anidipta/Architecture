@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 6fec7636d1cb443394156a5618c9579f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nand_or_gate_flow_behav xil_defaultlib.nand_or_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
