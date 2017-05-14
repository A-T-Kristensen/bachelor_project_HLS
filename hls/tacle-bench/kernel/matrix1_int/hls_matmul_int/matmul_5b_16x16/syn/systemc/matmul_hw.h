// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matmul_hw_HH_
#define _matmul_hw_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matmul_hw_mul_32scud.h"
#include "matmul_hw_b_copy_0.h"

namespace ap_rtl {

struct matmul_hw : public sc_module {
    // Port declarations 41
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > a_0_Addr_A;
    sc_out< sc_logic > a_0_EN_A;
    sc_out< sc_lv<4> > a_0_WEN_A;
    sc_out< sc_lv<32> > a_0_Din_A;
    sc_in< sc_lv<32> > a_0_Dout_A;
    sc_out< sc_logic > a_0_Clk_A;
    sc_out< sc_logic > a_0_Rst_A;
    sc_out< sc_lv<32> > a_1_Addr_A;
    sc_out< sc_logic > a_1_EN_A;
    sc_out< sc_lv<4> > a_1_WEN_A;
    sc_out< sc_lv<32> > a_1_Din_A;
    sc_in< sc_lv<32> > a_1_Dout_A;
    sc_out< sc_logic > a_1_Clk_A;
    sc_out< sc_logic > a_1_Rst_A;
    sc_out< sc_lv<32> > b_0_Addr_A;
    sc_out< sc_logic > b_0_EN_A;
    sc_out< sc_lv<4> > b_0_WEN_A;
    sc_out< sc_lv<32> > b_0_Din_A;
    sc_in< sc_lv<32> > b_0_Dout_A;
    sc_out< sc_logic > b_0_Clk_A;
    sc_out< sc_logic > b_0_Rst_A;
    sc_out< sc_lv<32> > b_1_Addr_A;
    sc_out< sc_logic > b_1_EN_A;
    sc_out< sc_lv<4> > b_1_WEN_A;
    sc_out< sc_lv<32> > b_1_Din_A;
    sc_in< sc_lv<32> > b_1_Dout_A;
    sc_out< sc_logic > b_1_Clk_A;
    sc_out< sc_logic > b_1_Rst_A;
    sc_out< sc_lv<32> > c_Addr_A;
    sc_out< sc_logic > c_EN_A;
    sc_out< sc_lv<4> > c_WEN_A;
    sc_out< sc_lv<32> > c_Din_A;
    sc_in< sc_lv<32> > c_Dout_A;
    sc_out< sc_logic > c_Clk_A;
    sc_out< sc_logic > c_Rst_A;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matmul_hw(sc_module_name name);
    SC_HAS_PROCESS(matmul_hw);

