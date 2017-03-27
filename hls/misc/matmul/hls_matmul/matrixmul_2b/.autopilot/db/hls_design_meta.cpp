#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("a_0_Addr_A", 32, hls_out, 0, "bram", "mem_address", 1),
	Port_Property("a_0_EN_A", 1, hls_out, 0, "bram", "mem_ce", 1),
	Port_Property("a_0_WEN_A", 4, hls_out, 0, "bram", "mem_we", 1),
	Port_Property("a_0_Din_A", 32, hls_out, 0, "bram", "mem_din", 1),
	Port_Property("a_0_Dout_A", 32, hls_in, 0, "bram", "mem_dout", 1),
	Port_Property("a_0_Clk_A", 1, hls_out, 0, "bram", "mem_clk", 1),
	Port_Property("a_0_Rst_A", 1, hls_out, 0, "bram", "mem_rst", 1),
	Port_Property("a_1_Addr_A", 32, hls_out, 1, "bram", "mem_address", 1),
	Port_Property("a_1_EN_A", 1, hls_out, 1, "bram", "mem_ce", 1),
	Port_Property("a_1_WEN_A", 4, hls_out, 1, "bram", "mem_we", 1),
	Port_Property("a_1_Din_A", 32, hls_out, 1, "bram", "mem_din", 1),
	Port_Property("a_1_Dout_A", 32, hls_in, 1, "bram", "mem_dout", 1),
	Port_Property("a_1_Clk_A", 1, hls_out, 1, "bram", "mem_clk", 1),
	Port_Property("a_1_Rst_A", 1, hls_out, 1, "bram", "mem_rst", 1),
};
const char* HLS_Design_Meta::dut_name = "matrixmul";