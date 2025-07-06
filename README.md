# Project
This project is a learning exercise to further strengthen my skills using CI/CD and some UVM

## Simple Calculator with Custom ALU Logic

Run with iverilog
- //Set src file, testbench file and output file
- $ iverilog -o dff_test alu/alu.v alu/alu_tb.sv
- //Read from results output file to print results in terminal
- $ vvp dff_test
