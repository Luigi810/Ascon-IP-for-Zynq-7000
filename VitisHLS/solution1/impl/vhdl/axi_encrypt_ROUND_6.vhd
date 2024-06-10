-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axi_encrypt_ROUND_6 is
port (
    ap_ready : OUT STD_LOGIC;
    s_0_read : IN STD_LOGIC_VECTOR (63 downto 0);
    s_1_read : IN STD_LOGIC_VECTOR (63 downto 0);
    s_2_read : IN STD_LOGIC_VECTOR (63 downto 0);
    s_3_read : IN STD_LOGIC_VECTOR (63 downto 0);
    s_4_read : IN STD_LOGIC_VECTOR (63 downto 0);
    C : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of axi_encrypt_ROUND_6 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_3D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111101";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal zext_ln15_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln15_fu_122_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln22_fu_146_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln22_fu_152_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln18_fu_128_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln20_fu_140_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln23_fu_164_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln24_fu_176_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln24_fu_182_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln19_fu_134_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln25_fu_194_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln26_fu_206_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln26_fu_212_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_fu_158_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln28_fu_224_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln23_fu_170_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_2_fu_218_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_1_fu_188_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln30_fu_242_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln25_fu_200_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_4_fu_236_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_fu_270_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal lshr_ln9_fu_260_p4 : STD_LOGIC_VECTOR (44 downto 0);
    signal trunc_ln9_1_fu_292_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal lshr_ln9_1_fu_282_p4 : STD_LOGIC_VECTOR (35 downto 0);
    signal or_ln9_1_fu_296_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln34_fu_304_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln9_fu_274_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_3_fu_230_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_2_fu_326_p1 : STD_LOGIC_VECTOR (60 downto 0);
    signal lshr_ln9_2_fu_316_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln9_3_fu_348_p1 : STD_LOGIC_VECTOR (38 downto 0);
    signal lshr_ln9_3_fu_338_p4 : STD_LOGIC_VECTOR (24 downto 0);
    signal or_ln9_3_fu_352_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln35_fu_360_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln9_2_fu_330_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_6_fu_254_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_4_fu_382_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal lshr_ln9_4_fu_372_p4 : STD_LOGIC_VECTOR (62 downto 0);
    signal trunc_ln9_5_fu_404_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal lshr_ln9_5_fu_394_p4 : STD_LOGIC_VECTOR (57 downto 0);
    signal or_ln9_5_fu_408_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln36_fu_416_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln9_4_fu_386_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal t_5_fu_248_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_6_fu_438_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal lshr_ln9_6_fu_428_p4 : STD_LOGIC_VECTOR (53 downto 0);
    signal trunc_ln9_7_fu_460_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal lshr_ln9_7_fu_450_p4 : STD_LOGIC_VECTOR (46 downto 0);
    signal or_ln9_7_fu_464_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln37_fu_472_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln9_6_fu_442_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln9_8_fu_494_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal lshr_ln9_8_fu_484_p4 : STD_LOGIC_VECTOR (56 downto 0);
    signal trunc_ln9_9_fu_516_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal lshr_ln9_9_fu_506_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln9_9_fu_520_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln38_fu_528_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln9_8_fu_498_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln34_1_fu_310_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln35_1_fu_366_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln36_1_fu_422_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln37_1_fu_478_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln38_1_fu_534_p2 : STD_LOGIC_VECTOR (63 downto 0);


begin



    and_ln22_fu_152_p2 <= (xor_ln22_fu_146_p2 and xor_ln15_fu_122_p2);
    and_ln23_fu_170_p2 <= (xor_ln23_fu_164_p2 and s_3_read);
    and_ln24_fu_182_p2 <= (xor_ln24_fu_176_p2 and s_4_read);
    and_ln25_fu_200_p2 <= (xor_ln25_fu_194_p2 and xor_ln18_fu_128_p2);
    and_ln26_fu_212_p2 <= (xor_ln26_fu_206_p2 and s_1_read);
    ap_ready <= ap_const_logic_1;
    ap_return_0 <= xor_ln34_1_fu_310_p2;
    ap_return_1 <= xor_ln35_1_fu_366_p2;
    ap_return_2 <= xor_ln36_1_fu_422_p2;
    ap_return_3 <= xor_ln37_1_fu_478_p2;
    ap_return_4 <= xor_ln38_1_fu_534_p2;
    lshr_ln9_1_fu_282_p4 <= t_4_fu_236_p2(63 downto 28);
    lshr_ln9_2_fu_316_p4 <= t_3_fu_230_p2(63 downto 61);
    lshr_ln9_3_fu_338_p4 <= t_3_fu_230_p2(63 downto 39);
    lshr_ln9_4_fu_372_p4 <= t_6_fu_254_p2(63 downto 1);
    lshr_ln9_5_fu_394_p4 <= t_6_fu_254_p2(63 downto 6);
    lshr_ln9_6_fu_428_p4 <= t_5_fu_248_p2(63 downto 10);
    lshr_ln9_7_fu_450_p4 <= t_5_fu_248_p2(63 downto 17);
    lshr_ln9_8_fu_484_p4 <= t_2_fu_218_p2(63 downto 7);
    lshr_ln9_9_fu_506_p4 <= t_2_fu_218_p2(63 downto 41);
    lshr_ln9_fu_260_p4 <= t_4_fu_236_p2(63 downto 19);
    or_ln9_1_fu_296_p3 <= (trunc_ln9_1_fu_292_p1 & lshr_ln9_1_fu_282_p4);
    or_ln9_2_fu_330_p3 <= (trunc_ln9_2_fu_326_p1 & lshr_ln9_2_fu_316_p4);
    or_ln9_3_fu_352_p3 <= (trunc_ln9_3_fu_348_p1 & lshr_ln9_3_fu_338_p4);
    or_ln9_4_fu_386_p3 <= (trunc_ln9_4_fu_382_p1 & lshr_ln9_4_fu_372_p4);
    or_ln9_5_fu_408_p3 <= (trunc_ln9_5_fu_404_p1 & lshr_ln9_5_fu_394_p4);
    or_ln9_6_fu_442_p3 <= (trunc_ln9_6_fu_438_p1 & lshr_ln9_6_fu_428_p4);
    or_ln9_7_fu_464_p3 <= (trunc_ln9_7_fu_460_p1 & lshr_ln9_7_fu_450_p4);
    or_ln9_8_fu_498_p3 <= (trunc_ln9_8_fu_494_p1 & lshr_ln9_8_fu_484_p4);
    or_ln9_9_fu_520_p3 <= (trunc_ln9_9_fu_516_p1 & lshr_ln9_9_fu_506_p4);
    or_ln9_fu_274_p3 <= (trunc_ln9_fu_270_p1 & lshr_ln9_fu_260_p4);
    t_1_fu_188_p2 <= (xor_ln20_fu_140_p2 xor and_ln24_fu_182_p2);
    t_2_fu_218_p2 <= (xor_ln19_fu_134_p2 xor and_ln26_fu_212_p2);
    t_3_fu_230_p2 <= (xor_ln28_fu_224_p2 xor and_ln23_fu_170_p2);
    t_4_fu_236_p2 <= (t_fu_158_p2 xor t_2_fu_218_p2);
    t_5_fu_248_p2 <= (xor_ln30_fu_242_p2 xor and_ln25_fu_200_p2);
    t_6_fu_254_p2 <= (t_1_fu_188_p2 xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    t_fu_158_p2 <= (xor_ln18_fu_128_p2 xor and_ln22_fu_152_p2);
    trunc_ln9_1_fu_292_p1 <= t_4_fu_236_p2(28 - 1 downto 0);
    trunc_ln9_2_fu_326_p1 <= t_3_fu_230_p2(61 - 1 downto 0);
    trunc_ln9_3_fu_348_p1 <= t_3_fu_230_p2(39 - 1 downto 0);
    trunc_ln9_4_fu_382_p1 <= t_6_fu_254_p2(1 - 1 downto 0);
    trunc_ln9_5_fu_404_p1 <= t_6_fu_254_p2(6 - 1 downto 0);
    trunc_ln9_6_fu_438_p1 <= t_5_fu_248_p2(10 - 1 downto 0);
    trunc_ln9_7_fu_460_p1 <= t_5_fu_248_p2(17 - 1 downto 0);
    trunc_ln9_8_fu_494_p1 <= t_2_fu_218_p2(7 - 1 downto 0);
    trunc_ln9_9_fu_516_p1 <= t_2_fu_218_p2(41 - 1 downto 0);
    trunc_ln9_fu_270_p1 <= t_4_fu_236_p2(19 - 1 downto 0);
    xor_ln15_fu_122_p2 <= (zext_ln15_fu_118_p1 xor s_2_read);
    xor_ln18_fu_128_p2 <= (s_4_read xor s_0_read);
    xor_ln19_fu_134_p2 <= (s_4_read xor s_3_read);
    xor_ln20_fu_140_p2 <= (xor_ln15_fu_122_p2 xor s_1_read);
    xor_ln22_fu_146_p2 <= (s_1_read xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    xor_ln23_fu_164_p2 <= (xor_ln20_fu_140_p2 xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    xor_ln24_fu_176_p2 <= (s_3_read xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    xor_ln25_fu_194_p2 <= (xor_ln19_fu_134_p2 xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    xor_ln26_fu_206_p2 <= (xor_ln18_fu_128_p2 xor ap_const_lv64_FFFFFFFFFFFFFFFF);
    xor_ln28_fu_224_p2 <= (t_fu_158_p2 xor s_1_read);
    xor_ln30_fu_242_p2 <= (t_1_fu_188_p2 xor s_3_read);
    xor_ln34_1_fu_310_p2 <= (xor_ln34_fu_304_p2 xor or_ln9_fu_274_p3);
    xor_ln34_fu_304_p2 <= (t_4_fu_236_p2 xor or_ln9_1_fu_296_p3);
    xor_ln35_1_fu_366_p2 <= (xor_ln35_fu_360_p2 xor or_ln9_2_fu_330_p3);
    xor_ln35_fu_360_p2 <= (t_3_fu_230_p2 xor or_ln9_3_fu_352_p3);
    xor_ln36_1_fu_422_p2 <= (xor_ln36_fu_416_p2 xor or_ln9_4_fu_386_p3);
    xor_ln36_fu_416_p2 <= (t_6_fu_254_p2 xor or_ln9_5_fu_408_p3);
    xor_ln37_1_fu_478_p2 <= (xor_ln37_fu_472_p2 xor or_ln9_6_fu_442_p3);
    xor_ln37_fu_472_p2 <= (t_5_fu_248_p2 xor or_ln9_7_fu_464_p3);
    xor_ln38_1_fu_534_p2 <= (xor_ln38_fu_528_p2 xor or_ln9_8_fu_498_p3);
    xor_ln38_fu_528_p2 <= (t_2_fu_218_p2 xor or_ln9_9_fu_520_p3);
    zext_ln15_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(C),64));
end behav;