-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity uppol1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    al1 : IN STD_LOGIC_VECTOR (31 downto 0);
    apl2 : IN STD_LOGIC_VECTOR (14 downto 0);
    plt : IN STD_LOGIC_VECTOR (31 downto 0);
    plt1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of uppol1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_FFFFFF40 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111101000000";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv16_3C00 : STD_LOGIC_VECTOR (15 downto 0) := "0011110000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal apl1_fu_68_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal apl1_reg_75 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_79_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_23_reg_209 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal apl1_4_fu_153_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal apl1_4_reg_214 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_24_fu_129_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal apl_v_cast_cast_fu_140_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl_fu_104_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal p_shl_cast3_fu_112_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal tmp_cast1_fu_100_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal tmp_s_fu_116_p2 : STD_LOGIC_VECTOR (40 downto 0);
    signal tmp_fu_122_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal apl2_cast_fu_149_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal apl1_4_cast_fu_159_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal apl1_3_fu_176_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal wd3_0_apl1_fu_168_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal apl1_3_cast_fu_181_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component adpcm_main_mul_32bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    adpcm_main_mul_32bkb_x_U25 : component adpcm_main_mul_32bkb
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => plt,
        din1 => plt1,
        ce => ap_const_logic_1,
        dout => grp_fu_79_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state7))) then
                apl1_4_reg_214 <= apl1_4_fu_153_p2;
                apl1_reg_75 <= apl1_fu_68_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state6))) then
                tmp_23_reg_209 <= grp_fu_79_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state6 <= ap_CS_fsm(5 downto 5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6 downto 6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7 downto 7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1)) or ((ap_const_lv1_1 = ap_CS_fsm_state8)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= 
        apl1_3_cast_fu_181_p1 when (tmp_26_fu_185_p2(0) = '1') else 
        wd3_0_apl1_fu_168_p3;
        apl1_3_cast_fu_181_p1 <= std_logic_vector(resize(signed(apl1_3_fu_176_p2),32));

    apl1_3_fu_176_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(apl1_4_reg_214));
        apl1_4_cast_fu_159_p1 <= std_logic_vector(resize(signed(apl1_4_reg_214),32));

    apl1_4_fu_153_p2 <= std_logic_vector(unsigned(ap_const_lv16_3C00) - unsigned(apl2_cast_fu_149_p1));
    apl1_fu_68_p2 <= std_logic_vector(unsigned(tmp_24_fu_129_p4) + unsigned(apl_v_cast_cast_fu_140_p3));
        apl2_cast_fu_149_p1 <= std_logic_vector(resize(signed(apl2),16));

    apl_v_cast_cast_fu_140_p3 <= 
        ap_const_lv32_FFFFFF40 when (tmp_fu_122_p3(0) = '1') else 
        ap_const_lv32_C0;
    p_shl_cast3_fu_112_p1 <= std_logic_vector(resize(unsigned(p_shl_fu_104_p3),41));
    p_shl_fu_104_p3 <= (al1 & ap_const_lv8_0);
    tmp_24_fu_129_p4 <= tmp_s_fu_116_p2(39 downto 8);
    tmp_25_fu_162_p2 <= "1" when (signed(apl1_reg_75) > signed(apl1_4_cast_fu_159_p1)) else "0";
    tmp_26_fu_185_p2 <= "1" when (signed(wd3_0_apl1_fu_168_p3) < signed(apl1_3_cast_fu_181_p1)) else "0";
        tmp_cast1_fu_100_p1 <= std_logic_vector(resize(signed(al1),41));

    tmp_fu_122_p3 <= tmp_23_reg_209(63 downto 63);
    tmp_s_fu_116_p2 <= std_logic_vector(unsigned(p_shl_cast3_fu_112_p1) - unsigned(tmp_cast1_fu_100_p1));
    wd3_0_apl1_fu_168_p3 <= 
        apl1_4_cast_fu_159_p1 when (tmp_25_fu_162_p2(0) = '1') else 
        apl1_reg_75;
end behav;
