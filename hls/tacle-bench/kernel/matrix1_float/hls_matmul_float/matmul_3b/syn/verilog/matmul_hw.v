// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matmul_hw,hls_ip_2016_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.698000,HLS_SYN_LAT=24,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=834,HLS_SYN_LUT=1007}" *)

module matmul_hw (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_Addr_A,
        a_EN_A,
        a_WEN_A,
        a_Din_A,
        a_Dout_A,
        a_Clk_A,
        a_Rst_A,
        b_Addr_A,
        b_EN_A,
        b_WEN_A,
        b_Din_A,
        b_Dout_A,
        b_Clk_A,
        b_Rst_A,
        c_Addr_A,
        c_EN_A,
        c_WEN_A,
        c_Din_A,
        c_Dout_A,
        c_Clk_A,
        c_Rst_A
);

parameter    ap_ST_fsm_state1 = 4'b1;
parameter    ap_ST_fsm_pp0_stage0 = 4'b10;
parameter    ap_ST_fsm_pp0_stage1 = 4'b100;
parameter    ap_ST_fsm_state19 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv4_F = 4'b1111;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv61_0 = 61'b0000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv32_3 = 32'b11;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] a_Addr_A;
output   a_EN_A;
output  [3:0] a_WEN_A;
output  [31:0] a_Din_A;
input  [31:0] a_Dout_A;
output   a_Clk_A;
output   a_Rst_A;
output  [31:0] b_Addr_A;
output   b_EN_A;
output  [3:0] b_WEN_A;
output  [31:0] b_Din_A;
input  [31:0] b_Dout_A;
output   b_Clk_A;
output   b_Rst_A;
output  [31:0] c_Addr_A;
output   c_EN_A;
output  [3:0] c_WEN_A;
output  [31:0] c_Din_A;
input  [31:0] c_Dout_A;
output   c_Clk_A;
output   c_Rst_A;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_EN_A;
reg b_EN_A;
reg c_EN_A;
reg[3:0] c_WEN_A;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [2:0] indvar_flatten_reg_148;
reg   [1:0] i_reg_159;
reg   [1:0] j_reg_170;
wire   [0:0] exitcond_flatten_fu_190_p2;
reg   [0:0] exitcond_flatten_reg_495;
wire   [0:0] ap_CS_fsm_pp0_stage0;
reg   [0:0] ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter3_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter4_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter5_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter6_exitcond_flatten_reg_495;
reg   [0:0] ap_pipeline_reg_pp0_iter7_exitcond_flatten_reg_495;
wire   [2:0] indvar_flatten_next_fu_196_p2;
reg   [2:0] indvar_flatten_next_reg_499;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] j_mid2_fu_214_p3;
reg   [1:0] j_mid2_reg_504;
wire   [0:0] tmp_mid2_fu_234_p3;
reg   [0:0] tmp_mid2_reg_512;
wire   [1:0] tmp_1_mid2_v_fu_242_p3;
reg   [1:0] tmp_1_mid2_v_reg_520;
wire   [2:0] tmp_1_fu_250_p3;
reg   [2:0] tmp_1_reg_525;
wire   [0:0] tmp_fu_268_p1;
reg   [0:0] tmp_reg_541;
wire   [0:0] ap_CS_fsm_pp0_stage1;
reg   [31:0] a_load_reg_556;
reg   [31:0] b_copy_0_0_reg_566;
wire   [1:0] j_1_fu_300_p2;
reg   [1:0] j_1_reg_572;
wire   [31:0] a_row_load_1_fu_331_p3;
reg   [31:0] a_row_load_1_reg_577;
wire   [31:0] a_row_load_fu_339_p3;
wire   [3:0] tmp_10_fu_350_p2;
reg   [3:0] tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter2_tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter3_tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter4_tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter5_tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter6_tmp_10_reg_587;
reg   [3:0] ap_pipeline_reg_pp0_iter7_tmp_10_reg_587;
wire   [31:0] b_copy_load_0_phi_fu_410_p3;
wire   [31:0] b_copy_load_1_phi_fu_418_p3;
reg   [31:0] b_copy_load_1_phi_reg_597;
wire   [31:0] grp_fu_186_p2;
reg   [31:0] tmp_s_reg_602;
reg    ap_enable_reg_pp0_iter2;
reg   [31:0] tmp_2_1_reg_607;
reg    ap_enable_reg_pp0_iter3;
reg   [31:0] ap_pipeline_reg_pp0_iter4_tmp_2_1_reg_607;
reg   [31:0] ap_pipeline_reg_pp0_iter5_tmp_2_1_reg_607;
wire   [31:0] grp_fu_181_p2;
reg   [31:0] tmp_5_reg_612;
reg    ap_enable_reg_pp0_iter5;
reg   [31:0] tmp_5_1_reg_617;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter8;
reg   [2:0] indvar_flatten_phi_fu_152_p4;
reg   [1:0] i_phi_fu_163_p4;
reg   [1:0] j_phi_fu_174_p4;
wire   [63:0] tmp_4_fu_258_p1;
wire   [63:0] tmp_6_fu_263_p1;
wire   [63:0] tmp_8_fu_277_p3;
wire   [63:0] tmp_9_cast_fu_295_p1;
wire   [63:0] tmp_10_cast_fu_455_p1;
reg   [31:0] a_row_load_4_fu_72;
reg   [31:0] a_row_load_3_fu_76;
reg   [31:0] b_copy_0_1_fu_80;
wire   [31:0] b_copy_0_1_4_fu_403_p3;
reg   [31:0] b_copy_0_1_5_fu_84;
wire   [31:0] b_copy_0_1_3_fu_396_p3;
reg   [31:0] b_copy_1_1_fu_88;
wire   [31:0] b_copy_1_1_4_fu_389_p3;
reg   [31:0] b_copy_1_1_5_fu_92;
wire   [31:0] b_copy_1_1_3_fu_382_p3;
reg   [31:0] a_Addr_A_orig;
reg   [31:0] b_Addr_A_orig;
wire   [31:0] c_Addr_A_orig;
reg   [31:0] grp_fu_181_p0;
reg   [31:0] grp_fu_181_p1;
reg   [31:0] grp_fu_186_p0;
reg   [31:0] grp_fu_186_p1;
wire   [0:0] exitcond_fu_208_p2;
wire   [1:0] i_1_fu_202_p2;
wire   [0:0] tmp_mid1_fu_222_p2;
wire   [0:0] tmp1_fu_228_p2;
wire   [2:0] tmp_7_fu_272_p2;
wire   [2:0] tmp_6_cast_fu_286_p1;
wire   [2:0] tmp_9_fu_289_p2;
wire   [0:0] tmp_3_fu_326_p2;
wire   [3:0] tmp_4_cast_fu_323_p1;
wire   [3:0] tmp_6_cast5_fu_347_p1;
wire   [31:0] b_copy_1_1_1_fu_368_p3;
wire   [31:0] b_copy_1_1_2_fu_375_p3;
wire   [31:0] b_copy_0_1_1_fu_356_p3;
wire   [31:0] b_copy_0_1_2_fu_362_p3;
wire   [0:0] ap_CS_fsm_state19;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'b1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
end

