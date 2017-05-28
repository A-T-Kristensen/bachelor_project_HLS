// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "logsch.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic logsch::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic logsch::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> logsch::ap_ST_fsm_state1 = "1";
const sc_lv<2> logsch::ap_ST_fsm_state2 = "10";
const sc_lv<32> logsch::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> logsch::ap_const_lv1_1 = "1";
const sc_lv<7> logsch::ap_const_lv7_0 = "0000000";
const sc_lv<32> logsch::ap_const_lv32_7 = "111";
const sc_lv<32> logsch::ap_const_lv32_26 = "100110";
const sc_lv<32> logsch::ap_const_lv32_31E = "1100011110";
const sc_lv<32> logsch::ap_const_lv32_FFFFFF2A = "11111111111111111111111100101010";
const sc_lv<32> logsch::ap_const_lv32_25 = "100101";
const sc_lv<32> logsch::ap_const_lv32_1F = "11111";
const sc_lv<31> logsch::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<32> logsch::ap_const_lv32_1 = "1";
const sc_lv<31> logsch::ap_const_lv31_5800 = "101100000000000";
const sc_lv<15> logsch::ap_const_lv15_5800 = "101100000000000";

logsch::logsch(sc_module_name name) : sc_module(name), mVcdFile(0) {
    adpcm_main_mux_42eOg_U30 = new adpcm_main_mux_42eOg<1,1,32,32,32,32,2,32>("adpcm_main_mux_42eOg_U30");
    adpcm_main_mux_42eOg_U30->din1(ap_var_for_const0);
    adpcm_main_mux_42eOg_U30->din2(ap_var_for_const1);
    adpcm_main_mux_42eOg_U30->din3(ap_var_for_const0);
    adpcm_main_mux_42eOg_U30->din4(ap_var_for_const1);
    adpcm_main_mux_42eOg_U30->din5(tmp_fu_88_p5);
    adpcm_main_mux_42eOg_U30->dout(tmp_fu_88_p6);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_38_fu_146_p2 );
    sensitive << ( tmp_19_fu_142_p1 );

    SC_METHOD(thread_nbh_assign_cast_fu_122_p2);
    sensitive << ( tmp_17_fu_112_p1 );
    sensitive << ( tmp_4_fu_102_p4 );

    SC_METHOD(thread_nbh_assign_fu_116_p2);
    sensitive << ( tmp_fu_88_p6 );
    sensitive << ( wd_fu_74_p4 );

    SC_METHOD(thread_p_s_fu_136_p3);
    sensitive << ( nbh_assign_cast_reg_160 );
    sensitive << ( tmp_18_reg_165 );

    SC_METHOD(thread_p_shl_fu_60_p3);
    sensitive << ( nbh );

    SC_METHOD(thread_tmp_17_fu_112_p1);
    sensitive << ( tmp_fu_88_p6 );

    SC_METHOD(thread_tmp_19_fu_142_p1);
    sensitive << ( p_s_fu_136_p3 );

    SC_METHOD(thread_tmp_38_fu_146_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_s_fu_136_p3 );

    SC_METHOD(thread_tmp_4_fu_102_p4);
    sensitive << ( tmp_s_fu_68_p2 );

    SC_METHOD(thread_tmp_cast2_fu_56_p1);
    sensitive << ( nbh );

    SC_METHOD(thread_tmp_fu_88_p5);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ih );

    SC_METHOD(thread_tmp_s_fu_68_p2);
    sensitive << ( p_shl_fu_60_p3 );
    sensitive << ( tmp_cast2_fu_56_p1 );

    SC_METHOD(thread_wd_fu_74_p4);
    sensitive << ( tmp_s_fu_68_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "logsch_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ih, "(port)ih");
    sc_trace(mVcdFile, nbh, "(port)nbh");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, nbh_assign_cast_fu_122_p2, "nbh_assign_cast_fu_122_p2");
    sc_trace(mVcdFile, nbh_assign_cast_reg_160, "nbh_assign_cast_reg_160");
    sc_trace(mVcdFile, tmp_18_reg_165, "tmp_18_reg_165");
    sc_trace(mVcdFile, p_shl_fu_60_p3, "p_shl_fu_60_p3");
    sc_trace(mVcdFile, tmp_cast2_fu_56_p1, "tmp_cast2_fu_56_p1");
    sc_trace(mVcdFile, tmp_s_fu_68_p2, "tmp_s_fu_68_p2");
    sc_trace(mVcdFile, tmp_fu_88_p5, "tmp_fu_88_p5");
    sc_trace(mVcdFile, tmp_fu_88_p6, "tmp_fu_88_p6");
    sc_trace(mVcdFile, wd_fu_74_p4, "wd_fu_74_p4");
    sc_trace(mVcdFile, tmp_17_fu_112_p1, "tmp_17_fu_112_p1");
    sc_trace(mVcdFile, tmp_4_fu_102_p4, "tmp_4_fu_102_p4");
    sc_trace(mVcdFile, nbh_assign_fu_116_p2, "nbh_assign_fu_116_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, p_s_fu_136_p3, "p_s_fu_136_p3");
    sc_trace(mVcdFile, tmp_38_fu_146_p2, "tmp_38_fu_146_p2");
    sc_trace(mVcdFile, tmp_19_fu_142_p1, "tmp_19_fu_142_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

logsch::~logsch() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete adpcm_main_mux_42eOg_U30;
}

void logsch::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv32_31E;
}

