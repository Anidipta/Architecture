@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 4559ea0ff0a64ffc92be68e84c8ac6f6 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nand_not_gate_flow_behav xil_defaultlib.nand_not_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
