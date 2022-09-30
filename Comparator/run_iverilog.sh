iverilog -o ./Outputs/my_design test_com.v Comparator.v
cd Outputs
vvp my_design
gtkwave test.vcd