matmul_hw_fadd_32bkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
matmul_hw_fadd_32bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_181_p0),
    .din1(grp_fu_181_p1),
    .ce(1'b1),
    .dout(grp_fu_181_p2)
);

matmul_hw_fmul_32cud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
matmul_hw_fmul_32cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_186_p0),
    .din1(grp_fu_186_p1),
    .ce(1'b1),
    .dout(grp_fu_186_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~(exitcond_flatten_fu_190_p2 == 1'b0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (exitcond_flatten_reg_495 == 1'b0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end else if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & ~(exitcond_flatten_reg_495 == 1'b0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        i_reg_159 <= tmp_1_mid2_v_reg_520;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_reg_159 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        indvar_flatten_reg_148 <= indvar_flatten_next_reg_499;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        indvar_flatten_reg_148 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        j_reg_170 <= j_1_reg_572;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        j_reg_170 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (exitcond_flatten_reg_495 == 1'b0))) begin
        a_load_reg_556 <= a_Dout_A;
        b_copy_0_0_reg_566 <= b_Dout_A;
        j_1_reg_572 <= j_1_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0))) begin
        a_row_load_1_reg_577 <= a_row_load_1_fu_331_p3;
        b_copy_load_1_phi_reg_597 <= b_copy_load_1_phi_fu_418_p3;
        tmp_10_reg_587 <= tmp_10_fu_350_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        a_row_load_3_fu_76 <= a_row_load_1_fu_331_p3;
        a_row_load_4_fu_72 <= a_row_load_fu_339_p3;
        b_copy_0_1_5_fu_84 <= b_copy_0_1_3_fu_396_p3;
        b_copy_0_1_fu_80 <= b_copy_0_1_4_fu_403_p3;
        b_copy_1_1_5_fu_92 <= b_copy_1_1_3_fu_382_p3;
        b_copy_1_1_fu_88 <= b_copy_1_1_4_fu_389_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_495 <= exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter1_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter2_tmp_10_reg_587 <= tmp_10_reg_587;
        ap_pipeline_reg_pp0_iter3_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter3_tmp_10_reg_587 <= ap_pipeline_reg_pp0_iter2_tmp_10_reg_587;
        ap_pipeline_reg_pp0_iter4_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter3_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter4_tmp_10_reg_587 <= ap_pipeline_reg_pp0_iter3_tmp_10_reg_587;
        ap_pipeline_reg_pp0_iter4_tmp_2_1_reg_607 <= tmp_2_1_reg_607;
        ap_pipeline_reg_pp0_iter5_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter4_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter5_tmp_10_reg_587 <= ap_pipeline_reg_pp0_iter4_tmp_10_reg_587;
        ap_pipeline_reg_pp0_iter5_tmp_2_1_reg_607 <= ap_pipeline_reg_pp0_iter4_tmp_2_1_reg_607;
        ap_pipeline_reg_pp0_iter6_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter5_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter6_tmp_10_reg_587 <= ap_pipeline_reg_pp0_iter5_tmp_10_reg_587;
        ap_pipeline_reg_pp0_iter7_exitcond_flatten_reg_495 <= ap_pipeline_reg_pp0_iter6_exitcond_flatten_reg_495;
        ap_pipeline_reg_pp0_iter7_tmp_10_reg_587 <= ap_pipeline_reg_pp0_iter6_tmp_10_reg_587;
        exitcond_flatten_reg_495 <= exitcond_flatten_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        indvar_flatten_next_reg_499 <= indvar_flatten_next_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_fu_190_p2 == 1'b0))) begin
        j_mid2_reg_504 <= j_mid2_fu_214_p3;
        tmp_1_reg_525[2 : 1] <= tmp_1_fu_250_p3[2 : 1];
        tmp_mid2_reg_512 <= tmp_mid2_fu_234_p3;
        tmp_reg_541 <= tmp_fu_268_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_190_p2 == 1'b0))) begin
        tmp_1_mid2_v_reg_520 <= tmp_1_mid2_v_fu_242_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter3))) begin
        tmp_2_1_reg_607 <= grp_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter7) & (ap_pipeline_reg_pp0_iter7_exitcond_flatten_reg_495 == 1'b0))) begin
        tmp_5_1_reg_617 <= grp_fu_181_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter5) & (ap_pipeline_reg_pp0_iter4_exitcond_flatten_reg_495 == 1'b0))) begin
        tmp_5_reg_612 <= grp_fu_181_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_pipeline_reg_pp0_iter2_exitcond_flatten_reg_495 == 1'b0))) begin
        tmp_s_reg_602 <= grp_fu_186_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_enable_reg_pp0_iter0)) begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            a_Addr_A_orig = tmp_8_fu_277_p3;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            a_Addr_A_orig = tmp_4_fu_258_p1;
        end else begin
            a_Addr_A_orig = 'bx;
        end
    end else begin
        a_Addr_A_orig = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_EN_A = 1'b1;
    end else begin
        a_EN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_enable_reg_pp0_iter0)) begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            b_Addr_A_orig = tmp_9_cast_fu_295_p1;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            b_Addr_A_orig = tmp_6_fu_263_p1;
        end else begin
            b_Addr_A_orig = 'bx;
        end
    end else begin
        b_Addr_A_orig = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_EN_A = 1'b1;
    end else begin
        b_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter8))) begin
        c_EN_A = 1'b1;
    end else begin
        c_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_pipeline_reg_pp0_iter7_exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8))) begin
        c_WEN_A = ap_const_lv4_F;
    end else begin
        c_WEN_A = ap_const_lv4_0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter5))) begin
        grp_fu_181_p0 = tmp_5_reg_612;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter3))) begin
        grp_fu_181_p0 = tmp_s_reg_602;
    end else begin
        grp_fu_181_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter5))) begin
        grp_fu_181_p1 = ap_pipeline_reg_pp0_iter5_tmp_2_1_reg_607;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter3))) begin
        grp_fu_181_p1 = ap_const_lv32_0;
    end else begin
        grp_fu_181_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_enable_reg_pp0_iter1)) begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            grp_fu_186_p0 = a_row_load_1_reg_577;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            grp_fu_186_p0 = a_row_load_fu_339_p3;
        end else begin
            grp_fu_186_p0 = 'bx;
        end
    end else begin
        grp_fu_186_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_enable_reg_pp0_iter1)) begin
        if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
            grp_fu_186_p1 = b_copy_load_1_phi_reg_597;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            grp_fu_186_p1 = b_copy_load_0_phi_fu_410_p3;
        end else begin
            grp_fu_186_p1 = 'bx;
        end
    end else begin
        grp_fu_186_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        i_phi_fu_163_p4 = tmp_1_mid2_v_reg_520;
    end else begin
        i_phi_fu_163_p4 = i_reg_159;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        indvar_flatten_phi_fu_152_p4 = indvar_flatten_next_reg_499;
    end else begin
        indvar_flatten_phi_fu_152_p4 = indvar_flatten_reg_148;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_495 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        j_phi_fu_174_p4 = j_1_reg_572;
    end else begin
        j_phi_fu_174_p4 = j_reg_170;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter8) & ~(1'b1 == ap_enable_reg_pp0_iter7)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & ~(exitcond_flatten_fu_190_p2 == 1'b0) & ~(1'b1 == ap_enable_reg_pp0_iter1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b1 == ap_enable_reg_pp0_iter0) & ~(exitcond_flatten_fu_190_p2 == 1'b0) & ~(1'b1 == ap_enable_reg_pp0_iter1))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_Addr_A = a_Addr_A_orig << ap_const_lv32_2;

assign a_Clk_A = ap_clk;

assign a_Din_A = ap_const_lv32_0;

assign a_Rst_A = ap_rst;

assign a_WEN_A = ap_const_lv4_0;

assign a_row_load_1_fu_331_p3 = ((tmp_3_fu_326_p2[0:0] === 1'b1) ? a_Dout_A : a_row_load_3_fu_76);

assign a_row_load_fu_339_p3 = ((tmp_3_fu_326_p2[0:0] === 1'b1) ? a_load_reg_556 : a_row_load_4_fu_72);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state19 = ap_CS_fsm[ap_const_lv32_3];

assign b_Addr_A = b_Addr_A_orig << ap_const_lv32_2;

assign b_Clk_A = ap_clk;

assign b_Din_A = ap_const_lv32_0;

assign b_Rst_A = ap_rst;

assign b_WEN_A = ap_const_lv4_0;

assign b_copy_0_1_1_fu_356_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_copy_0_0_reg_566 : b_copy_0_1_5_fu_84);

assign b_copy_0_1_2_fu_362_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_copy_0_1_fu_80 : b_copy_0_0_reg_566);

assign b_copy_0_1_3_fu_396_p3 = ((tmp_mid2_reg_512[0:0] === 1'b1) ? b_copy_0_1_1_fu_356_p3 : b_copy_0_1_5_fu_84);

assign b_copy_0_1_4_fu_403_p3 = ((tmp_mid2_reg_512[0:0] === 1'b1) ? b_copy_0_1_2_fu_362_p3 : b_copy_0_1_fu_80);

assign b_copy_1_1_1_fu_368_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_Dout_A : b_copy_1_1_5_fu_92);

assign b_copy_1_1_2_fu_375_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_copy_1_1_fu_88 : b_Dout_A);

assign b_copy_1_1_3_fu_382_p3 = ((tmp_mid2_reg_512[0:0] === 1'b1) ? b_copy_1_1_1_fu_368_p3 : b_copy_1_1_5_fu_92);

assign b_copy_1_1_4_fu_389_p3 = ((tmp_mid2_reg_512[0:0] === 1'b1) ? b_copy_1_1_2_fu_375_p3 : b_copy_1_1_fu_88);

assign b_copy_load_0_phi_fu_410_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_copy_0_1_3_fu_396_p3 : b_copy_0_1_4_fu_403_p3);

assign b_copy_load_1_phi_fu_418_p3 = ((tmp_reg_541[0:0] === 1'b1) ? b_copy_1_1_3_fu_382_p3 : b_copy_1_1_4_fu_389_p3);

assign c_Addr_A = c_Addr_A_orig << ap_const_lv32_2;

assign c_Addr_A_orig = tmp_10_cast_fu_455_p1;

assign c_Clk_A = ap_clk;

assign c_Din_A = tmp_5_1_reg_617;

assign c_Rst_A = ap_rst;

assign exitcond_flatten_fu_190_p2 = ((indvar_flatten_phi_fu_152_p4 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign exitcond_fu_208_p2 = ((j_phi_fu_174_p4 == ap_const_lv2_2) ? 1'b1 : 1'b0);

assign i_1_fu_202_p2 = (ap_const_lv2_1 + i_phi_fu_163_p4);

assign indvar_flatten_next_fu_196_p2 = (indvar_flatten_phi_fu_152_p4 + ap_const_lv3_1);

assign j_1_fu_300_p2 = (ap_const_lv2_1 + j_mid2_reg_504);

assign j_mid2_fu_214_p3 = ((exitcond_fu_208_p2[0:0] === 1'b1) ? ap_const_lv2_0 : j_phi_fu_174_p4);

assign tmp1_fu_228_p2 = ((i_phi_fu_163_p4 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_10_cast_fu_455_p1 = ap_pipeline_reg_pp0_iter7_tmp_10_reg_587;

assign tmp_10_fu_350_p2 = (tmp_4_cast_fu_323_p1 + tmp_6_cast5_fu_347_p1);

assign tmp_1_fu_250_p3 = {{tmp_1_mid2_v_fu_242_p3}, {1'b0}};

assign tmp_1_mid2_v_fu_242_p3 = ((exitcond_fu_208_p2[0:0] === 1'b1) ? i_1_fu_202_p2 : i_phi_fu_163_p4);

assign tmp_3_fu_326_p2 = ((j_mid2_reg_504 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_4_cast_fu_323_p1 = tmp_1_reg_525;

assign tmp_4_fu_258_p1 = tmp_1_fu_250_p3;

assign tmp_6_cast5_fu_347_p1 = j_mid2_reg_504;

assign tmp_6_cast_fu_286_p1 = j_mid2_reg_504;

assign tmp_6_fu_263_p1 = j_mid2_fu_214_p3;

assign tmp_7_fu_272_p2 = (tmp_1_reg_525 | ap_const_lv3_1);

assign tmp_8_fu_277_p3 = {{ap_const_lv61_0}, {tmp_7_fu_272_p2}};

assign tmp_9_cast_fu_295_p1 = tmp_9_fu_289_p2;

assign tmp_9_fu_289_p2 = (ap_const_lv3_2 + tmp_6_cast_fu_286_p1);

assign tmp_fu_268_p1 = j_mid2_fu_214_p3[0:0];

assign tmp_mid1_fu_222_p2 = ((i_1_fu_202_p2 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign tmp_mid2_fu_234_p3 = ((exitcond_fu_208_p2[0:0] === 1'b1) ? tmp_mid1_fu_222_p2 : tmp1_fu_228_p2);

always @ (posedge ap_clk) begin
    tmp_1_reg_525[0] <= 1'b0;
end

endmodule //matmul_hw