@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto e1327cf3315843008119c524ecce4cc3 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot half_adder_str_behav xil_defaultlib.half_adder_str -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
