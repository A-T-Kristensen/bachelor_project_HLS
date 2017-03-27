// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrixmul_HH_
#define _matrixmul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrixmul_mux_42_bkb.h"
#include "matrixmul_mul_32scud.h"

namespace ap_rtl {

struct matrixmul : public sc_module {
    // Port declarations 48
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
    sc_out< sc_lv<32> > a_2_Addr_A;
    sc_out< sc_logic > a_2_EN_A;
    sc_out< sc_lv<4> > a_2_WEN_A;
    sc_out< sc_lv<32> > a_2_Din_A;
    sc_in< sc_lv<32> > a_2_Dout_A;
    sc_out< sc_logic > a_2_Clk_A;
    sc_out< sc_logic > a_2_Rst_A;
    sc_out< sc_lv<32> > a_3_Addr_A;
    sc_out< sc_logic > a_3_EN_A;
    sc_out< sc_lv<4> > a_3_WEN_A;
    sc_out< sc_lv<32> > a_3_Din_A;
    sc_in< sc_lv<32> > a_3_Dout_A;
    sc_out< sc_logic > a_3_Clk_A;
    sc_out< sc_logic > a_3_Rst_A;
    sc_out< sc_lv<32> > a_4_Addr_A;
    sc_out< sc_logic > a_4_EN_A;
    sc_out< sc_lv<4> > a_4_WEN_A;
    sc_out< sc_lv<32> > a_4_Din_A;
    sc_in< sc_lv<32> > a_4_Dout_A;
    sc_out< sc_logic > a_4_Clk_A;
    sc_out< sc_logic > a_4_Rst_A;
    sc_out< sc_lv<32> > a_5_Addr_A;
    sc_out< sc_logic > a_5_EN_A;
    sc_out< sc_lv<4> > a_5_WEN_A;
    sc_out< sc_lv<32> > a_5_Din_A;
    sc_in< sc_lv<32> > a_5_Dout_A;
    sc_out< sc_logic > a_5_Clk_A;
    sc_out< sc_logic > a_5_Rst_A;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_mux_42_bkb<1,1,32,32,32,32,2,32>* matrixmul_mux_42_bkb_U1;
    matrixmul_mul_32scud<1,6,32,32,32>* matrixmul_mul_32scud_U2;
    matrixmul_mux_42_bkb<1,1,32,32,32,32,2,32>* matrixmul_mux_42_bkb_U3;
    matrixmul_mux_42_bkb<1,1,32,32,32,32,2,32>* matrixmul_mux_42_bkb_U4;
    matrixmul_mux_42_bkb<1,1,32,32,32,32,2,32>* matrixmul_mux_42_bkb_U5;
    matrixmul_mul_32scud<1,6,32,32,32>* matrixmul_mul_32scud_U6;
    matrixmul_mul_32scud<1,6,32,32,32>* matrixmul_mul_32scud_U7;
    matrixmul_mul_32scud<1,6,32,32,32>* matrixmul_mul_32scud_U8;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > indvar_flatten_reg_308;
    sc_signal< sc_lv<3> > i_reg_319;
    sc_signal< sc_lv<3> > j_reg_330;
    sc_signal< sc_lv<32> > grp_fu_341_p3;
    sc_signal< sc_lv<32> > reg_348;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1440;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage3;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_406_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_1440;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_1440;
    sc_signal< sc_lv<5> > indvar_flatten_next_fu_412_p2;
    sc_signal< sc_lv<5> > indvar_flatten_next_reg_1444;
    sc_signal< sc_lv<3> > j_mid2_fu_430_p3;
    sc_signal< sc_lv<3> > j_mid2_reg_1449;
    sc_signal< sc_lv<1> > tmp_mid2_fu_444_p3;
    sc_signal< sc_lv<1> > tmp_mid2_reg_1456;
    sc_signal< sc_lv<3> > newIndex1_mid2_v_v_fu_452_p3;
    sc_signal< sc_lv<3> > newIndex1_mid2_v_v_reg_1476;
    sc_signal< sc_lv<3> > tmp_11_fu_460_p2;
    sc_signal< sc_lv<3> > tmp_11_reg_1481;
    sc_signal< sc_lv<1> > cond1_mid2_fu_488_p3;
    sc_signal< sc_lv<1> > cond1_mid2_reg_1499;
    sc_signal< sc_lv<1> > cond_mid2_fu_528_p3;
    sc_signal< sc_lv<1> > cond_mid2_reg_1505;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter1_cond_mid2_reg_1505;
    sc_signal< sc_lv<1> > ap_pipeline_reg_pp0_iter2_cond_mid2_reg_1505;
    sc_signal< sc_lv<2> > tmp_23_fu_542_p1;
    sc_signal< sc_lv<2> > tmp_23_reg_1519;
    sc_signal< sc_lv<1> > tmp_5_fu_573_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_1540;
    sc_signal< sc_lv<1> > sel_tmp1_fu_578_p2;
    sc_signal< sc_lv<1> > sel_tmp1_reg_1548;
    sc_signal< sc_lv<4> > tmp_8_cast_fu_583_p1;
    sc_signal< sc_lv<4> > tmp_8_cast_reg_1556;
    sc_signal< sc_lv<1> > sel_tmp5_fu_598_p2;
    sc_signal< sc_lv<1> > sel_tmp5_reg_1571;
    sc_signal< sc_lv<1> > sel_tmp7_fu_611_p2;
    sc_signal< sc_lv<1> > sel_tmp7_reg_1581;
    sc_signal< sc_lv<1> > sel_tmp9_fu_624_p2;
    sc_signal< sc_lv<1> > sel_tmp9_reg_1594;
    sc_signal< sc_lv<32> > b_copy_2_3_19_reg_1610;
    sc_signal< sc_lv<32> > tmp_2_fu_713_p6;
    sc_signal< sc_lv<32> > tmp_2_reg_1618;
    sc_signal< sc_lv<3> > j_1_fu_746_p2;
    sc_signal< sc_lv<3> > j_1_reg_1623;
    sc_signal< sc_lv<32> > a_row_0_2_fu_812_p3;
    sc_signal< sc_lv<32> > tmp_6_fu_1093_p6;
    sc_signal< sc_lv<32> > tmp_6_reg_1643;
    sc_signal< sc_lv<32> > tmp_7_fu_1106_p6;
    sc_signal< sc_lv<32> > tmp_7_reg_1648;
    sc_signal< sc_lv<32> > tmp_9_fu_1119_p6;
    sc_signal< sc_lv<32> > tmp_9_reg_1653;
    sc_signal< sc_lv<32> > a_row_1_2_fu_1225_p3;
    sc_signal< sc_lv<4> > tmp_21_fu_1232_p2;
    sc_signal< sc_lv<4> > tmp_21_reg_1673;
    sc_signal< sc_lv<4> > ap_pipeline_reg_pp0_iter1_tmp_21_reg_1673;
    sc_signal< sc_lv<32> > a_row_3_2_fu_1260_p3;
    sc_signal< sc_lv<32> > a_row_3_2_reg_1678;
    sc_signal< sc_lv<32> > a_row_2_2_fu_1274_p3;
    sc_signal< sc_lv<32> > grp_fu_1088_p2;
    sc_signal< sc_lv<32> > tmp_s_reg_1688;
    sc_signal< sc_lv<32> > grp_fu_1237_p2;
    sc_signal< sc_lv<32> > tmp_11_1_reg_1693;
    sc_signal< sc_lv<32> > grp_fu_1281_p2;
    sc_signal< sc_lv<32> > tmp_11_2_reg_1698;
    sc_signal< sc_lv<32> > grp_fu_1296_p2;
    sc_signal< sc_lv<32> > tmp_11_3_reg_1703;
    sc_signal< sc_lv<32> > tmp10_fu_1300_p2;
    sc_signal< sc_lv<32> > tmp10_reg_1708;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<5> > indvar_flatten_phi_fu_312_p4;
    sc_signal< sc_lv<3> > i_phi_fu_323_p4;
    sc_signal< sc_lv<3> > j_phi_fu_334_p4;
    sc_signal< sc_lv<64> > tmp_12_fu_466_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_536_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_563_p3;
    sc_signal< sc_lv<64> > tmp_20_cast_fu_592_p1;
    sc_signal< sc_lv<64> > tmp_16_fu_795_p3;
    sc_signal< sc_lv<64> > tmp_18_fu_1208_p3;
    sc_signal< sc_lv<64> > tmp_21_cast_fu_1304_p1;
    sc_signal< sc_lv<32> > a_row_0_3_fu_92;
    sc_signal< sc_lv<32> > a_row_1_3_fu_96;
    sc_signal< sc_lv<32> > a_row_2_3_fu_100;
    sc_signal< sc_lv<32> > a_row_3_1_fu_104;
    sc_signal< sc_lv<32> > b_copy_0_3_11_fu_108;
    sc_signal< sc_lv<32> > b_copy_0_3_18_fu_706_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_8_fu_112;
    sc_signal< sc_lv<32> > b_copy_0_3_17_fu_699_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_12_fu_116;
    sc_signal< sc_lv<32> > b_copy_0_3_16_fu_692_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_1_fu_120;
    sc_signal< sc_lv<32> > b_copy_0_3_3_fu_685_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_11_fu_124;
    sc_signal< sc_lv<32> > b_copy_1_3_18_fu_1081_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_8_fu_128;
    sc_signal< sc_lv<32> > b_copy_1_3_17_fu_1074_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_12_fu_132;
    sc_signal< sc_lv<32> > b_copy_1_3_16_fu_1067_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_1_fu_136;
    sc_signal< sc_lv<32> > b_copy_1_3_3_fu_1060_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_11_fu_140;
    sc_signal< sc_lv<32> > b_copy_2_3_18_fu_1053_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_8_fu_144;
    sc_signal< sc_lv<32> > b_copy_2_3_17_fu_1046_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_12_fu_148;
    sc_signal< sc_lv<32> > b_copy_2_3_16_fu_1039_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_1_fu_152;
    sc_signal< sc_lv<32> > b_copy_2_3_3_fu_1032_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_11_fu_156;
    sc_signal< sc_lv<32> > b_copy_3_3_18_fu_1025_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_8_fu_160;
    sc_signal< sc_lv<32> > b_copy_3_3_17_fu_1018_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_12_fu_164;
    sc_signal< sc_lv<32> > b_copy_3_3_16_fu_1011_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_1_fu_168;
    sc_signal< sc_lv<32> > b_copy_3_3_3_fu_1004_p3;
    sc_signal< sc_lv<32> > a_0_Addr_A_orig;
    sc_signal< sc_lv<32> > a_1_Addr_A_orig;
    sc_signal< sc_lv<32> > a_2_Addr_A_orig;
    sc_signal< sc_lv<32> > a_3_Addr_A_orig;
    sc_signal< sc_lv<32> > tmp_12_3_fu_1313_p2;
    sc_signal< sc_lv<32> > a_5_Addr_A_orig;
    sc_signal< sc_lv<32> > a_4_Addr_A_orig;
    sc_signal< sc_lv<2> > tmp_10_fu_358_p4;
    sc_signal< sc_lv<2> > tmp_3_fu_374_p4;
    sc_signal< sc_lv<4> > tmp_1_fu_384_p4;
    sc_signal< sc_lv<4> > arrayNo92_mask_fu_394_p2;
    sc_signal< sc_lv<1> > exitcond_fu_424_p2;
    sc_signal< sc_lv<3> > i_1_fu_418_p2;
    sc_signal< sc_lv<1> > tmp_mid1_fu_438_p2;
    sc_signal< sc_lv<1> > tmp_fu_352_p2;
    sc_signal< sc_lv<2> > tmp_22_fu_472_p4;
    sc_signal< sc_lv<1> > icmp8_fu_482_p2;
    sc_signal< sc_lv<1> > icmp_fu_368_p2;
    sc_signal< sc_lv<2> > tmp_19_fu_496_p4;
    sc_signal< sc_lv<4> > tmp_1_mid1_fu_506_p4;
    sc_signal< sc_lv<4> > arrayNo92_mask_mid1_fu_516_p2;
    sc_signal< sc_lv<1> > cond_mid1_fu_522_p2;
    sc_signal< sc_lv<1> > cond_fu_400_p2;
    sc_signal< sc_lv<3> > tmp_13_fu_558_p2;
    sc_signal< sc_lv<4> > tmp_20_fu_586_p2;
    sc_signal< sc_lv<32> > b_copy_0_3_fu_603_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_4_fu_616_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_5_fu_637_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_6_fu_645_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_9_fu_661_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_2_fu_629_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_7_fu_653_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_14_fu_669_p3;
    sc_signal< sc_lv<32> > b_copy_0_3_15_fu_677_p3;
    sc_signal< sc_lv<32> > tmp_2_fu_713_p1;
    sc_signal< sc_lv<32> > tmp_2_fu_713_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_713_p3;
    sc_signal< sc_lv<32> > tmp_2_fu_713_p4;
    sc_signal< sc_lv<3> > tmp_15_fu_790_p2;
    sc_signal< sc_lv<32> > a_row_0_1_fu_805_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_fu_819_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_4_fu_826_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_5_fu_840_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_6_fu_847_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_9_fu_861_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_fu_882_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_4_fu_888_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_5_fu_902_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_6_fu_908_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_9_fu_922_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_fu_941_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_4_fu_948_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_5_fu_962_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_6_fu_969_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_9_fu_983_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_2_fu_955_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_7_fu_976_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_14_fu_990_p3;
    sc_signal< sc_lv<32> > b_copy_3_3_15_fu_997_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_2_fu_895_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_7_fu_915_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_14_fu_928_p3;
    sc_signal< sc_lv<32> > b_copy_2_3_15_fu_935_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_2_fu_833_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_7_fu_854_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_14_fu_868_p3;
    sc_signal< sc_lv<32> > b_copy_1_3_15_fu_875_p3;
    sc_signal< sc_lv<32> > grp_fu_1088_p0;
    sc_signal< sc_lv<32> > tmp_6_fu_1093_p1;
    sc_signal< sc_lv<32> > tmp_6_fu_1093_p2;
    sc_signal< sc_lv<32> > tmp_6_fu_1093_p3;
    sc_signal< sc_lv<32> > tmp_6_fu_1093_p4;
    sc_signal< sc_lv<32> > tmp_7_fu_1106_p1;
    sc_signal< sc_lv<32> > tmp_7_fu_1106_p2;
    sc_signal< sc_lv<32> > tmp_7_fu_1106_p3;
    sc_signal< sc_lv<32> > tmp_7_fu_1106_p4;
    sc_signal< sc_lv<32> > tmp_9_fu_1119_p1;
    sc_signal< sc_lv<32> > tmp_9_fu_1119_p2;
    sc_signal< sc_lv<32> > tmp_9_fu_1119_p3;
    sc_signal< sc_lv<32> > tmp_9_fu_1119_p4;
    sc_signal< sc_lv<3> > tmp_17_fu_1203_p2;
    sc_signal< sc_lv<32> > a_row_1_1_fu_1218_p3;
    sc_signal< sc_lv<4> > tmp_12_cast_fu_1200_p1;
    sc_signal< sc_lv<32> > grp_fu_1237_p0;
    sc_signal< sc_lv<32> > sel_tmp_fu_1253_p3;
    sc_signal< sc_lv<32> > a_row_2_1_fu_1267_p3;
    sc_signal< sc_lv<32> > grp_fu_1281_p0;
    sc_signal< sc_lv<32> > tmp11_fu_1309_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage2;
    static const sc_lv<6> ap_ST_fsm_pp0_stage3;
    static const sc_lv<6> ap_ST_fsm_state14;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<61> ap_const_lv61_0;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<32> ap_const_lv32_5;
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
    void thread_a_2_Addr_A();
    void thread_a_2_Addr_A_orig();
    void thread_a_2_Clk_A();
    void thread_a_2_Din_A();
    void thread_a_2_EN_A();
    void thread_a_2_Rst_A();
    void thread_a_2_WEN_A();
    void thread_a_3_Addr_A();
    void thread_a_3_Addr_A_orig();
    void thread_a_3_Clk_A();
    void thread_a_3_Din_A();
    void thread_a_3_EN_A();
    void thread_a_3_Rst_A();
    void thread_a_3_WEN_A();
    void thread_a_4_Addr_A();
    void thread_a_4_Addr_A_orig();
    void thread_a_4_Clk_A();
    void thread_a_4_Din_A();
    void thread_a_4_EN_A();
    void thread_a_4_Rst_A();
    void thread_a_4_WEN_A();
    void thread_a_5_Addr_A();
    void thread_a_5_Addr_A_orig();
    void thread_a_5_Clk_A();
    void thread_a_5_Din_A();
    void thread_a_5_EN_A();
    void thread_a_5_Rst_A();
    void thread_a_5_WEN_A();
    void thread_a_row_0_1_fu_805_p3();
    void thread_a_row_0_2_fu_812_p3();
    void thread_a_row_1_1_fu_1218_p3();
    void thread_a_row_1_2_fu_1225_p3();
    void thread_a_row_2_1_fu_1267_p3();
    void thread_a_row_2_2_fu_1274_p3();
    void thread_a_row_3_2_fu_1260_p3();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state14();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_arrayNo92_mask_fu_394_p2();
    void thread_arrayNo92_mask_mid1_fu_516_p2();
    void thread_b_copy_0_3_14_fu_669_p3();
    void thread_b_copy_0_3_15_fu_677_p3();
    void thread_b_copy_0_3_16_fu_692_p3();
    void thread_b_copy_0_3_17_fu_699_p3();
    void thread_b_copy_0_3_18_fu_706_p3();
    void thread_b_copy_0_3_2_fu_629_p3();
    void thread_b_copy_0_3_3_fu_685_p3();
    void thread_b_copy_0_3_4_fu_616_p3();
    void thread_b_copy_0_3_5_fu_637_p3();
    void thread_b_copy_0_3_6_fu_645_p3();
    void thread_b_copy_0_3_7_fu_653_p3();
    void thread_b_copy_0_3_9_fu_661_p3();
    void thread_b_copy_0_3_fu_603_p3();
    void thread_b_copy_1_3_14_fu_868_p3();
    void thread_b_copy_1_3_15_fu_875_p3();
    void thread_b_copy_1_3_16_fu_1067_p3();
    void thread_b_copy_1_3_17_fu_1074_p3();
    void thread_b_copy_1_3_18_fu_1081_p3();
    void thread_b_copy_1_3_2_fu_833_p3();
    void thread_b_copy_1_3_3_fu_1060_p3();
    void thread_b_copy_1_3_4_fu_826_p3();
    void thread_b_copy_1_3_5_fu_840_p3();
    void thread_b_copy_1_3_6_fu_847_p3();
    void thread_b_copy_1_3_7_fu_854_p3();
    void thread_b_copy_1_3_9_fu_861_p3();
    void thread_b_copy_1_3_fu_819_p3();
    void thread_b_copy_2_3_14_fu_928_p3();
    void thread_b_copy_2_3_15_fu_935_p3();
    void thread_b_copy_2_3_16_fu_1039_p3();
    void thread_b_copy_2_3_17_fu_1046_p3();
    void thread_b_copy_2_3_18_fu_1053_p3();
    void thread_b_copy_2_3_2_fu_895_p3();
    void thread_b_copy_2_3_3_fu_1032_p3();
    void thread_b_copy_2_3_4_fu_888_p3();
    void thread_b_copy_2_3_5_fu_902_p3();
    void thread_b_copy_2_3_6_fu_908_p3();
    void thread_b_copy_2_3_7_fu_915_p3();
    void thread_b_copy_2_3_9_fu_922_p3();
    void thread_b_copy_2_3_fu_882_p3();
    void thread_b_copy_3_3_14_fu_990_p3();
    void thread_b_copy_3_3_15_fu_997_p3();
    void thread_b_copy_3_3_16_fu_1011_p3();
    void thread_b_copy_3_3_17_fu_1018_p3();
    void thread_b_copy_3_3_18_fu_1025_p3();
    void thread_b_copy_3_3_2_fu_955_p3();
    void thread_b_copy_3_3_3_fu_1004_p3();
    void thread_b_copy_3_3_4_fu_948_p3();
    void thread_b_copy_3_3_5_fu_962_p3();
    void thread_b_copy_3_3_6_fu_969_p3();
    void thread_b_copy_3_3_7_fu_976_p3();
    void thread_b_copy_3_3_9_fu_983_p3();
    void thread_b_copy_3_3_fu_941_p3();
    void thread_cond1_mid2_fu_488_p3();
    void thread_cond_fu_400_p2();
    void thread_cond_mid1_fu_522_p2();
    void thread_cond_mid2_fu_528_p3();
    void thread_exitcond_flatten_fu_406_p2();
    void thread_exitcond_fu_424_p2();
    void thread_grp_fu_1088_p0();
    void thread_grp_fu_1237_p0();
    void thread_grp_fu_1281_p0();
    void thread_grp_fu_341_p3();
    void thread_i_1_fu_418_p2();
    void thread_i_phi_fu_323_p4();
    void thread_icmp8_fu_482_p2();
    void thread_icmp_fu_368_p2();
    void thread_indvar_flatten_next_fu_412_p2();
    void thread_indvar_flatten_phi_fu_312_p4();
    void thread_j_1_fu_746_p2();
    void thread_j_mid2_fu_430_p3();
    void thread_j_phi_fu_334_p4();
    void thread_newIndex1_mid2_v_v_fu_452_p3();
    void thread_sel_tmp1_fu_578_p2();
    void thread_sel_tmp5_fu_598_p2();
    void thread_sel_tmp7_fu_611_p2();
    void thread_sel_tmp9_fu_624_p2();
    void thread_sel_tmp_fu_1253_p3();
    void thread_tmp10_fu_1300_p2();
    void thread_tmp11_fu_1309_p2();
    void thread_tmp_10_fu_358_p4();
    void thread_tmp_11_fu_460_p2();
    void thread_tmp_12_3_fu_1313_p2();
    void thread_tmp_12_cast_fu_1200_p1();
    void thread_tmp_12_fu_466_p1();
    void thread_tmp_13_fu_558_p2();
    void thread_tmp_14_fu_563_p3();
    void thread_tmp_15_fu_790_p2();
    void thread_tmp_16_fu_795_p3();
    void thread_tmp_17_fu_1203_p2();
    void thread_tmp_18_fu_1208_p3();
    void thread_tmp_19_fu_496_p4();
    void thread_tmp_1_fu_384_p4();
    void thread_tmp_1_mid1_fu_506_p4();
    void thread_tmp_20_cast_fu_592_p1();
    void thread_tmp_20_fu_586_p2();
    void thread_tmp_21_cast_fu_1304_p1();
    void thread_tmp_21_fu_1232_p2();
    void thread_tmp_22_fu_472_p4();
    void thread_tmp_23_fu_542_p1();
    void thread_tmp_2_fu_713_p1();
    void thread_tmp_2_fu_713_p2();
    void thread_tmp_2_fu_713_p3();
    void thread_tmp_2_fu_713_p4();
    void thread_tmp_3_fu_374_p4();
    void thread_tmp_5_fu_573_p2();
    void thread_tmp_6_fu_1093_p1();
    void thread_tmp_6_fu_1093_p2();
    void thread_tmp_6_fu_1093_p3();
    void thread_tmp_6_fu_1093_p4();
    void thread_tmp_7_fu_1106_p1();
    void thread_tmp_7_fu_1106_p2();
    void thread_tmp_7_fu_1106_p3();
    void thread_tmp_7_fu_1106_p4();
    void thread_tmp_8_cast_fu_583_p1();
    void thread_tmp_8_fu_536_p1();
    void thread_tmp_9_fu_1119_p1();
    void thread_tmp_9_fu_1119_p2();
    void thread_tmp_9_fu_1119_p3();
    void thread_tmp_9_fu_1119_p4();
    void thread_tmp_fu_352_p2();
    void thread_tmp_mid1_fu_438_p2();
    void thread_tmp_mid2_fu_444_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
