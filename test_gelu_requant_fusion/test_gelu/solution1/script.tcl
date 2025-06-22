############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test_gelu
set_top gelu_top
add_files common.h
add_files gelu.h
add_files gelu_top.cpp
add_files utils.h
add_files -tb test_gelu.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5ev-sfvc784-1-e}
create_clock -period 10 -name default
#source "./test_gelu/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