void logsch::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv32_FFFFFF2A;
}

void logsch::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        nbh_assign_cast_reg_160 = nbh_assign_cast_fu_122_p2.read();
        tmp_18_reg_165 = nbh_assign_fu_116_p2.read().range(31, 31);
    }
}

void logsch::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read().range(0, 0);
}

void logsch::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read().range(1, 1);
}

void logsch::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void logsch::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void logsch::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void logsch::thread_ap_return() {
    ap_return = (!tmp_38_fu_146_p2.read()[0].is_01())? sc_lv<15>(): ((tmp_38_fu_146_p2.read()[0].to_bool())? ap_const_lv15_5800: tmp_19_fu_142_p1.read());
}

void logsch::thread_nbh_assign_cast_fu_122_p2() {
    nbh_assign_cast_fu_122_p2 = (!tmp_17_fu_112_p1.read().is_01() || !tmp_4_fu_102_p4.read().is_01())? sc_lv<31>(): (sc_biguint<31>(tmp_17_fu_112_p1.read()) + sc_biguint<31>(tmp_4_fu_102_p4.read()));
}

void logsch::thread_nbh_assign_fu_116_p2() {
    nbh_assign_fu_116_p2 = (!wd_fu_74_p4.read().is_01() || !tmp_fu_88_p6.read().is_01())? sc_lv<32>(): (sc_biguint<32>(wd_fu_74_p4.read()) + sc_biguint<32>(tmp_fu_88_p6.read()));
}

void logsch::thread_p_s_fu_136_p3() {
    p_s_fu_136_p3 = (!tmp_18_reg_165.read()[0].is_01())? sc_lv<31>(): ((tmp_18_reg_165.read()[0].to_bool())? ap_const_lv31_0: nbh_assign_cast_reg_160.read());
}

void logsch::thread_p_shl_fu_60_p3() {
    p_shl_fu_60_p3 = esl_concat<32,7>(nbh.read(), ap_const_lv7_0);
}

void logsch::thread_tmp_17_fu_112_p1() {
    tmp_17_fu_112_p1 = tmp_fu_88_p6.read().range(31-1, 0);
}

void logsch::thread_tmp_19_fu_142_p1() {
    tmp_19_fu_142_p1 = p_s_fu_136_p3.read().range(15-1, 0);
}

void logsch::thread_tmp_38_fu_146_p2() {
    tmp_38_fu_146_p2 = (!p_s_fu_136_p3.read().is_01() || !ap_const_lv31_5800.is_01())? sc_lv<1>(): (sc_biguint<31>(p_s_fu_136_p3.read()) > sc_biguint<31>(ap_const_lv31_5800));
}

void logsch::thread_tmp_4_fu_102_p4() {
    tmp_4_fu_102_p4 = tmp_s_fu_68_p2.read().range(37, 7);
}

void logsch::thread_tmp_cast2_fu_56_p1() {
    tmp_cast2_fu_56_p1 = esl_sext<39,32>(nbh.read());
}

void logsch::thread_tmp_fu_88_p5() {
    tmp_fu_88_p5 = ih.read().range(2-1, 0);
}

void logsch::thread_tmp_s_fu_68_p2() {
    tmp_s_fu_68_p2 = (!p_shl_fu_60_p3.read().is_01() || !tmp_cast2_fu_56_p1.read().is_01())? sc_lv<39>(): (sc_biguint<39>(p_shl_fu_60_p3.read()) - sc_bigint<39>(tmp_cast2_fu_56_p1.read()));
}

void logsch::thread_wd_fu_74_p4() {
    wd_fu_74_p4 = tmp_s_fu_68_p2.read().range(38, 7);
}

void logsch::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

