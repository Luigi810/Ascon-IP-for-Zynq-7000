############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project EsperimentiVitisHLS
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
add_files EsperimentiVitisHLS/source/temp.c
add_files EsperimentiVitisHLS/source/temp.h
add_files source/word.h
add_files -tb EsperimentiVitisHLS/source/tb_temp.c -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
config_export -format sysgen -output C:/Path/to/Workspace/EsperimentiVitisHLS -rtl verilog
#source "./EsperimentiVitisHLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format sysgen -output C:/Path/to/Workspace/EsperimentiVitisHLS
