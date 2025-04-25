@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xsim half_adder_gate_flow_behav -key {Behavioral:sim_1:Functional:half_adder_gate_flow} -tclbatch half_adder_gate_flow.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
