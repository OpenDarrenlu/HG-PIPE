############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project test_requant
set_top quant_top
add_files common.h
add_files quant_top.cpp
add_files requant.h
add_files utils.h
add_files -tb test_requant.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5ev-sfvc784-1-e}
create_clock -period 10 -name default
source "./test_requant/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
