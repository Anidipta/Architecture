@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 7b37b0f6c3d143ba835825f0dabcda9f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot FULL_ADDER_behav xil_defaultlib.FULL_ADDER -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
