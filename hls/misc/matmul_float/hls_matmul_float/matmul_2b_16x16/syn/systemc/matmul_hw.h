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

#include "matmul_hw_fadd_32dEe.h"
#include "matmul_hw_fmul_32eOg.h"
#include "matmul_hw_urem_6nfYi.h"
#include "matmul_hw_b_copy_0.h"

namespace ap_rtl {

struct matmul_hw : public sc_module {
    // Port declarations 20
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
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<6> > ap_var_for_const1;


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
    matmul_hw_fadd_32dEe<1,5,32,32,32>* matmul_hw_fadd_32dEe_U1;
    matmul_hw_fmul_32eOg<1,4,32,32,32>* matmul_hw_fmul_32eOg_U2;
    matmul_hw_urem_6nfYi<1,10,6,6,6>* matmul_hw_urem_6nfYi_U3;
    sc_signal< sc_lv<26> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > indvar_flatten_reg_842;
    sc_signal< sc_lv<5> > i_reg_853;
    sc_signal< sc_lv<5> > j_reg_864;
    sc_signal< sc_lv<32> > reg_899;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1769;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage4;
    sc_signal< sc_lv<1> > tmp_5_reg_1866;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage6;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage8;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage10;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage12;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage14;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage16;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage17;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage18;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage19;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage20;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage21;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage22;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage23;
    sc_signal< sc_lv<32> > grp_fu_880_p2;
    sc_signal< sc_lv<32> > reg_903;
    sc_signal< sc_lv<32> > grp_fu_875_p2;
    sc_signal< sc_lv<32> > reg_909;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_1769;
    sc_signal< sc_lv<32> > reg_914;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage7;
    sc_signal< sc_lv<32> > reg_919;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_1769;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage13;
    sc_signal< sc_lv<32> > reg_924;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter3_exitcond_flatten_reg_1769;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage9;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_930_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_lv<9> > indvar_flatten_next_fu_936_p2;
    sc_signal< sc_lv<9> > indvar_flatten_next_reg_1773;
    sc_signal< sc_lv<5> > j_mid2_fu_954_p3;
    sc_signal< sc_lv<5> > j_mid2_reg_1778;
    sc_signal< sc_lv<1> > tmp_mid2_fu_974_p3;
    sc_signal< sc_lv<1> > tmp_mid2_reg_1796;
    sc_signal< sc_lv<5> > i2_mid2_v_fu_982_p3;
    sc_signal< sc_lv<5> > i2_mid2_v_reg_1800;
    sc_signal< sc_lv<64> > tmp_8_fu_990_p1;
    sc_signal< sc_lv<64> > tmp_8_reg_1807;
    sc_signal< sc_lv<9> > tmp_1_fu_1004_p3;
    sc_signal< sc_lv<9> > tmp_1_reg_1837;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_lv<1> > tmp_5_fu_1030_p2;
    sc_signal< sc_lv<9> > tmp_8_cast_fu_1035_p1;
    sc_signal< sc_lv<9> > tmp_8_cast_reg_1886;
    sc_signal< sc_lv<64> > tmp_7_fu_1057_p1;
    sc_signal< sc_lv<64> > tmp_7_reg_1903;
    sc_signal< sc_lv<32> > a_row_load_fu_1078_p3;
    sc_signal< sc_lv<7> > tmp_8_cast6_fu_1091_p1;
    sc_signal< sc_lv<7> > tmp_8_cast6_reg_1937;
    sc_signal< sc_lv<32> > b_copy_0_q0;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage5;
    sc_signal< sc_lv<32> > a_row_load_1_fu_1138_p3;
    sc_signal< sc_lv<32> > b_copy_1_q0;
    sc_signal< sc_lv<32> > a_row_load_2_fu_1196_p3;
    sc_signal< sc_lv<32> > b_copy_2_q0;
    sc_signal< sc_lv<32> > tmp_11_1_reg_2027;
    sc_signal< sc_lv<32> > a_row_load_3_fu_1248_p3;
    sc_signal< sc_lv<32> > b_copy_3_q0;
    sc_signal< sc_lv<32> > tmp_11_2_reg_2057;
    sc_signal< sc_lv<32> > a_row_load_4_fu_1288_p3;
    sc_signal< sc_lv<32> > b_copy_4_q0;
    sc_signal< sc_lv<32> > a_row_load_5_fu_1326_p3;
    sc_signal< sc_lv<32> > b_copy_5_q0;
    sc_signal< sc_lv<32> > tmp_11_4_reg_2112;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage15;
    sc_signal< sc_lv<32> > a_row_load_6_fu_1379_p3;
    sc_signal< sc_lv<32> > b_copy_6_q0;
    sc_signal< sc_lv<32> > tmp_11_5_reg_2147;
    sc_signal< sc_lv<32> > a_row_load_7_fu_1423_p3;
    sc_signal< sc_lv<32> > b_copy_7_q0;
    sc_signal< sc_lv<32> > a_row_load_8_fu_1453_p3;
    sc_signal< sc_lv<32> > tmp_11_6_reg_2187;
    sc_signal< sc_lv<32> > b_copy_8_q0;
    sc_signal< sc_lv<32> > a_row_load_9_fu_1483_p3;
    sc_signal< sc_lv<32> > b_copy_9_q0;
    sc_signal< sc_lv<32> > a_row_load_10_fu_1513_p3;
    sc_signal< sc_lv<32> > tmp_11_7_reg_2232;
    sc_signal< sc_lv<32> > b_copy_10_q0;
    sc_signal< sc_lv<32> > a_row_load_11_fu_1543_p3;
    sc_signal< sc_lv<32> > tmp_11_8_reg_2257;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter1_tmp_11_8_reg_2257;
    sc_signal< sc_lv<32> > b_copy_11_q0;
    sc_signal< sc_lv<32> > a_row_load_12_fu_1573_p3;
    sc_signal< sc_lv<32> > tmp_11_9_reg_2282;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter1_tmp_11_9_reg_2282;
    sc_signal< sc_lv<32> > b_copy_12_q0;
    sc_signal< sc_lv<32> > a_row_load_13_fu_1603_p3;
    sc_signal< sc_lv<32> > tmp_11_s_reg_2307;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter1_tmp_11_s_reg_2307;
    sc_signal< sc_lv<32> > b_copy_13_q0;
    sc_signal< sc_lv<5> > j_1_fu_1616_p2;
    sc_signal< sc_lv<5> > j_1_reg_2327;
    sc_signal< sc_lv<32> > a_row_load_15_fu_1635_p3;
    sc_signal< sc_lv<32> > a_row_load_15_reg_2332;
    sc_signal< sc_lv<32> > a_row_load_14_fu_1642_p3;
    sc_signal< sc_lv<10> > tmp_54_fu_1663_p2;
    sc_signal< sc_lv<10> > tmp_54_reg_2342;
    sc_signal< sc_lv<10> > ap_pipeline_reg_pp0_iter2_tmp_54_reg_2342;
    sc_signal< sc_lv<10> > ap_pipeline_reg_pp0_iter3_tmp_54_reg_2342;
    sc_signal< sc_lv<32> > tmp_11_10_reg_2347;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter2_tmp_11_10_reg_2347;
    sc_signal< sc_lv<32> > b_copy_14_q0;
    sc_signal< sc_lv<32> > b_copy_15_q0;
    sc_signal< sc_lv<32> > b_copy_15_load_reg_2357;
    sc_signal< sc_lv<32> > tmp_11_11_reg_2362;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter2_tmp_11_11_reg_2362;
    sc_signal< sc_lv<32> > tmp_11_12_reg_2367;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter2_tmp_11_12_reg_2367;
    sc_signal< sc_lv<32> > tmp_11_13_reg_2372;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter2_tmp_11_13_reg_2372;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter3_tmp_11_13_reg_2372;
    sc_signal< sc_lv<32> > tmp_11_14_reg_2377;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter2_tmp_11_14_reg_2377;
    sc_signal< sc_lv<32> > ap_pipeline_reg_pp0_iter3_tmp_11_14_reg_2377;
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
    sc_signal< sc_lv<9> > indvar_flatten_phi_fu_846_p4;
    sc_signal< sc_lv<5> > i_phi_fu_857_p4;
    sc_signal< sc_lv<5> > j_phi_fu_868_p4;
    sc_signal< sc_lv<64> > tmp_39_fu_995_p3;
    sc_signal< sc_lv<64> > tmp_4_fu_1011_p1;
    sc_signal< sc_lv<64> > tmp_48_cast_fu_1025_p1;
    sc_signal< sc_lv<64> > tmp_41_cast_fu_1044_p1;
    sc_signal< sc_lv<64> > tmp_48_fu_1049_p3;
    sc_signal< sc_lv<64> > tmp_9_fu_1069_p3;
    sc_signal< sc_lv<64> > tmp_50_cast_fu_1100_p1;
    sc_signal< sc_lv<64> > tmp_41_fu_1105_p3;
    sc_signal< sc_lv<64> > tmp_50_fu_1113_p3;
    sc_signal< sc_lv<64> > tmp_11_fu_1129_p3;
    sc_signal< sc_lv<64> > tmp_52_cast_fu_1156_p1;
    sc_signal< sc_lv<64> > tmp_43_cast_fu_1166_p1;
    sc_signal< sc_lv<64> > tmp_52_fu_1171_p3;
    sc_signal< sc_lv<64> > tmp_13_fu_1187_p3;
    sc_signal< sc_lv<64> > tmp_54_cast_fu_1218_p1;
    sc_signal< sc_lv<64> > tmp_43_fu_1223_p3;
    sc_signal< sc_lv<64> > tmp_15_fu_1239_p3;
    sc_signal< sc_lv<64> > tmp_45_cast_fu_1266_p1;
    sc_signal< sc_lv<64> > tmp_17_fu_1279_p3;
    sc_signal< sc_lv<64> > tmp_45_fu_1301_p3;
    sc_signal< sc_lv<64> > tmp_19_fu_1317_p3;
    sc_signal< sc_lv<64> > tmp_47_cast_fu_1344_p1;
    sc_signal< sc_lv<64> > tmp_21_fu_1357_p3;
    sc_signal< sc_lv<64> > tmp_23_fu_1397_p3;
    sc_signal< sc_lv<64> > tmp_25_fu_1414_p3;
    sc_signal< sc_lv<64> > tmp_27_fu_1444_p3;
    sc_signal< sc_lv<64> > tmp_29_fu_1474_p3;
    sc_signal< sc_lv<64> > tmp_31_fu_1504_p3;
    sc_signal< sc_lv<64> > tmp_33_fu_1534_p3;
    sc_signal< sc_lv<64> > tmp_35_fu_1564_p3;
    sc_signal< sc_lv<64> > tmp_37_fu_1594_p3;
    sc_signal< sc_lv<64> > tmp_55_cast_fu_1669_p1;
    sc_signal< sc_lv<32> > a_row_load_015_fu_138;
    sc_signal< sc_lv<32> > a_row_load_29_fu_142;
    sc_signal< sc_lv<32> > a_row_load_28_fu_146;
    sc_signal< sc_lv<32> > a_row_load_27_fu_150;
    sc_signal< sc_lv<32> > a_row_load_26_fu_154;
    sc_signal< sc_lv<32> > a_row_load_25_fu_158;
    sc_signal< sc_lv<32> > a_row_load_24_fu_162;
    sc_signal< sc_lv<32> > a_row_load_23_fu_166;
    sc_signal< sc_lv<32> > a_row_load_22_fu_170;
    sc_signal< sc_lv<32> > a_row_load_21_fu_174;
    sc_signal< sc_lv<32> > a_row_load_20_fu_178;
    sc_signal< sc_lv<32> > a_row_load_19_fu_182;
    sc_signal< sc_lv<32> > a_row_load_18_fu_186;
    sc_signal< sc_lv<32> > a_row_load_17_fu_190;
    sc_signal< sc_lv<32> > a_row_load_16_fu_194;
    sc_signal< sc_lv<32> > a_row_load_s_fu_198;
    sc_signal< sc_lv<32> > a_0_Addr_A_orig;
    sc_signal< sc_lv<32> > a_1_Addr_A_orig;
    sc_signal< sc_lv<32> > grp_fu_875_p0;
    sc_signal< sc_lv<32> > grp_fu_875_p1;
    sc_signal< sc_lv<32> > grp_fu_880_p0;
    sc_signal< sc_lv<32> > grp_fu_880_p1;
    sc_signal< sc_lv<1> > exitcond_fu_948_p2;
    sc_signal< sc_lv<5> > i_1_fu_942_p2;
    sc_signal< sc_lv<1> > tmp_mid1_fu_962_p2;
    sc_signal< sc_lv<1> > tmp1_fu_968_p2;
    sc_signal< sc_lv<6> > tmp_8_cast5_fu_1016_p1;
    sc_signal< sc_lv<6> > tmp_47_fu_1019_p2;
    sc_signal< sc_lv<9> > tmp_40_fu_1038_p2;
    sc_signal< sc_lv<9> > tmp_6_fu_1064_p2;
    sc_signal< sc_lv<7> > tmp_49_fu_1094_p2;
    sc_signal< sc_lv<9> > tmp_10_fu_1124_p2;
    sc_signal< sc_lv<7> > tmp_51_fu_1151_p2;
    sc_signal< sc_lv<9> > tmp_42_fu_1161_p2;
    sc_signal< sc_lv<9> > tmp_12_fu_1182_p2;
    sc_signal< sc_lv<8> > tmp_8_cast7_fu_1209_p1;
    sc_signal< sc_lv<8> > tmp_53_fu_1212_p2;
    sc_signal< sc_lv<9> > tmp_14_fu_1234_p2;
    sc_signal< sc_lv<9> > tmp_44_fu_1261_p2;
    sc_signal< sc_lv<9> > tmp_16_fu_1274_p2;
    sc_signal< sc_lv<9> > tmp_18_fu_1312_p2;
    sc_signal< sc_lv<9> > tmp_46_fu_1339_p2;
    sc_signal< sc_lv<9> > tmp_20_fu_1352_p2;
    sc_signal< sc_lv<6> > grp_fu_1373_p0;
    sc_signal< sc_lv<9> > tmp_22_fu_1392_p2;
    sc_signal< sc_lv<9> > tmp_24_fu_1409_p2;
    sc_signal< sc_lv<9> > tmp_26_fu_1439_p2;
    sc_signal< sc_lv<9> > tmp_28_fu_1469_p2;
    sc_signal< sc_lv<9> > tmp_30_fu_1499_p2;
    sc_signal< sc_lv<9> > tmp_32_fu_1529_p2;
    sc_signal< sc_lv<9> > tmp_34_fu_1559_p2;
    sc_signal< sc_lv<9> > tmp_36_fu_1589_p2;
    sc_signal< sc_lv<6> > grp_fu_1373_p2;
    sc_signal< sc_lv<10> > tmp_38_fu_1627_p3;
    sc_signal< sc_lv<10> > tmp_7_cast_fu_1660_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state90;
    sc_signal< sc_lv<26> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<26> ap_ST_fsm_state1;
    static const sc_lv<26> ap_ST_fsm_pp0_stage0;
    static const sc_lv<26> ap_ST_fsm_pp0_stage1;
    static const sc_lv<26> ap_ST_fsm_pp0_stage2;
    static const sc_lv<26> ap_ST_fsm_pp0_stage3;
    static const sc_lv<26> ap_ST_fsm_pp0_stage4;
    static const sc_lv<26> ap_ST_fsm_pp0_stage5;
    static const sc_lv<26> ap_ST_fsm_pp0_stage6;
    static const sc_lv<26> ap_ST_fsm_pp0_stage7;
    static const sc_lv<26> ap_ST_fsm_pp0_stage8;
    static const sc_lv<26> ap_ST_fsm_pp0_stage9;
    static const sc_lv<26> ap_ST_fsm_pp0_stage10;
    static const sc_lv<26> ap_ST_fsm_pp0_stage11;
    static const sc_lv<26> ap_ST_fsm_pp0_stage12;
    static const sc_lv<26> ap_ST_fsm_pp0_stage13;
    static const sc_lv<26> ap_ST_fsm_pp0_stage14;
    static const sc_lv<26> ap_ST_fsm_pp0_stage15;
    static const sc_lv<26> ap_ST_fsm_pp0_stage16;
    static const sc_lv<26> ap_ST_fsm_pp0_stage17;
    static const sc_lv<26> ap_ST_fsm_pp0_stage18;
    static const sc_lv<26> ap_ST_fsm_pp0_stage19;
    static const sc_lv<26> ap_ST_fsm_pp0_stage20;
    static const sc_lv<26> ap_ST_fsm_pp0_stage21;
    static const sc_lv<26> ap_ST_fsm_pp0_stage22;
    static const sc_lv<26> ap_ST_fsm_pp0_stage23;
    static const sc_lv<26> ap_ST_fsm_state90;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<59> ap_const_lv59_8;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<9> ap_const_lv9_110;
    static const sc_lv<59> ap_const_lv59_1;
    static const sc_lv<55> ap_const_lv55_0;
    static const sc_lv<7> ap_const_lv7_30;
    static const sc_lv<59> ap_const_lv59_9;
    static const sc_lv<59> ap_const_lv59_2;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<7> ap_const_lv7_50;
    static const sc_lv<9> ap_const_lv9_130;
    static const sc_lv<59> ap_const_lv59_3;
    static const sc_lv<9> ap_const_lv9_3;
    static const sc_lv<8> ap_const_lv8_70;
    static const sc_lv<59> ap_const_lv59_A;
    static const sc_lv<9> ap_const_lv9_4;
    static const sc_lv<9> ap_const_lv9_150;
    static const sc_lv<9> ap_const_lv9_5;
    static const sc_lv<59> ap_const_lv59_B;
    static const sc_lv<9> ap_const_lv9_6;
    static const sc_lv<9> ap_const_lv9_170;
    static const sc_lv<9> ap_const_lv9_7;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<9> ap_const_lv9_8;
    static const sc_lv<9> ap_const_lv9_9;
    static const sc_lv<9> ap_const_lv9_A;
    static const sc_lv<9> ap_const_lv9_B;
    static const sc_lv<9> ap_const_lv9_C;
    static const sc_lv<9> ap_const_lv9_D;
    static const sc_lv<9> ap_const_lv9_E;
    static const sc_lv<9> ap_const_lv9_F;
    static const sc_lv<32> ap_const_lv32_19;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
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
    void thread_a_row_load_10_fu_1513_p3();
    void thread_a_row_load_11_fu_1543_p3();
    void thread_a_row_load_12_fu_1573_p3();
    void thread_a_row_load_13_fu_1603_p3();
    void thread_a_row_load_14_fu_1642_p3();
    void thread_a_row_load_15_fu_1635_p3();
    void thread_a_row_load_1_fu_1138_p3();
    void thread_a_row_load_2_fu_1196_p3();
    void thread_a_row_load_3_fu_1248_p3();
    void thread_a_row_load_4_fu_1288_p3();
    void thread_a_row_load_5_fu_1326_p3();
    void thread_a_row_load_6_fu_1379_p3();
    void thread_a_row_load_7_fu_1423_p3();
    void thread_a_row_load_8_fu_1453_p3();
    void thread_a_row_load_9_fu_1483_p3();
    void thread_a_row_load_fu_1078_p3();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage10();
    void thread_ap_CS_fsm_pp0_stage11();
    void thread_ap_CS_fsm_pp0_stage12();
    void thread_ap_CS_fsm_pp0_stage13();
    void thread_ap_CS_fsm_pp0_stage14();
    void thread_ap_CS_fsm_pp0_stage15();
    void thread_ap_CS_fsm_pp0_stage16();
    void thread_ap_CS_fsm_pp0_stage17();
    void thread_ap_CS_fsm_pp0_stage18();
    void thread_ap_CS_fsm_pp0_stage19();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage20();
    void thread_ap_CS_fsm_pp0_stage21();
    void thread_ap_CS_fsm_pp0_stage22();
    void thread_ap_CS_fsm_pp0_stage23();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_pp0_stage8();
    void thread_ap_CS_fsm_pp0_stage9();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state90();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
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
    void thread_exitcond_flatten_fu_930_p2();
    void thread_exitcond_fu_948_p2();
    void thread_grp_fu_1373_p0();
    void thread_grp_fu_875_p0();
    void thread_grp_fu_875_p1();
    void thread_grp_fu_880_p0();
    void thread_grp_fu_880_p1();
    void thread_i2_mid2_v_fu_982_p3();
    void thread_i_1_fu_942_p2();
    void thread_i_phi_fu_857_p4();
    void thread_indvar_flatten_next_fu_936_p2();
    void thread_indvar_flatten_phi_fu_846_p4();
    void thread_j_1_fu_1616_p2();
    void thread_j_mid2_fu_954_p3();
    void thread_j_phi_fu_868_p4();
    void thread_tmp1_fu_968_p2();
    void thread_tmp_10_fu_1124_p2();
    void thread_tmp_11_fu_1129_p3();
    void thread_tmp_12_fu_1182_p2();
    void thread_tmp_13_fu_1187_p3();
    void thread_tmp_14_fu_1234_p2();
    void thread_tmp_15_fu_1239_p3();
    void thread_tmp_16_fu_1274_p2();
    void thread_tmp_17_fu_1279_p3();
    void thread_tmp_18_fu_1312_p2();
    void thread_tmp_19_fu_1317_p3();
    void thread_tmp_1_fu_1004_p3();
    void thread_tmp_20_fu_1352_p2();
    void thread_tmp_21_fu_1357_p3();
    void thread_tmp_22_fu_1392_p2();
    void thread_tmp_23_fu_1397_p3();
    void thread_tmp_24_fu_1409_p2();
    void thread_tmp_25_fu_1414_p3();
    void thread_tmp_26_fu_1439_p2();
    void thread_tmp_27_fu_1444_p3();
    void thread_tmp_28_fu_1469_p2();
    void thread_tmp_29_fu_1474_p3();
    void thread_tmp_30_fu_1499_p2();
    void thread_tmp_31_fu_1504_p3();
    void thread_tmp_32_fu_1529_p2();
    void thread_tmp_33_fu_1534_p3();
    void thread_tmp_34_fu_1559_p2();
    void thread_tmp_35_fu_1564_p3();
    void thread_tmp_36_fu_1589_p2();
    void thread_tmp_37_fu_1594_p3();
    void thread_tmp_38_fu_1627_p3();
    void thread_tmp_39_fu_995_p3();
    void thread_tmp_40_fu_1038_p2();
    void thread_tmp_41_cast_fu_1044_p1();
    void thread_tmp_41_fu_1105_p3();
    void thread_tmp_42_fu_1161_p2();
    void thread_tmp_43_cast_fu_1166_p1();
    void thread_tmp_43_fu_1223_p3();
    void thread_tmp_44_fu_1261_p2();
    void thread_tmp_45_cast_fu_1266_p1();
    void thread_tmp_45_fu_1301_p3();
    void thread_tmp_46_fu_1339_p2();
    void thread_tmp_47_cast_fu_1344_p1();
    void thread_tmp_47_fu_1019_p2();
    void thread_tmp_48_cast_fu_1025_p1();
    void thread_tmp_48_fu_1049_p3();
    void thread_tmp_49_fu_1094_p2();
    void thread_tmp_4_fu_1011_p1();
    void thread_tmp_50_cast_fu_1100_p1();
    void thread_tmp_50_fu_1113_p3();
    void thread_tmp_51_fu_1151_p2();
    void thread_tmp_52_cast_fu_1156_p1();
    void thread_tmp_52_fu_1171_p3();
    void thread_tmp_53_fu_1212_p2();
    void thread_tmp_54_cast_fu_1218_p1();
    void thread_tmp_54_fu_1663_p2();
    void thread_tmp_55_cast_fu_1669_p1();
    void thread_tmp_5_fu_1030_p2();
    void thread_tmp_6_fu_1064_p2();
    void thread_tmp_7_cast_fu_1660_p1();
    void thread_tmp_7_fu_1057_p1();
    void thread_tmp_8_cast5_fu_1016_p1();
    void thread_tmp_8_cast6_fu_1091_p1();
    void thread_tmp_8_cast7_fu_1209_p1();
    void thread_tmp_8_cast_fu_1035_p1();
    void thread_tmp_8_fu_990_p1();
    void thread_tmp_9_fu_1069_p3();
    void thread_tmp_mid1_fu_962_p2();
    void thread_tmp_mid2_fu_974_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif