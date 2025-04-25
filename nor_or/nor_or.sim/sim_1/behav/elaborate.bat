@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 26861417f1084332a3d8ba0bb258b8f8 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot nor_or_gate_flow_behav xil_defaultlib.nor_or_gate_flow -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