    ~matmul_hw();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matmul_hw_b_copy_0* b_copy_0_U;
    matmul_hw_b_copy_0* b_copy_1_U;
    matmul_hw_b_copy_0* b_copy_2_U;
    matmul_hw_b_copy_0* b_copy_3_U;
    matmul_hw_b_copy_0* b_copy_4_U;
    matmul_hw_b_copy_0* b_copy_5_U;
    matmul_hw_b_copy_0* b_copy_6_U;
    matmul_hw_b_copy_0* b_copy_7_U;
    matmul_hw_b_copy_0* b_copy_8_U;
    matmul_hw_b_copy_0* b_copy_9_U;
    matmul_hw_b_copy_0* b_copy_10_U;
    matmul_hw_b_copy_0* b_copy_11_U;
    matmul_hw_b_copy_0* b_copy_12_U;
    matmul_hw_b_copy_0* b_copy_13_U;
    matmul_hw_b_copy_0* b_copy_14_U;
    matmul_hw_b_copy_0* b_copy_15_U;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U1;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U2;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U3;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U4;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U5;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U6;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U7;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U8;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U9;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U10;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U11;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U12;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U13;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U14;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U15;
    matmul_hw_mul_32scud<1,6,32,32,32>* matmul_hw_mul_32scud_U16;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > indvar_flatten_reg_824;
    sc_signal< sc_lv<5> > i_reg_835;
    sc_signal< sc_lv<5> > j_reg_846;
    sc_signal< sc_lv<32> > reg_857;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1666;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage4;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage7;
    sc_signal< sc_lv<1> > tmp_3_reg_1828;
    sc_signal< sc_lv<32> > reg_861;
    sc_signal< sc_lv<32> > reg_865;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage5;
    sc_signal< sc_lv<32> > reg_869;
    sc_signal< sc_lv<32> > reg_873;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage3;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage6;
    sc_signal< sc_lv<32> > reg_877;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_881_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_1666;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_1666;
    sc_signal< sc_lv<9> > indvar_flatten_next_fu_887_p2;
    sc_signal< sc_lv<9> > indvar_flatten_next_reg_1670;
    sc_signal< sc_lv<5> > j_mid2_fu_905_p3;
    sc_signal< sc_lv<5> > j_mid2_reg_1675;
    sc_signal< sc_lv<1> > tmp_mid2_fu_925_p3;
    sc_signal< sc_lv<1> > tmp_mid2_reg_1689;
    sc_signal< sc_lv<5> > tmp_1_mid2_v_fu_933_p3;
    sc_signal< sc_lv<5> > tmp_1_mid2_v_reg_1693;
    sc_signal< sc_lv<8> > tmp_1_fu_941_p3;
    sc_signal< sc_lv<8> > tmp_1_reg_1699;
    sc_signal< sc_lv<64> > tmp_6_fu_955_p1;
    sc_signal< sc_lv<64> > tmp_6_reg_1720;
    sc_signal< sc_lv<64> > tmp_9_fu_1015_p1;
    sc_signal< sc_lv<64> > tmp_9_reg_1790;
    sc_signal< sc_lv<1> > tmp_3_fu_1035_p2;
    sc_signal< sc_lv<7> > tmp_6_cast2_fu_1040_p1;
    sc_signal< sc_lv<7> > tmp_6_cast2_reg_1848;
    sc_signal< sc_lv<32> > b_copy_0_q0;
    sc_signal< sc_lv<32> > b_copy_0_load_reg_1863;
    sc_signal< sc_lv<32> > b_copy_8_q0;
    sc_signal< sc_lv<32> > b_copy_8_load_reg_1873;
    sc_signal< sc_lv<32> > a_row_8_1_fu_1076_p3;
    sc_signal< sc_lv<32> > a_row_0_1_fu_1083_p3;
    sc_signal< sc_lv<32> > b_copy_1_q0;
    sc_signal< sc_lv<32> > b_copy_1_load_reg_1913;
    sc_signal< sc_lv<32> > b_copy_9_q0;
    sc_signal< sc_lv<32> > b_copy_9_load_reg_1923;
    sc_signal< sc_lv<32> > a_row_9_1_fu_1140_p3;
    sc_signal< sc_lv<32> > a_row_1_1_fu_1147_p3;
    sc_signal< sc_lv<32> > b_copy_2_q0;
    sc_signal< sc_lv<32> > b_copy_2_load_reg_1963;
    sc_signal< sc_lv<32> > b_copy_10_q0;
    sc_signal< sc_lv<32> > b_copy_10_load_reg_1973;
    sc_signal< sc_lv<32> > a_row_10_1_fu_1206_p3;
    sc_signal< sc_lv<32> > a_row_2_1_fu_1213_p3;
    sc_signal< sc_lv<32> > b_copy_3_q0;
    sc_signal< sc_lv<32> > b_copy_3_load_reg_2013;
    sc_signal< sc_lv<32> > b_copy_11_q0;
    sc_signal< sc_lv<32> > b_copy_11_load_reg_2023;
    sc_signal< sc_lv<32> > a_row_11_1_fu_1270_p3;
    sc_signal< sc_lv<32> > a_row_3_1_fu_1277_p3;
    sc_signal< sc_lv<32> > b_copy_4_q0;
    sc_signal< sc_lv<32> > b_copy_4_load_reg_2063;
    sc_signal< sc_lv<32> > b_copy_12_q0;
    sc_signal< sc_lv<32> > b_copy_12_load_reg_2073;
    sc_signal< sc_lv<5> > j_1_fu_1319_p2;
    sc_signal< sc_lv<5> > j_1_reg_2083;
    sc_signal< sc_lv<32> > a_row_15_1_fu_1359_p3;
    sc_signal< sc_lv<32> > a_row_15_1_reg_2088;
    sc_signal< sc_lv<32> > a_row_14_1_fu_1366_p3;
    sc_signal< sc_lv<32> > a_row_14_1_reg_2093;
    sc_signal< sc_lv<32> > a_row_13_1_fu_1373_p3;
    sc_signal< sc_lv<32> > a_row_13_1_reg_2098;
    sc_signal< sc_lv<32> > a_row_12_1_fu_1380_p3;
    sc_signal< sc_lv<32> > a_row_7_1_fu_1387_p3;
    sc_signal< sc_lv<32> > a_row_7_1_reg_2108;
    sc_signal< sc_lv<32> > a_row_6_1_fu_1394_p3;
    sc_signal< sc_lv<32> > a_row_6_1_reg_2113;
    sc_signal< sc_lv<32> > a_row_5_1_fu_1401_p3;
    sc_signal< sc_lv<32> > a_row_5_1_reg_2118;
    sc_signal< sc_lv<32> > a_row_4_1_fu_1408_p3;
    sc_signal< sc_lv<10> > tmp_29_fu_1458_p2;
    sc_signal< sc_lv<10> > tmp_29_reg_2128;
    sc_signal< sc_lv<10> > ap_pipeline_reg_pp0_iter2_tmp_29_reg_2128;
    sc_signal< sc_lv<32> > b_copy_5_q0;
    sc_signal< sc_lv<32> > b_copy_5_load_reg_2133;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > b_copy_13_q0;
    sc_signal< sc_lv<32> > b_copy_13_load_reg_2143;
    sc_signal< sc_lv<32> > grp_fu_1109_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_2153;
    sc_signal< sc_lv<32> > b_copy_6_q0;
    sc_signal< sc_lv<32> > b_copy_6_load_reg_2158;
    sc_signal< sc_lv<32> > grp_fu_1114_p2;
    sc_signal< sc_lv<32> > tmp_2_8_reg_2168;
    sc_signal< sc_lv<32> > b_copy_14_q0;
    sc_signal< sc_lv<32> > b_copy_14_load_reg_2173;
    sc_signal< sc_lv<32> > grp_fu_1175_p2;
    sc_signal< sc_lv<32> > tmp_2_1_reg_2183;
    sc_signal< sc_lv<32> > b_copy_7_q0;
    sc_signal< sc_lv<32> > b_copy_7_load_reg_2188;
    sc_signal< sc_lv<32> > grp_fu_1180_p2;
    sc_signal< sc_lv<32> > tmp_2_9_reg_2193;
    sc_signal< sc_lv<32> > b_copy_15_q0;
    sc_signal< sc_lv<32> > b_copy_15_load_reg_2198;
    sc_signal< sc_lv<32> > grp_fu_1239_p2;
    sc_signal< sc_lv<32> > tmp_2_2_reg_2203;
    sc_signal< sc_lv<32> > grp_fu_1244_p2;
    sc_signal< sc_lv<32> > tmp_2_s_reg_2208;
    sc_signal< sc_lv<32> > tmp3_fu_1498_p2;
    sc_signal< sc_lv<32> > tmp3_reg_2213;
    sc_signal< sc_lv<32> > tmp10_fu_1502_p2;
    sc_signal< sc_lv<32> > tmp10_reg_2218;
    sc_signal< sc_lv<32> > grp_fu_1309_p2;
    sc_signal< sc_lv<32> > tmp_2_3_reg_2223;
    sc_signal< sc_lv<32> > grp_fu_1314_p2;
    sc_signal< sc_lv<32> > tmp_2_10_reg_2228;
    sc_signal< sc_lv<32> > grp_fu_1464_p2;
    sc_signal< sc_lv<32> > tmp_2_4_reg_2233;
    sc_signal< sc_lv<32> > grp_fu_1469_p2;
    sc_signal< sc_lv<32> > tmp_2_11_reg_2238;
    sc_signal< sc_lv<32> > tmp2_fu_1510_p2;
    sc_signal< sc_lv<32> > tmp2_reg_2243;
    sc_signal< sc_lv<32> > tmp9_fu_1519_p2;
    sc_signal< sc_lv<32> > tmp9_reg_2248;
    sc_signal< sc_lv<32> > grp_fu_1474_p2;
    sc_signal< sc_lv<32> > tmp_2_5_reg_2253;
    sc_signal< sc_lv<32> > grp_fu_1478_p2;
    sc_signal< sc_lv<32> > tmp_2_12_reg_2258;
    sc_signal< sc_lv<32> > grp_fu_1482_p2;
    sc_signal< sc_lv<32> > tmp_2_6_reg_2263;
    sc_signal< sc_lv<32> > grp_fu_1486_p2;
    sc_signal< sc_lv<32> > tmp_2_13_reg_2268;
    sc_signal< sc_lv<32> > tmp6_fu_1524_p2;
    sc_signal< sc_lv<32> > tmp6_reg_2273;
    sc_signal< sc_lv<32> > tmp13_fu_1528_p2;
    sc_signal< sc_lv<32> > tmp13_reg_2278;
    sc_signal< sc_lv<32> > grp_fu_1490_p2;
    sc_signal< sc_lv<32> > tmp_2_7_reg_2283;
    sc_signal< sc_lv<32> > grp_fu_1494_p2;
    sc_signal< sc_lv<32> > tmp_2_14_reg_2288;
    sc_signal< sc_lv<32> > tmp_5_s_fu_1560_p2;
    sc_signal< sc_lv<32> > tmp_5_s_reg_2293;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<4> > b_copy_0_address0;
    sc_signal< sc_logic > b_copy_0_ce0;
    sc_signal< sc_logic > b_copy_0_we0;
    sc_signal< sc_lv<4> > b_copy_1_address0;
    sc_signal< sc_logic > b_copy_1_ce0;
    sc_signal< sc_logic > b_copy_1_we0;
    sc_signal< sc_lv<4> > b_copy_2_address0;
    sc_signal< sc_logic > b_copy_2_ce0;
    sc_signal< sc_logic > b_copy_2_we0;
    sc_signal< sc_lv<4> > b_copy_3_address0;
    sc_signal< sc_logic > b_copy_3_ce0;
    sc_signal< sc_logic > b_copy_3_we0;
    sc_signal< sc_lv<4> > b_copy_4_address0;
    sc_signal< sc_logic > b_copy_4_ce0;
    sc_signal< sc_logic > b_copy_4_we0;
    sc_signal< sc_lv<4> > b_copy_5_address0;
    sc_signal< sc_logic > b_copy_5_ce0;
    sc_signal< sc_logic > b_copy_5_we0;
    sc_signal< sc_lv<4> > b_copy_6_address0;
    sc_signal< sc_logic > b_copy_6_ce0;
    sc_signal< sc_logic > b_copy_6_we0;
    sc_signal< sc_lv<4> > b_copy_7_address0;
    sc_signal< sc_logic > b_copy_7_ce0;
    sc_signal< sc_logic > b_copy_7_we0;
    sc_signal< sc_lv<4> > b_copy_8_address0;
    sc_signal< sc_logic > b_copy_8_ce0;
    sc_signal< sc_logic > b_copy_8_we0;
    sc_signal< sc_lv<4> > b_copy_9_address0;
    sc_signal< sc_logic > b_copy_9_ce0;
    sc_signal< sc_logic > b_copy_9_we0;
    sc_signal< sc_lv<4> > b_copy_10_address0;
    sc_signal< sc_logic > b_copy_10_ce0;
    sc_signal< sc_logic > b_copy_10_we0;
    sc_signal< sc_lv<4> > b_copy_11_address0;
    sc_signal< sc_logic > b_copy_11_ce0;
    sc_signal< sc_logic > b_copy_11_we0;
    sc_signal< sc_lv<4> > b_copy_12_address0;
    sc_signal< sc_logic > b_copy_12_ce0;
    sc_signal< sc_logic > b_copy_12_we0;
    sc_signal< sc_lv<4> > b_copy_13_address0;
    sc_signal< sc_logic > b_copy_13_ce0;
    sc_signal< sc_logic > b_copy_13_we0;
    sc_signal< sc_lv<4> > b_copy_14_address0;
    sc_signal< sc_logic > b_copy_14_ce0;
    sc_signal< sc_logic > b_copy_14_we0;
    sc_signal< sc_lv<4> > b_copy_15_address0;
    sc_signal< sc_logic > b_copy_15_ce0;
    sc_signal< sc_logic > b_copy_15_we0;
    sc_signal< sc_lv<9> > indvar_flatten_phi_fu_828_p4;
    sc_signal< sc_lv<5> > i_phi_fu_839_p4;
    sc_signal< sc_lv<5> > j_phi_fu_850_p4;
    sc_signal< sc_lv<64> > tmp_4_fu_949_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_966_p3;
    sc_signal< sc_lv<64> > tmp_23_cast_fu_985_p1;
    sc_signal< sc_lv<64> > tmp_10_fu_996_p3;
    sc_signal< sc_lv<64> > tmp_23_fu_1006_p3;
    sc_signal< sc_lv<64> > tmp_12_fu_1025_p3;
    sc_signal< sc_lv<64> > tmp_25_cast_fu_1049_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_1066_p3;
    sc_signal< sc_lv<64> > tmp_25_fu_1100_p3;
    sc_signal< sc_lv<64> > tmp_16_fu_1130_p3;
    sc_signal< sc_lv<64> > tmp_27_cast_fu_1169_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_1196_p3;
    sc_signal< sc_lv<64> > tmp_27_fu_1230_p3;
    sc_signal< sc_lv<64> > tmp_20_fu_1260_p3;
    sc_signal< sc_lv<64> > tmp_29_cast_fu_1303_p1;
    sc_signal< sc_lv<64> > tmp_30_cast_fu_1566_p1;
    sc_signal< sc_lv<32> > a_row_0_2_fu_108;
    sc_signal< sc_lv<32> > a_row_1_2_fu_112;
    sc_signal< sc_lv<32> > a_row_2_2_fu_116;
    sc_signal< sc_lv<32> > a_row_3_2_fu_120;
    sc_signal< sc_lv<32> > a_row_4_2_fu_124;
    sc_signal< sc_lv<32> > a_row_5_2_fu_128;
    sc_signal< sc_lv<32> > a_row_6_2_fu_132;
    sc_signal< sc_lv<32> > a_row_7_2_fu_136;
    sc_signal< sc_lv<32> > a_row_8_2_fu_140;
    sc_signal< sc_lv<32> > a_row_9_2_fu_144;
    sc_signal< sc_lv<32> > a_row_10_2_fu_148;
    sc_signal< sc_lv<32> > a_row_11_2_fu_152;
    sc_signal< sc_lv<32> > a_row_12_2_fu_156;
    sc_signal< sc_lv<32> > a_row_13_2_fu_160;
    sc_signal< sc_lv<32> > a_row_14_2_fu_164;
    sc_signal< sc_lv<32> > a_row_15_2_fu_168;
    sc_signal< sc_lv<32> > a_0_Addr_A_orig;
    sc_signal< sc_lv<32> > a_1_Addr_A_orig;
    sc_signal< sc_lv<32> > b_0_Addr_A_orig;
    sc_signal< sc_lv<32> > b_1_Addr_A_orig;
    sc_signal< sc_lv<32> > c_Addr_A_orig;
    sc_signal< sc_lv<1> > exitcond_fu_899_p2;
    sc_signal< sc_lv<5> > i_1_fu_893_p2;
    sc_signal< sc_lv<1> > tmp_mid1_fu_913_p2;
    sc_signal< sc_lv<1> > tmp_fu_919_p2;
    sc_signal< sc_lv<8> > tmp_5_fu_961_p2;
    sc_signal< sc_lv<6> > tmp_6_cast_fu_976_p1;
    sc_signal< sc_lv<6> > tmp_22_fu_979_p2;
    sc_signal< sc_lv<8> > tmp_8_fu_991_p2;
    sc_signal< sc_lv<8> > tmp_11_fu_1020_p2;
    sc_signal< sc_lv<7> > tmp_24_fu_1043_p2;
    sc_signal< sc_lv<8> > tmp_13_fu_1061_p2;
    sc_signal< sc_lv<32> > grp_fu_1109_p0;
    sc_signal< sc_lv<32> > grp_fu_1114_p0;
    sc_signal< sc_lv<8> > tmp_15_fu_1125_p2;
    sc_signal< sc_lv<7> > tmp_26_fu_1164_p2;
    sc_signal< sc_lv<32> > grp_fu_1175_p0;
    sc_signal< sc_lv<32> > grp_fu_1180_p0;
    sc_signal< sc_lv<8> > tmp_17_fu_1191_p2;
    sc_signal< sc_lv<32> > grp_fu_1239_p0;
    sc_signal< sc_lv<32> > grp_fu_1244_p0;
    sc_signal< sc_lv<8> > tmp_19_fu_1255_p2;
    sc_signal< sc_lv<8> > tmp_6_cast1_fu_1294_p1;
    sc_signal< sc_lv<8> > tmp_28_fu_1297_p2;
    sc_signal< sc_lv<32> > grp_fu_1309_p0;
    sc_signal< sc_lv<32> > grp_fu_1314_p0;
    sc_signal< sc_lv<9> > tmp_21_fu_1348_p3;
    sc_signal< sc_lv<10> > tmp_22_cast_fu_1355_p1;
    sc_signal< sc_lv<10> > tmp_9_cast_fu_1455_p1;
    sc_signal< sc_lv<32> > grp_fu_1464_p0;
    sc_signal< sc_lv<32> > grp_fu_1469_p0;
    sc_signal< sc_lv<32> > tmp4_fu_1506_p2;
    sc_signal< sc_lv<32> > tmp11_fu_1515_p2;
    sc_signal< sc_lv<32> > tmp7_fu_1532_p2;
    sc_signal< sc_lv<32> > tmp5_fu_1536_p2;
    sc_signal< sc_lv<32> > tmp14_fu_1546_p2;
    sc_signal< sc_lv<32> > tmp12_fu_1550_p2;
    sc_signal< sc_lv<32> > tmp1_fu_1541_p2;
    sc_signal< sc_lv<32> > tmp8_fu_1555_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state21;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_pp0_stage0;
    static const sc_lv<10> ap_ST_fsm_pp0_stage1;
    static const sc_lv<10> ap_ST_fsm_pp0_stage2;
    static const sc_lv<10> ap_ST_fsm_pp0_stage3;
    static const sc_lv<10> ap_ST_fsm_pp0_stage4;
    static const sc_lv<10> ap_ST_fsm_pp0_stage5;
    static const sc_lv<10> ap_ST_fsm_pp0_stage6;
    static const sc_lv<10> ap_ST_fsm_pp0_stage7;
    static const sc_lv<10> ap_ST_fsm_state21;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<56> ap_const_lv56_0;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<59> ap_const_lv59_1;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<7> ap_const_lv7_30;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<59> ap_const_lv59_2;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<7> ap_const_lv7_50;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<59> ap_const_lv59_3;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_70;
    static const sc_lv<32> ap_const_lv32_9;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_0_Addr_A();
    void thread_a_0_Addr_A_orig();
    void thread_a_0_Clk_A();
    void thread_a_0_Din_A();
    void thread_a_0_EN_A();
    void thread_a_0_Rst_A();
    void thread_a_0_WEN_A();
    void thread_a_1_Addr_A();
    void thread_a_1_Addr_A_orig();
    void thread_a_1_Clk_A();
    void thread_a_1_Din_A();
    void thread_a_1_EN_A();
    void thread_a_1_Rst_A();
    void thread_a_1_WEN_A();
    void thread_a_row_0_1_fu_1083_p3();
    void thread_a_row_10_1_fu_1206_p3();
    void thread_a_row_11_1_fu_1270_p3();
    void thread_a_row_12_1_fu_1380_p3();
    void thread_a_row_13_1_fu_1373_p3();
    void thread_a_row_14_1_fu_1366_p3();
    void thread_a_row_15_1_fu_1359_p3();
    void thread_a_row_1_1_fu_1147_p3();
    void thread_a_row_2_1_fu_1213_p3();
    void thread_a_row_3_1_fu_1277_p3();
    void thread_a_row_4_1_fu_1408_p3();
    void thread_a_row_5_1_fu_1401_p3();
    void thread_a_row_6_1_fu_1394_p3();
    void thread_a_row_7_1_fu_1387_p3();
    void thread_a_row_8_1_fu_1076_p3();
    void thread_a_row_9_1_fu_1140_p3();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state21();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_b_0_Addr_A();
    void thread_b_0_Addr_A_orig();
    void thread_b_0_Clk_A();
    void thread_b_0_Din_A();
    void thread_b_0_EN_A();
    void thread_b_0_Rst_A();
    void thread_b_0_WEN_A();
    void thread_b_1_Addr_A();
    void thread_b_1_Addr_A_orig();
    void thread_b_1_Clk_A();
    void thread_b_1_Din_A();
    void thread_b_1_EN_A();
    void thread_b_1_Rst_A();
    void thread_b_1_WEN_A();
    void thread_b_copy_0_address0();
    void thread_b_copy_0_ce0();
    void thread_b_copy_0_we0();
    void thread_b_copy_10_address0();
    void thread_b_copy_10_ce0();
    void thread_b_copy_10_we0();
    void thread_b_copy_11_address0();
    void thread_b_copy_11_ce0();
    void thread_b_copy_11_we0();
    void thread_b_copy_12_address0();
    void thread_b_copy_12_ce0();
    void thread_b_copy_12_we0();
    void thread_b_copy_13_address0();
    void thread_b_copy_13_ce0();
    void thread_b_copy_13_we0();
    void thread_b_copy_14_address0();
    void thread_b_copy_14_ce0();
    void thread_b_copy_14_we0();
    void thread_b_copy_15_address0();
    void thread_b_copy_15_ce0();
    void thread_b_copy_15_we0();
    void thread_b_copy_1_address0();
    void thread_b_copy_1_ce0();
    void thread_b_copy_1_we0();
    void thread_b_copy_2_address0();
    void thread_b_copy_2_ce0();
    void thread_b_copy_2_we0();
    void thread_b_copy_3_address0();
    void thread_b_copy_3_ce0();
    void thread_b_copy_3_we0();
    void thread_b_copy_4_address0();
    void thread_b_copy_4_ce0();
    void thread_b_copy_4_we0();
    void thread_b_copy_5_address0();
    void thread_b_copy_5_ce0();
    void thread_b_copy_5_we0();
    void thread_b_copy_6_address0();
    void thread_b_copy_6_ce0();
    void thread_b_copy_6_we0();
    void thread_b_copy_7_address0();
    void thread_b_copy_7_ce0();
    void thread_b_copy_7_we0();
    void thread_b_copy_8_address0();
    void thread_b_copy_8_ce0();
    void thread_b_copy_8_we0();
    void thread_b_copy_9_address0();
    void thread_b_copy_9_ce0();
    void thread_b_copy_9_we0();
    void thread_c_Addr_A();
    void thread_c_Addr_A_orig();
    void thread_c_Clk_A();
    void thread_c_Din_A();
    void thread_c_EN_A();
    void thread_c_Rst_A();
    void thread_c_WEN_A();
    void thread_exitcond_flatten_fu_881_p2();
    void thread_exitcond_fu_899_p2();
    void thread_grp_fu_1109_p0();
    void thread_grp_fu_1114_p0();
    void thread_grp_fu_1175_p0();
    void thread_grp_fu_1180_p0();
    void thread_grp_fu_1239_p0();
    void thread_grp_fu_1244_p0();
    void thread_grp_fu_1309_p0();
    void thread_grp_fu_1314_p0();
    void thread_grp_fu_1464_p0();
    void thread_grp_fu_1469_p0();
    void thread_i_1_fu_893_p2();
    void thread_i_phi_fu_839_p4();
    void thread_indvar_flatten_next_fu_887_p2();
    void thread_indvar_flatten_phi_fu_828_p4();
    void thread_j_1_fu_1319_p2();
    void thread_j_mid2_fu_905_p3();
    void thread_j_phi_fu_850_p4();
    void thread_tmp10_fu_1502_p2();
    void thread_tmp11_fu_1515_p2();
    void thread_tmp12_fu_1550_p2();
    void thread_tmp13_fu_1528_p2();
    void thread_tmp14_fu_1546_p2();
    void thread_tmp1_fu_1541_p2();
    void thread_tmp2_fu_1510_p2();
    void thread_tmp3_fu_1498_p2();
    void thread_tmp4_fu_1506_p2();
    void thread_tmp5_fu_1536_p2();
    void thread_tmp6_fu_1524_p2();
    void thread_tmp7_fu_1532_p2();
    void thread_tmp8_fu_1555_p2();
    void thread_tmp9_fu_1519_p2();
    void thread_tmp_10_fu_996_p3();
    void thread_tmp_11_fu_1020_p2();
    void thread_tmp_12_fu_1025_p3();
    void thread_tmp_13_fu_1061_p2();
    void thread_tmp_14_fu_1066_p3();
    void thread_tmp_15_fu_1125_p2();
    void thread_tmp_16_fu_1130_p3();
    void thread_tmp_17_fu_1191_p2();
    void thread_tmp_18_fu_1196_p3();
    void thread_tmp_19_fu_1255_p2();
    void thread_tmp_1_fu_941_p3();
    void thread_tmp_1_mid2_v_fu_933_p3();
    void thread_tmp_20_fu_1260_p3();
    void thread_tmp_21_fu_1348_p3();
    void thread_tmp_22_cast_fu_1355_p1();
    void thread_tmp_22_fu_979_p2();
    void thread_tmp_23_cast_fu_985_p1();
    void thread_tmp_23_fu_1006_p3();
    void thread_tmp_24_fu_1043_p2();
    void thread_tmp_25_cast_fu_1049_p1();
    void thread_tmp_25_fu_1100_p3();
    void thread_tmp_26_fu_1164_p2();
    void thread_tmp_27_cast_fu_1169_p1();
    void thread_tmp_27_fu_1230_p3();
    void thread_tmp_28_fu_1297_p2();
    void thread_tmp_29_cast_fu_1303_p1();
    void thread_tmp_29_fu_1458_p2();
    void thread_tmp_30_cast_fu_1566_p1();
    void thread_tmp_3_fu_1035_p2();
    void thread_tmp_4_fu_949_p1();
    void thread_tmp_5_fu_961_p2();
    void thread_tmp_5_s_fu_1560_p2();
    void thread_tmp_6_cast1_fu_1294_p1();
    void thread_tmp_6_cast2_fu_1040_p1();
    void thread_tmp_6_cast_fu_976_p1();
    void thread_tmp_6_fu_955_p1();
    void thread_tmp_7_fu_966_p3();
    void thread_tmp_8_fu_991_p2();
    void thread_tmp_9_cast_fu_1455_p1();
    void thread_tmp_9_fu_1015_p1();
    void thread_tmp_fu_919_p2();
    void thread_tmp_mid1_fu_913_p2();
    void thread_tmp_mid2_fu_925_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif