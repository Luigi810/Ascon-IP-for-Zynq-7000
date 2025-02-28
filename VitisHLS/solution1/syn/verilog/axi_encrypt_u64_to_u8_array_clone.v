// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module axi_encrypt_u64_to_u8_array_clone (
        ap_ready,
        a,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15,
        idx,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15
);


output   ap_ready;
input  [63:0] a;
input  [7:0] p_read;
input  [7:0] p_read1;
input  [7:0] p_read2;
input  [7:0] p_read3;
input  [7:0] p_read4;
input  [7:0] p_read5;
input  [7:0] p_read6;
input  [7:0] p_read7;
input  [7:0] p_read8;
input  [7:0] p_read9;
input  [7:0] p_read10;
input  [7:0] p_read11;
input  [7:0] p_read12;
input  [7:0] p_read13;
input  [7:0] p_read14;
input  [7:0] p_read15;
input  [3:0] idx;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;
output  [7:0] ap_return_9;
output  [7:0] ap_return_10;
output  [7:0] ap_return_11;
output  [7:0] ap_return_12;
output  [7:0] ap_return_13;
output  [7:0] ap_return_14;
output  [7:0] ap_return_15;

wire   [7:0] b_write_assign_fu_284_p4;
wire   [7:0] b_write_assign_fu_284_p19;
wire   [7:0] trunc_ln13_fu_210_p1;
wire   [7:0] b_write_assign_s_fu_328_p19;
wire   [7:0] b_write_assign_14_fu_372_p2;
wire   [7:0] b_write_assign_1_fu_416_p4;
wire   [7:0] b_write_assign_1_fu_416_p6;
wire   [7:0] b_write_assign_1_fu_416_p19;
wire   [7:0] b_write_assign_13_fu_460_p2;
wire   [7:0] b_write_assign_13_fu_460_p18;
wire   [7:0] b_write_assign_12_fu_504_p2;
wire   [7:0] b_write_assign_12_fu_504_p16;
wire   [7:0] b_write_assign_12_fu_504_p18;
wire   [7:0] b_write_assign_2_fu_548_p4;
wire   [7:0] b_write_assign_2_fu_548_p6;
wire   [7:0] b_write_assign_2_fu_548_p8;
wire   [7:0] b_write_assign_2_fu_548_p19;
wire   [7:0] b_write_assign_11_fu_592_p2;
wire   [7:0] b_write_assign_11_fu_592_p14;
wire   [7:0] b_write_assign_11_fu_592_p16;
wire   [7:0] b_write_assign_11_fu_592_p18;
wire   [7:0] b_write_assign_10_fu_636_p2;
wire   [7:0] b_write_assign_10_fu_636_p12;
wire   [7:0] b_write_assign_10_fu_636_p14;
wire   [7:0] b_write_assign_10_fu_636_p16;
wire   [7:0] b_write_assign_10_fu_636_p18;
wire   [7:0] b_write_assign_3_fu_680_p4;
wire   [7:0] b_write_assign_3_fu_680_p6;
wire   [7:0] b_write_assign_3_fu_680_p8;
wire   [7:0] b_write_assign_3_fu_680_p10;
wire   [7:0] b_write_assign_3_fu_680_p19;
wire   [7:0] b_write_assign_9_fu_724_p2;
wire   [7:0] b_write_assign_9_fu_724_p10;
wire   [7:0] b_write_assign_9_fu_724_p12;
wire   [7:0] b_write_assign_9_fu_724_p14;
wire   [7:0] b_write_assign_9_fu_724_p16;
wire   [7:0] b_write_assign_9_fu_724_p18;
wire   [7:0] b_write_assign_8_fu_768_p2;
wire   [7:0] b_write_assign_8_fu_768_p8;
wire   [7:0] b_write_assign_8_fu_768_p10;
wire   [7:0] b_write_assign_8_fu_768_p12;
wire   [7:0] b_write_assign_8_fu_768_p14;
wire   [7:0] b_write_assign_8_fu_768_p16;
wire   [7:0] b_write_assign_8_fu_768_p18;
wire   [7:0] b_write_assign_4_fu_812_p4;
wire   [7:0] b_write_assign_4_fu_812_p6;
wire   [7:0] b_write_assign_4_fu_812_p8;
wire   [7:0] b_write_assign_4_fu_812_p10;
wire   [7:0] b_write_assign_4_fu_812_p12;
wire   [7:0] b_write_assign_4_fu_812_p19;
wire   [7:0] b_write_assign_7_fu_856_p6;
wire   [7:0] b_write_assign_7_fu_856_p8;
wire   [7:0] b_write_assign_7_fu_856_p10;
wire   [7:0] b_write_assign_7_fu_856_p12;
wire   [7:0] b_write_assign_7_fu_856_p14;
wire   [7:0] b_write_assign_7_fu_856_p16;
wire   [7:0] b_write_assign_7_fu_856_p18;
wire   [7:0] b_write_assign_6_fu_900_p4;
wire   [7:0] b_write_assign_6_fu_900_p6;
wire   [7:0] b_write_assign_6_fu_900_p8;
wire   [7:0] b_write_assign_6_fu_900_p10;
wire   [7:0] b_write_assign_6_fu_900_p12;
wire   [7:0] b_write_assign_6_fu_900_p14;
wire   [7:0] b_write_assign_6_fu_900_p16;
wire   [7:0] b_write_assign_5_fu_944_p4;
wire   [7:0] b_write_assign_5_fu_944_p6;
wire   [7:0] b_write_assign_5_fu_944_p8;
wire   [7:0] b_write_assign_5_fu_944_p10;
wire   [7:0] b_write_assign_5_fu_944_p12;
wire   [7:0] b_write_assign_5_fu_944_p14;
wire   [7:0] b_write_assign_5_fu_944_p19;
wire   [7:0] b_write_assign_fu_284_p21;
wire   [7:0] b_write_assign_1_fu_416_p21;
wire   [7:0] b_write_assign_2_fu_548_p21;
wire   [7:0] b_write_assign_3_fu_680_p21;
wire   [7:0] b_write_assign_4_fu_812_p21;
wire   [7:0] b_write_assign_5_fu_944_p21;
wire   [7:0] b_write_assign_6_fu_900_p21;
wire   [7:0] b_write_assign_7_fu_856_p21;
wire   [7:0] b_write_assign_8_fu_768_p21;
wire   [7:0] b_write_assign_9_fu_724_p21;
wire   [7:0] b_write_assign_10_fu_636_p21;
wire   [7:0] b_write_assign_11_fu_592_p21;
wire   [7:0] b_write_assign_12_fu_504_p21;
wire   [7:0] b_write_assign_13_fu_460_p21;
wire   [7:0] b_write_assign_14_fu_372_p21;
wire   [7:0] b_write_assign_s_fu_328_p21;
wire  signed [3:0] b_write_assign_fu_284_p1;
wire   [3:0] b_write_assign_fu_284_p3;
wire   [3:0] b_write_assign_fu_284_p5;
wire   [3:0] b_write_assign_fu_284_p7;
wire   [3:0] b_write_assign_fu_284_p9;
wire   [3:0] b_write_assign_fu_284_p11;
wire   [3:0] b_write_assign_fu_284_p13;
wire   [3:0] b_write_assign_fu_284_p15;
wire   [3:0] b_write_assign_fu_284_p17;
wire  signed [3:0] b_write_assign_s_fu_328_p1;
wire   [3:0] b_write_assign_s_fu_328_p3;
wire   [3:0] b_write_assign_s_fu_328_p5;
wire   [3:0] b_write_assign_s_fu_328_p7;
wire   [3:0] b_write_assign_s_fu_328_p9;
wire   [3:0] b_write_assign_s_fu_328_p11;
wire   [3:0] b_write_assign_s_fu_328_p13;
wire   [3:0] b_write_assign_s_fu_328_p15;
wire   [3:0] b_write_assign_s_fu_328_p17;
wire  signed [3:0] b_write_assign_14_fu_372_p1;
wire   [3:0] b_write_assign_14_fu_372_p3;
wire   [3:0] b_write_assign_14_fu_372_p5;
wire   [3:0] b_write_assign_14_fu_372_p7;
wire   [3:0] b_write_assign_14_fu_372_p9;
wire   [3:0] b_write_assign_14_fu_372_p11;
wire   [3:0] b_write_assign_14_fu_372_p13;
wire   [3:0] b_write_assign_14_fu_372_p15;
wire   [3:0] b_write_assign_14_fu_372_p17;
wire  signed [3:0] b_write_assign_1_fu_416_p1;
wire   [3:0] b_write_assign_1_fu_416_p3;
wire   [3:0] b_write_assign_1_fu_416_p5;
wire   [3:0] b_write_assign_1_fu_416_p7;
wire   [3:0] b_write_assign_1_fu_416_p9;
wire   [3:0] b_write_assign_1_fu_416_p11;
wire   [3:0] b_write_assign_1_fu_416_p13;
wire   [3:0] b_write_assign_1_fu_416_p15;
wire   [3:0] b_write_assign_1_fu_416_p17;
wire  signed [3:0] b_write_assign_13_fu_460_p1;
wire   [3:0] b_write_assign_13_fu_460_p3;
wire   [3:0] b_write_assign_13_fu_460_p5;
wire   [3:0] b_write_assign_13_fu_460_p7;
wire   [3:0] b_write_assign_13_fu_460_p9;
wire   [3:0] b_write_assign_13_fu_460_p11;
wire   [3:0] b_write_assign_13_fu_460_p13;
wire   [3:0] b_write_assign_13_fu_460_p15;
wire   [3:0] b_write_assign_13_fu_460_p17;
wire  signed [3:0] b_write_assign_12_fu_504_p1;
wire   [3:0] b_write_assign_12_fu_504_p3;
wire   [3:0] b_write_assign_12_fu_504_p5;
wire   [3:0] b_write_assign_12_fu_504_p7;
wire   [3:0] b_write_assign_12_fu_504_p9;
wire   [3:0] b_write_assign_12_fu_504_p11;
wire   [3:0] b_write_assign_12_fu_504_p13;
wire   [3:0] b_write_assign_12_fu_504_p15;
wire   [3:0] b_write_assign_12_fu_504_p17;
wire  signed [3:0] b_write_assign_2_fu_548_p1;
wire   [3:0] b_write_assign_2_fu_548_p3;
wire   [3:0] b_write_assign_2_fu_548_p5;
wire   [3:0] b_write_assign_2_fu_548_p7;
wire   [3:0] b_write_assign_2_fu_548_p9;
wire   [3:0] b_write_assign_2_fu_548_p11;
wire   [3:0] b_write_assign_2_fu_548_p13;
wire   [3:0] b_write_assign_2_fu_548_p15;
wire   [3:0] b_write_assign_2_fu_548_p17;
wire  signed [3:0] b_write_assign_11_fu_592_p1;
wire   [3:0] b_write_assign_11_fu_592_p3;
wire   [3:0] b_write_assign_11_fu_592_p5;
wire   [3:0] b_write_assign_11_fu_592_p7;
wire   [3:0] b_write_assign_11_fu_592_p9;
wire   [3:0] b_write_assign_11_fu_592_p11;
wire   [3:0] b_write_assign_11_fu_592_p13;
wire   [3:0] b_write_assign_11_fu_592_p15;
wire   [3:0] b_write_assign_11_fu_592_p17;
wire  signed [3:0] b_write_assign_10_fu_636_p1;
wire   [3:0] b_write_assign_10_fu_636_p3;
wire   [3:0] b_write_assign_10_fu_636_p5;
wire   [3:0] b_write_assign_10_fu_636_p7;
wire   [3:0] b_write_assign_10_fu_636_p9;
wire   [3:0] b_write_assign_10_fu_636_p11;
wire   [3:0] b_write_assign_10_fu_636_p13;
wire   [3:0] b_write_assign_10_fu_636_p15;
wire   [3:0] b_write_assign_10_fu_636_p17;
wire  signed [3:0] b_write_assign_3_fu_680_p1;
wire   [3:0] b_write_assign_3_fu_680_p3;
wire   [3:0] b_write_assign_3_fu_680_p5;
wire   [3:0] b_write_assign_3_fu_680_p7;
wire   [3:0] b_write_assign_3_fu_680_p9;
wire   [3:0] b_write_assign_3_fu_680_p11;
wire   [3:0] b_write_assign_3_fu_680_p13;
wire   [3:0] b_write_assign_3_fu_680_p15;
wire   [3:0] b_write_assign_3_fu_680_p17;
wire  signed [3:0] b_write_assign_9_fu_724_p1;
wire   [3:0] b_write_assign_9_fu_724_p3;
wire   [3:0] b_write_assign_9_fu_724_p5;
wire   [3:0] b_write_assign_9_fu_724_p7;
wire   [3:0] b_write_assign_9_fu_724_p9;
wire   [3:0] b_write_assign_9_fu_724_p11;
wire   [3:0] b_write_assign_9_fu_724_p13;
wire   [3:0] b_write_assign_9_fu_724_p15;
wire   [3:0] b_write_assign_9_fu_724_p17;
wire  signed [3:0] b_write_assign_8_fu_768_p1;
wire   [3:0] b_write_assign_8_fu_768_p3;
wire   [3:0] b_write_assign_8_fu_768_p5;
wire   [3:0] b_write_assign_8_fu_768_p7;
wire   [3:0] b_write_assign_8_fu_768_p9;
wire   [3:0] b_write_assign_8_fu_768_p11;
wire   [3:0] b_write_assign_8_fu_768_p13;
wire   [3:0] b_write_assign_8_fu_768_p15;
wire   [3:0] b_write_assign_8_fu_768_p17;
wire  signed [3:0] b_write_assign_4_fu_812_p1;
wire   [3:0] b_write_assign_4_fu_812_p3;
wire   [3:0] b_write_assign_4_fu_812_p5;
wire   [3:0] b_write_assign_4_fu_812_p7;
wire   [3:0] b_write_assign_4_fu_812_p9;
wire   [3:0] b_write_assign_4_fu_812_p11;
wire   [3:0] b_write_assign_4_fu_812_p13;
wire   [3:0] b_write_assign_4_fu_812_p15;
wire   [3:0] b_write_assign_4_fu_812_p17;
wire  signed [3:0] b_write_assign_7_fu_856_p1;
wire   [3:0] b_write_assign_7_fu_856_p3;
wire   [3:0] b_write_assign_7_fu_856_p5;
wire   [3:0] b_write_assign_7_fu_856_p7;
wire   [3:0] b_write_assign_7_fu_856_p9;
wire   [3:0] b_write_assign_7_fu_856_p11;
wire   [3:0] b_write_assign_7_fu_856_p13;
wire   [3:0] b_write_assign_7_fu_856_p15;
wire   [3:0] b_write_assign_7_fu_856_p17;
wire  signed [3:0] b_write_assign_6_fu_900_p1;
wire   [3:0] b_write_assign_6_fu_900_p3;
wire   [3:0] b_write_assign_6_fu_900_p5;
wire   [3:0] b_write_assign_6_fu_900_p7;
wire   [3:0] b_write_assign_6_fu_900_p9;
wire   [3:0] b_write_assign_6_fu_900_p11;
wire   [3:0] b_write_assign_6_fu_900_p13;
wire   [3:0] b_write_assign_6_fu_900_p15;
wire   [3:0] b_write_assign_6_fu_900_p17;
wire  signed [3:0] b_write_assign_5_fu_944_p1;
wire   [3:0] b_write_assign_5_fu_944_p3;
wire   [3:0] b_write_assign_5_fu_944_p5;
wire   [3:0] b_write_assign_5_fu_944_p7;
wire   [3:0] b_write_assign_5_fu_944_p9;
wire   [3:0] b_write_assign_5_fu_944_p11;
wire   [3:0] b_write_assign_5_fu_944_p13;
wire   [3:0] b_write_assign_5_fu_944_p15;
wire   [3:0] b_write_assign_5_fu_944_p17;

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U7(
    .din0(p_read),
    .din1(b_write_assign_fu_284_p4),
    .din2(p_read),
    .din3(p_read),
    .din4(p_read),
    .din5(p_read),
    .din6(p_read),
    .din7(p_read),
    .din8(p_read),
    .def(b_write_assign_fu_284_p19),
    .sel(idx),
    .dout(b_write_assign_fu_284_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U8(
    .din0(trunc_ln13_fu_210_p1),
    .din1(p_read15),
    .din2(p_read15),
    .din3(p_read15),
    .din4(p_read15),
    .din5(p_read15),
    .din6(p_read15),
    .din7(p_read15),
    .din8(p_read15),
    .def(b_write_assign_s_fu_328_p19),
    .sel(idx),
    .dout(b_write_assign_s_fu_328_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U9(
    .din0(b_write_assign_14_fu_372_p2),
    .din1(p_read14),
    .din2(p_read14),
    .din3(p_read14),
    .din4(p_read14),
    .din5(p_read14),
    .din6(p_read14),
    .din7(p_read14),
    .din8(trunc_ln13_fu_210_p1),
    .def(p_read14),
    .sel(idx),
    .dout(b_write_assign_14_fu_372_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U10(
    .din0(p_read1),
    .din1(b_write_assign_1_fu_416_p4),
    .din2(b_write_assign_1_fu_416_p6),
    .din3(p_read1),
    .din4(p_read1),
    .din5(p_read1),
    .din6(p_read1),
    .din7(p_read1),
    .din8(p_read1),
    .def(b_write_assign_1_fu_416_p19),
    .sel(idx),
    .dout(b_write_assign_1_fu_416_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U11(
    .din0(b_write_assign_13_fu_460_p2),
    .din1(p_read13),
    .din2(p_read13),
    .din3(p_read13),
    .din4(p_read13),
    .din5(p_read13),
    .din6(p_read13),
    .din7(trunc_ln13_fu_210_p1),
    .din8(b_write_assign_13_fu_460_p18),
    .def(p_read13),
    .sel(idx),
    .dout(b_write_assign_13_fu_460_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U12(
    .din0(b_write_assign_12_fu_504_p2),
    .din1(p_read12),
    .din2(p_read12),
    .din3(p_read12),
    .din4(p_read12),
    .din5(p_read12),
    .din6(trunc_ln13_fu_210_p1),
    .din7(b_write_assign_12_fu_504_p16),
    .din8(b_write_assign_12_fu_504_p18),
    .def(p_read12),
    .sel(idx),
    .dout(b_write_assign_12_fu_504_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U13(
    .din0(p_read2),
    .din1(b_write_assign_2_fu_548_p4),
    .din2(b_write_assign_2_fu_548_p6),
    .din3(b_write_assign_2_fu_548_p8),
    .din4(p_read2),
    .din5(p_read2),
    .din6(p_read2),
    .din7(p_read2),
    .din8(p_read2),
    .def(b_write_assign_2_fu_548_p19),
    .sel(idx),
    .dout(b_write_assign_2_fu_548_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U14(
    .din0(b_write_assign_11_fu_592_p2),
    .din1(p_read11),
    .din2(p_read11),
    .din3(p_read11),
    .din4(p_read11),
    .din5(trunc_ln13_fu_210_p1),
    .din6(b_write_assign_11_fu_592_p14),
    .din7(b_write_assign_11_fu_592_p16),
    .din8(b_write_assign_11_fu_592_p18),
    .def(p_read11),
    .sel(idx),
    .dout(b_write_assign_11_fu_592_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U15(
    .din0(b_write_assign_10_fu_636_p2),
    .din1(p_read10),
    .din2(p_read10),
    .din3(p_read10),
    .din4(trunc_ln13_fu_210_p1),
    .din5(b_write_assign_10_fu_636_p12),
    .din6(b_write_assign_10_fu_636_p14),
    .din7(b_write_assign_10_fu_636_p16),
    .din8(b_write_assign_10_fu_636_p18),
    .def(p_read10),
    .sel(idx),
    .dout(b_write_assign_10_fu_636_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U16(
    .din0(p_read3),
    .din1(b_write_assign_3_fu_680_p4),
    .din2(b_write_assign_3_fu_680_p6),
    .din3(b_write_assign_3_fu_680_p8),
    .din4(b_write_assign_3_fu_680_p10),
    .din5(p_read3),
    .din6(p_read3),
    .din7(p_read3),
    .din8(p_read3),
    .def(b_write_assign_3_fu_680_p19),
    .sel(idx),
    .dout(b_write_assign_3_fu_680_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U17(
    .din0(b_write_assign_9_fu_724_p2),
    .din1(p_read9),
    .din2(p_read9),
    .din3(trunc_ln13_fu_210_p1),
    .din4(b_write_assign_9_fu_724_p10),
    .din5(b_write_assign_9_fu_724_p12),
    .din6(b_write_assign_9_fu_724_p14),
    .din7(b_write_assign_9_fu_724_p16),
    .din8(b_write_assign_9_fu_724_p18),
    .def(p_read9),
    .sel(idx),
    .dout(b_write_assign_9_fu_724_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U18(
    .din0(b_write_assign_8_fu_768_p2),
    .din1(p_read8),
    .din2(trunc_ln13_fu_210_p1),
    .din3(b_write_assign_8_fu_768_p8),
    .din4(b_write_assign_8_fu_768_p10),
    .din5(b_write_assign_8_fu_768_p12),
    .din6(b_write_assign_8_fu_768_p14),
    .din7(b_write_assign_8_fu_768_p16),
    .din8(b_write_assign_8_fu_768_p18),
    .def(p_read8),
    .sel(idx),
    .dout(b_write_assign_8_fu_768_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U19(
    .din0(p_read4),
    .din1(b_write_assign_4_fu_812_p4),
    .din2(b_write_assign_4_fu_812_p6),
    .din3(b_write_assign_4_fu_812_p8),
    .din4(b_write_assign_4_fu_812_p10),
    .din5(b_write_assign_4_fu_812_p12),
    .din6(p_read4),
    .din7(p_read4),
    .din8(p_read4),
    .def(b_write_assign_4_fu_812_p19),
    .sel(idx),
    .dout(b_write_assign_4_fu_812_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U20(
    .din0(p_read7),
    .din1(trunc_ln13_fu_210_p1),
    .din2(b_write_assign_7_fu_856_p6),
    .din3(b_write_assign_7_fu_856_p8),
    .din4(b_write_assign_7_fu_856_p10),
    .din5(b_write_assign_7_fu_856_p12),
    .din6(b_write_assign_7_fu_856_p14),
    .din7(b_write_assign_7_fu_856_p16),
    .din8(b_write_assign_7_fu_856_p18),
    .def(p_read7),
    .sel(idx),
    .dout(b_write_assign_7_fu_856_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U21(
    .din0(p_read6),
    .din1(b_write_assign_6_fu_900_p4),
    .din2(b_write_assign_6_fu_900_p6),
    .din3(b_write_assign_6_fu_900_p8),
    .din4(b_write_assign_6_fu_900_p10),
    .din5(b_write_assign_6_fu_900_p12),
    .din6(b_write_assign_6_fu_900_p14),
    .din7(b_write_assign_6_fu_900_p16),
    .din8(p_read6),
    .def(trunc_ln13_fu_210_p1),
    .sel(idx),
    .dout(b_write_assign_6_fu_900_p21)
);

axi_encrypt_sparsemux_19_4_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h8 ),
    .din0_WIDTH( 8 ),
    .CASE1( 4'h0 ),
    .din1_WIDTH( 8 ),
    .CASE2( 4'h1 ),
    .din2_WIDTH( 8 ),
    .CASE3( 4'h2 ),
    .din3_WIDTH( 8 ),
    .CASE4( 4'h3 ),
    .din4_WIDTH( 8 ),
    .CASE5( 4'h4 ),
    .din5_WIDTH( 8 ),
    .CASE6( 4'h5 ),
    .din6_WIDTH( 8 ),
    .CASE7( 4'h6 ),
    .din7_WIDTH( 8 ),
    .CASE8( 4'h7 ),
    .din8_WIDTH( 8 ),
    .def_WIDTH( 8 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
sparsemux_19_4_8_1_1_U22(
    .din0(p_read5),
    .din1(b_write_assign_5_fu_944_p4),
    .din2(b_write_assign_5_fu_944_p6),
    .din3(b_write_assign_5_fu_944_p8),
    .din4(b_write_assign_5_fu_944_p10),
    .din5(b_write_assign_5_fu_944_p12),
    .din6(b_write_assign_5_fu_944_p14),
    .din7(p_read5),
    .din8(p_read5),
    .def(b_write_assign_5_fu_944_p19),
    .sel(idx),
    .dout(b_write_assign_5_fu_944_p21)
);

assign ap_ready = 1'b1;

assign trunc_ln13_fu_210_p1 = a[7:0];

assign ap_return_0 = b_write_assign_fu_284_p21;

assign ap_return_1 = b_write_assign_1_fu_416_p21;

assign ap_return_10 = b_write_assign_10_fu_636_p21;

assign ap_return_11 = b_write_assign_11_fu_592_p21;

assign ap_return_12 = b_write_assign_12_fu_504_p21;

assign ap_return_13 = b_write_assign_13_fu_460_p21;

assign ap_return_14 = b_write_assign_14_fu_372_p21;

assign ap_return_15 = b_write_assign_s_fu_328_p21;

assign ap_return_2 = b_write_assign_2_fu_548_p21;

assign ap_return_3 = b_write_assign_3_fu_680_p21;

assign ap_return_4 = b_write_assign_4_fu_812_p21;

assign ap_return_5 = b_write_assign_5_fu_944_p21;

assign ap_return_6 = b_write_assign_6_fu_900_p21;

assign ap_return_7 = b_write_assign_7_fu_856_p21;

assign ap_return_8 = b_write_assign_8_fu_768_p21;

assign ap_return_9 = b_write_assign_9_fu_724_p21;

assign b_write_assign_10_fu_636_p12 = {{a[15:8]}};

assign b_write_assign_10_fu_636_p14 = {{a[23:16]}};

assign b_write_assign_10_fu_636_p16 = {{a[31:24]}};

assign b_write_assign_10_fu_636_p18 = {{a[39:32]}};

assign b_write_assign_10_fu_636_p2 = {{a[47:40]}};

assign b_write_assign_11_fu_592_p14 = {{a[15:8]}};

assign b_write_assign_11_fu_592_p16 = {{a[23:16]}};

assign b_write_assign_11_fu_592_p18 = {{a[31:24]}};

assign b_write_assign_11_fu_592_p2 = {{a[39:32]}};

assign b_write_assign_12_fu_504_p16 = {{a[15:8]}};

assign b_write_assign_12_fu_504_p18 = {{a[23:16]}};

assign b_write_assign_12_fu_504_p2 = {{a[31:24]}};

assign b_write_assign_13_fu_460_p18 = {{a[15:8]}};

assign b_write_assign_13_fu_460_p2 = {{a[23:16]}};

assign b_write_assign_14_fu_372_p2 = {{a[15:8]}};

assign b_write_assign_1_fu_416_p19 = {{a[47:40]}};

assign b_write_assign_1_fu_416_p4 = {{a[55:48]}};

assign b_write_assign_1_fu_416_p6 = {{a[63:56]}};

assign b_write_assign_2_fu_548_p19 = {{a[39:32]}};

assign b_write_assign_2_fu_548_p4 = {{a[47:40]}};

assign b_write_assign_2_fu_548_p6 = {{a[55:48]}};

assign b_write_assign_2_fu_548_p8 = {{a[63:56]}};

assign b_write_assign_3_fu_680_p10 = {{a[63:56]}};

assign b_write_assign_3_fu_680_p19 = {{a[31:24]}};

assign b_write_assign_3_fu_680_p4 = {{a[39:32]}};

assign b_write_assign_3_fu_680_p6 = {{a[47:40]}};

assign b_write_assign_3_fu_680_p8 = {{a[55:48]}};

assign b_write_assign_4_fu_812_p10 = {{a[55:48]}};

assign b_write_assign_4_fu_812_p12 = {{a[63:56]}};

assign b_write_assign_4_fu_812_p19 = {{a[23:16]}};

assign b_write_assign_4_fu_812_p4 = {{a[31:24]}};

assign b_write_assign_4_fu_812_p6 = {{a[39:32]}};

assign b_write_assign_4_fu_812_p8 = {{a[47:40]}};

assign b_write_assign_5_fu_944_p10 = {{a[47:40]}};

assign b_write_assign_5_fu_944_p12 = {{a[55:48]}};

assign b_write_assign_5_fu_944_p14 = {{a[63:56]}};

assign b_write_assign_5_fu_944_p19 = {{a[15:8]}};

assign b_write_assign_5_fu_944_p4 = {{a[23:16]}};

assign b_write_assign_5_fu_944_p6 = {{a[31:24]}};

assign b_write_assign_5_fu_944_p8 = {{a[39:32]}};

assign b_write_assign_6_fu_900_p10 = {{a[39:32]}};

assign b_write_assign_6_fu_900_p12 = {{a[47:40]}};

assign b_write_assign_6_fu_900_p14 = {{a[55:48]}};

assign b_write_assign_6_fu_900_p16 = {{a[63:56]}};

assign b_write_assign_6_fu_900_p4 = {{a[15:8]}};

assign b_write_assign_6_fu_900_p6 = {{a[23:16]}};

assign b_write_assign_6_fu_900_p8 = {{a[31:24]}};

assign b_write_assign_7_fu_856_p10 = {{a[31:24]}};

assign b_write_assign_7_fu_856_p12 = {{a[39:32]}};

assign b_write_assign_7_fu_856_p14 = {{a[47:40]}};

assign b_write_assign_7_fu_856_p16 = {{a[55:48]}};

assign b_write_assign_7_fu_856_p18 = {{a[63:56]}};

assign b_write_assign_7_fu_856_p6 = {{a[15:8]}};

assign b_write_assign_7_fu_856_p8 = {{a[23:16]}};

assign b_write_assign_8_fu_768_p10 = {{a[23:16]}};

assign b_write_assign_8_fu_768_p12 = {{a[31:24]}};

assign b_write_assign_8_fu_768_p14 = {{a[39:32]}};

assign b_write_assign_8_fu_768_p16 = {{a[47:40]}};

assign b_write_assign_8_fu_768_p18 = {{a[55:48]}};

assign b_write_assign_8_fu_768_p2 = {{a[63:56]}};

assign b_write_assign_8_fu_768_p8 = {{a[15:8]}};

assign b_write_assign_9_fu_724_p10 = {{a[15:8]}};

assign b_write_assign_9_fu_724_p12 = {{a[23:16]}};

assign b_write_assign_9_fu_724_p14 = {{a[31:24]}};

assign b_write_assign_9_fu_724_p16 = {{a[39:32]}};

assign b_write_assign_9_fu_724_p18 = {{a[47:40]}};

assign b_write_assign_9_fu_724_p2 = {{a[55:48]}};

assign b_write_assign_fu_284_p19 = {{a[55:48]}};

assign b_write_assign_fu_284_p4 = {{a[63:56]}};

assign b_write_assign_s_fu_328_p19 = {{a[63:56]}};

endmodule //axi_encrypt_u64_to_u8_array_clone
