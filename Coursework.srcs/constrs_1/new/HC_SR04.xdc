## This file is a general .xdc for the Arty A7-35 Rev. D
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports trig]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports echo]
## Buttons
## btn0
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports rst]
# btn1
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports go_btn]
# uart out
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports sig]

