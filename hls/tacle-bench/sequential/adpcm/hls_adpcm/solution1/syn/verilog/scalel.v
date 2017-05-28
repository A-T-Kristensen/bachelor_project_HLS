// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module scalel (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        nbl,
        shift_constant,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'b1;
parameter    ap_ST_fsm_state2 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv15_0 = 15'b000000000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [14:0] nbl;
input  [4:0] shift_constant;
output  [14:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [4:0] ilb_table_address0;
reg    ilb_table_ce0;
wire   [11:0] ilb_table_q0;
reg   [3:0] tmp_reg_124;
wire   [63:0] tmp_s_fu_74_p1;
wire   [0:0] ap_CS_fsm_state2;
wire   [4:0] wd1_fu_54_p4;
wire   [3:0] tmp_11_fu_86_p1;
wire   [3:0] tmp_27_fu_90_p2;
wire   [21:0] tmp_37_cast_fu_96_p1;
wire   [21:0] wd2_cast_fu_79_p1;
wire   [21:0] ilb_table_load_cast_fu_82_p1;
wire   [21:0] tmp_28_fu_100_p2;
wire   [21:0] wd3_fu_106_p2;
wire   [11:0] tmp_12_fu_112_p1;
wire   [14:0] tmp_29_fu_116_p3;
reg   [14:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'b1;
#0 ap_return_preg = 15'b000000000000000;
end

scalel_ilb_table #(
    .DataWidth( 12 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
ilb_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ilb_table_address0),
    .ce0(ilb_table_ce0),
    .q0(ilb_table_q0)
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
                ap_return_preg[3] <= 1'b0;
        ap_return_preg[4] <= 1'b0;
        ap_return_preg[5] <= 1'b0;
        ap_return_preg[6] <= 1'b0;
        ap_return_preg[7] <= 1'b0;
        ap_return_preg[8] <= 1'b0;
        ap_return_preg[9] <= 1'b0;
        ap_return_preg[10] <= 1'b0;
        ap_return_preg[11] <= 1'b0;
        ap_return_preg[12] <= 1'b0;
        ap_return_preg[13] <= 1'b0;
        ap_return_preg[14] <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
                        ap_return_preg[14 : 3] <= tmp_29_fu_116_p3[14 : 3];
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        tmp_reg_124 <= {{nbl[ap_const_lv32_E : ap_const_lv32_B]}};
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_return = tmp_29_fu_116_p3;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ilb_table_ce0 = 1'b1;
    end else begin
        ilb_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ilb_table_address0 = tmp_s_fu_74_p1;

assign ilb_table_load_cast_fu_82_p1 = ilb_table_q0;

assign tmp_11_fu_86_p1 = shift_constant[3:0];

assign tmp_12_fu_112_p1 = wd3_fu_106_p2[11:0];

assign tmp_27_fu_90_p2 = (ap_const_lv4_1 + tmp_11_fu_86_p1);

assign tmp_28_fu_100_p2 = (tmp_37_cast_fu_96_p1 - wd2_cast_fu_79_p1);

assign tmp_29_fu_116_p3 = {{tmp_12_fu_112_p1}, {ap_const_lv3_0}};

assign tmp_37_cast_fu_96_p1 = tmp_27_fu_90_p2;

assign tmp_s_fu_74_p1 = wd1_fu_54_p4;

assign wd1_fu_54_p4 = {{nbl[ap_const_lv32_A : ap_const_lv32_6]}};

assign wd2_cast_fu_79_p1 = tmp_reg_124;

assign wd3_fu_106_p2 = ilb_table_load_cast_fu_82_p1 >> tmp_28_fu_100_p2;

always @ (posedge ap_clk) begin
    ap_return_preg[2:0] <= 3'b000;
end

endmodule //scalel
