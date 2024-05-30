############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project Temp
set_top axi_encrypt
add_files source/aead.c
add_files source/api.h
add_files source/ascon.h
add_files source/constants.h
add_files source/crypto_aead.h
add_files source/permutations.h
add_files source/printstate.c
add_files source/printstate.h
add_files source/round.h
add_files source/temp.c
add_files source/temp.h
add_files source/word.h
add_files -tb source/tb_temp.c
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/lguer/AppData/Roaming/Xilinx/Vitis/AsconOptimizedHLS/EsperimentiVitisHLS -rtl verilog
#source "./Temp/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Users/lguer/AppData/Roaming/Xilinx/Vitis/AsconOptimizedHLS/EsperimentiVitisHLS
