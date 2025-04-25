@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 2c621ef1ab02470e8dc2539427ae90c4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nand_and_gate_flow_behav xil_defaultlib.nand_and_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
