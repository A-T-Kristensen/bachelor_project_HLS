// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _quantl_HH_
#define _quantl_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "adpcm_main_mul_32hbi.h"
#include "quantl_decis_levl.h"
#include "quantl_quant26bt_fYi.h"
#include "quantl_quant26bt_g8j.h"

namespace ap_rtl {

struct quantl : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > el;
    sc_in< sc_lv<32> > detl;
    sc_out< sc_lv<6> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    quantl(sc_module_name name);
    SC_HAS_PROCESS(quantl);

    ~quantl();

    sc_trace_file* mVcdFile;

    quantl_decis_levl* decis_levl_U;
    quantl_quant26bt_fYi* quant26bt_pos_U;
    quantl_quant26bt_g8j* quant26bt_neg_U;
    adpcm_main_mul_32hbi<1,4,32,15,47>* adpcm_main_mul_32hbi_U33;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_s_reg_348;
    sc_signal< sc_lv<1> > tmp_33_fu_309_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<5> > decis_levl_address0;
    sc_signal< sc_logic > decis_levl_ce0;
    sc_signal< sc_lv<15> > decis_levl_q0;
    sc_signal< sc_lv<5> > quant26bt_pos_address0;
    sc_signal< sc_logic > quant26bt_pos_ce0;
    sc_signal< sc_lv<6> > quant26bt_pos_q0;
    sc_signal< sc_lv<5> > quant26bt_neg_address0;
    sc_signal< sc_logic > quant26bt_neg_ce0;
    sc_signal< sc_lv<6> > quant26bt_neg_q0;
    sc_signal< sc_lv<1> > do_init_reg_116;
    sc_signal< sc_lv<32> > n_assign_rewind_reg_133;
    sc_signal< sc_lv<1> > p_rewind_reg_148;
    sc_signal< sc_lv<32> > detl2_rewind_reg_163;
    sc_signal< sc_lv<5> > mil_reg_178;
    sc_signal< sc_lv<32> > n_assign_phi_reg_193;
    sc_signal< sc_lv<1> > p_phi_reg_205;
    sc_signal< sc_lv<32> > detl2_phi_reg_217;
    sc_signal< sc_lv<5> > mil_1_fu_229_p2;
    sc_signal< sc_lv<5> > mil_1_reg_240;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_lv<1> > do_init_phi_fu_121_p6;
    sc_signal< sc_lv<1> > tmp_fu_256_p3;
    sc_signal< sc_lv<32> > n_assign_fu_270_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_278_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_lv<1> > tmp_33_reg_367;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_preg;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > n_assign_rewind_phi_fu_137_p6;
    sc_signal< sc_lv<1> > p_rewind_phi_fu_152_p6;
    sc_signal< sc_lv<32> > detl2_rewind_phi_fu_167_p6;
    sc_signal< sc_lv<5> > mil_phi_fu_182_p6;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter0_n_assign_phi_reg_193;
    sc_signal< sc_lv<1> > ap_phi_precharge_reg_pp0_iter0_p_phi_reg_205;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter0_detl2_phi_reg_217;
    sc_signal< sc_lv<64> > tmp_31_fu_284_p1;
    sc_signal< sc_lv<64> > tmp_34_fu_315_p1;
    sc_signal< sc_lv<15> > grp_fu_245_p1;
    sc_signal< sc_lv<32> > m_fu_264_p2;
    sc_signal< sc_lv<47> > grp_fu_245_p2;
    sc_signal< sc_lv<32> > tmp_2_fu_299_p4;
    sc_signal< sc_lv<6> > ril_2_fu_321_p3;
    sc_signal< sc_lv<6> > ap_return_preg;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_pipeline_idle_pp0;
    sc_signal< sc_lv<47> > grp_fu_245_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage2;
    static const sc_lv<6> ap_ST_fsm_pp0_stage3;
    static const sc_lv<6> ap_ST_fsm_pp0_stage4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<6> ap_const_lv6_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_pipeline_idle_pp0();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_decis_levl_address0();
    void thread_decis_levl_ce0();
    void thread_detl2_rewind_phi_fu_167_p6();
    void thread_do_init_phi_fu_121_p6();
    void thread_grp_fu_245_p1();
    void thread_grp_fu_245_p10();
    void thread_m_fu_264_p2();
    void thread_mil_1_fu_229_p2();
    void thread_mil_phi_fu_182_p6();
    void thread_n_assign_fu_270_p3();
    void thread_n_assign_rewind_phi_fu_137_p6();
    void thread_p_rewind_phi_fu_152_p6();
    void thread_quant26bt_neg_address0();
    void thread_quant26bt_neg_ce0();
    void thread_quant26bt_pos_address0();
    void thread_quant26bt_pos_ce0();
    void thread_ril_2_fu_321_p3();
    void thread_tmp_2_fu_299_p4();
    void thread_tmp_31_fu_284_p1();
    void thread_tmp_33_fu_309_p2();
    void thread_tmp_34_fu_315_p1();
    void thread_tmp_fu_256_p3();
    void thread_tmp_s_fu_278_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
