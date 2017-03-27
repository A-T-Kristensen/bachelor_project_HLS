// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="list_multiply,hls_ip_2016_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.961000,HLS_SYN_LAT=10,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=110,HLS_SYN_LUT=241}" *)

module list_multiply (
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
        a_Rst_A
);

parameter    ap_ST_fsm_state1 = 5'b1;
parameter    ap_ST_fsm_pp0_stage0 = 5'b10;
parameter    ap_ST_fsm_state4 = 5'b100;
parameter    ap_ST_fsm_state5 = 5'b1000;
parameter    ap_ST_fsm_state6 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv4_F = 4'b1111;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_4 = 32'b100;

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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_EN_A;
reg[3:0] a_WEN_A;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [31:0] tmp_2_s_reg_70;
reg   [31:0] tmp_1_s_reg_82;
reg   [31:0] tmp_2_4_reg_94;
reg   [1:0] i_reg_106;
wire   [0:0] exitcond1_fu_128_p2;
reg   [0:0] exitcond1_reg_228;
wire   [0:0] ap_CS_fsm_pp0_stage0;
wire   [1:0] i_2_fu_134_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] sel_tmp_fu_145_p2;
reg   [0:0] sel_tmp_reg_242;
wire   [0:0] sel_tmp5_fu_151_p2;
reg   [0:0] sel_tmp5_reg_248;
wire   [31:0] tmp_2_1_fu_170_p3;
reg    ap_enable_reg_pp0_iter1;
wire   [31:0] tmp_2_3_fu_184_p3;
wire   [31:0] tmp_2_5_fu_191_p3;
wire   [1:0] i_3_fu_204_p2;
wire   [0:0] ap_CS_fsm_state5;
reg   [1:0] i_1_reg_117;
wire   [0:0] exitcond_fu_198_p2;
wire   [0:0] ap_CS_fsm_state4;
wire   [63:0] tmp_1_fu_140_p1;
wire   [63:0] tmp_4_fu_210_p1;
reg   [31:0] a_Addr_A_orig;
wire   [31:0] tmp_2_6_fu_215_p5;
wire   [31:0] tmp_2_7_fu_157_p2;
wire   [31:0] tmp_2_fu_163_p3;
wire   [31:0] tmp_2_2_fu_177_p3;
wire   [0:0] ap_CS_fsm_state6;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'b1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

list_multiply_muxbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
list_multiply_muxbkb_U1(
    .din1(tmp_2_4_reg_94),
    .din2(tmp_1_s_reg_82),
    .din3(tmp_2_s_reg_70),
    .din4(i_1_reg_117),
    .dout(tmp_2_6_fu_215_p5)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & ~(exitcond1_fu_128_p2 == 1'b0))) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond1_fu_128_p2 == 1'b0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end else if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & ~(exitcond1_fu_128_p2 == 1'b0)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_117 <= ap_const_lv2_0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == exitcond_fu_198_p2))) begin
        i_1_reg_117 <= i_3_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond1_fu_128_p2 == 1'b0))) begin
        i_reg_106 <= i_2_fu_134_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_reg_106 <= ap_const_lv2_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        exitcond1_reg_228 <= exitcond1_fu_128_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond1_fu_128_p2 == 1'b0))) begin
        sel_tmp5_reg_248 <= sel_tmp5_fu_151_p2;
        sel_tmp_reg_242 <= sel_tmp_fu_145_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond1_reg_228 == 1'b0))) begin
        tmp_1_s_reg_82 <= tmp_2_3_fu_184_p3;
        tmp_2_4_reg_94 <= tmp_2_5_fu_191_p3;
        tmp_2_s_reg_70 <= tmp_2_1_fu_170_p3;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        a_Addr_A_orig = tmp_4_fu_210_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        a_Addr_A_orig = tmp_1_fu_140_p1;
    end else begin
        a_Addr_A_orig = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0)) | (1'b1 == ap_CS_fsm_state5))) begin
        a_EN_A = 1'b1;
    end else begin
        a_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == exitcond_fu_198_p2))) begin
        a_WEN_A = ap_const_lv4_F;
    end else begin
        a_WEN_A = ap_const_lv4_0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (~((1'b1 == ap_enable_reg_pp0_iter0) & ~(exitcond1_fu_128_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((1'b0 == exitcond_fu_198_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_Addr_A = a_Addr_A_orig << ap_const_lv32_2;

assign a_Clk_A = ap_clk;

assign a_Din_A = tmp_2_6_fu_215_p5;

assign a_Rst_A = ap_rst;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_4];

assign exitcond1_fu_128_p2 = ((i_reg_106 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign exitcond_fu_198_p2 = ((i_1_reg_117 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign i_2_fu_134_p2 = (i_reg_106 + ap_const_lv2_1);

assign i_3_fu_204_p2 = (i_1_reg_117 + ap_const_lv2_1);

assign sel_tmp5_fu_151_p2 = ((i_reg_106 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign sel_tmp_fu_145_p2 = ((i_reg_106 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign tmp_1_fu_140_p1 = i_reg_106;

assign tmp_2_1_fu_170_p3 = ((sel_tmp5_reg_248[0:0] === 1'b1) ? tmp_2_s_reg_70 : tmp_2_fu_163_p3);

assign tmp_2_2_fu_177_p3 = ((sel_tmp_reg_242[0:0] === 1'b1) ? tmp_2_7_fu_157_p2 : tmp_1_s_reg_82);

assign tmp_2_3_fu_184_p3 = ((sel_tmp5_reg_248[0:0] === 1'b1) ? tmp_1_s_reg_82 : tmp_2_2_fu_177_p3);

assign tmp_2_5_fu_191_p3 = ((sel_tmp5_reg_248[0:0] === 1'b1) ? tmp_2_7_fu_157_p2 : tmp_2_4_reg_94);

assign tmp_2_7_fu_157_p2 = a_Dout_A << ap_const_lv32_1;

assign tmp_2_fu_163_p3 = ((sel_tmp_reg_242[0:0] === 1'b1) ? tmp_2_s_reg_70 : tmp_2_7_fu_157_p2);

assign tmp_4_fu_210_p1 = i_1_reg_117;

endmodule //list_multiply