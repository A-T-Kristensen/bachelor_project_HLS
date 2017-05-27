// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _upzero_HH_
#define _upzero_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "adpcm_main_mul_32bkb.h"

namespace ap_rtl {

struct upzero : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > dlt;
    sc_out< sc_lv<3> > dlti_address0;
    sc_out< sc_logic > dlti_ce0;
    sc_out< sc_logic > dlti_we0;
    sc_out< sc_lv<32> > dlti_d0;
    sc_in< sc_lv<32> > dlti_q0;
    sc_out< sc_lv<3> > dlti_address1;
    sc_out< sc_logic > dlti_ce1;
    sc_out< sc_logic > dlti_we1;
    sc_out< sc_lv<32> > dlti_d1;
    sc_in< sc_lv<32> > dlti_q1;
    sc_out< sc_lv<3> > bli_address0;
    sc_out< sc_logic > bli_ce0;
    sc_out< sc_logic > bli_we0;
    sc_out< sc_lv<32> > bli_d0;
    sc_in< sc_lv<32> > bli_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    upzero(sc_module_name name);
    SC_HAS_PROCESS(upzero);

    ~upzero();

    sc_trace_file* mVcdFile;

    adpcm_main_mul_32bkb<1,6,32,32,64>* adpcm_main_mul_32bkb_x_U17;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_165;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > tmp_fu_172_p2;
    sc_signal< sc_lv<1> > tmp_reg_314;
    sc_signal< sc_lv<64> > tmp_1_fu_178_p1;
    sc_signal< sc_lv<64> > tmp_1_reg_318;
    sc_signal< sc_lv<3> > i_3_fu_188_p2;
    sc_signal< sc_lv<3> > i_3_reg_326;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond_fu_182_p2;
    sc_signal< sc_lv<3> > bli_addr_1_reg_336;
    sc_signal< sc_lv<3> > i_2_fu_206_p2;
    sc_signal< sc_lv<3> > i_2_reg_344;
    sc_signal< sc_lv<3> > bli_addr_reg_349;
    sc_signal< sc_lv<1> > exitcond1_fu_200_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > grp_fu_221_p2;
    sc_signal< sc_lv<64> > tmp_s_reg_371;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > bli_load_1_reg_376;
    sc_signal< sc_lv<32> > dlti_load_2_reg_382;
    sc_signal< sc_lv<3> > dlti_addr_4_reg_387;
    sc_signal< sc_lv<3> > dlti_addr_5_reg_392;
    sc_signal< sc_lv<32> > dlti_load_4_reg_397;
    sc_signal< sc_lv<3> > i_1_reg_143;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<3> > i_reg_154;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > tmp_8_fu_194_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_212_p1;
    sc_signal< sc_lv<1> > ap_CS_fsm_state15;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > tmp_5_fu_267_p2;
    sc_signal< sc_lv<32> > grp_fu_221_p0;
    sc_signal< sc_lv<1> > tmp_7_fu_226_p3;
    sc_signal< sc_lv<40> > p_shl1_fu_244_p3;
    sc_signal< sc_lv<40> > tmp_10_cast_fu_241_p1;
    sc_signal< sc_lv<40> > tmp_3_fu_251_p2;
    sc_signal< sc_lv<32> > wd2_cast_cast_cast_fu_233_p3;
    sc_signal< sc_lv<32> > wd3_fu_257_p4;
    sc_signal< sc_lv<40> > p_shl_fu_278_p3;
    sc_signal< sc_lv<40> > tmp_3_cast_fu_274_p1;
    sc_signal< sc_lv<40> > tmp_4_fu_286_p2;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_FFFFFF80;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_27;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bli_address0();
    void thread_bli_ce0();
    void thread_bli_d0();
    void thread_bli_we0();
    void thread_dlti_addr_4_reg_387();
    void thread_dlti_addr_5_reg_392();
    void thread_dlti_address0();
    void thread_dlti_address1();
    void thread_dlti_ce0();
    void thread_dlti_ce1();
    void thread_dlti_d0();
    void thread_dlti_d1();
    void thread_dlti_we0();
    void thread_dlti_we1();
    void thread_exitcond1_fu_200_p2();
    void thread_exitcond_fu_182_p2();
    void thread_grp_fu_221_p0();
    void thread_i_2_fu_206_p2();
    void thread_i_3_fu_188_p2();
    void thread_p_shl1_fu_244_p3();
    void thread_p_shl_fu_278_p3();
    void thread_tmp_10_cast_fu_241_p1();
    void thread_tmp_1_fu_178_p1();
    void thread_tmp_2_fu_212_p1();
    void thread_tmp_3_cast_fu_274_p1();
    void thread_tmp_3_fu_251_p2();
    void thread_tmp_4_fu_286_p2();
    void thread_tmp_5_fu_267_p2();
    void thread_tmp_7_fu_226_p3();
    void thread_tmp_8_fu_194_p1();
    void thread_tmp_fu_172_p2();
    void thread_wd2_cast_cast_cast_fu_233_p3();
    void thread_wd3_fu_257_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif