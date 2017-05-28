-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filtez is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    bpl_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    bpl_ce0 : OUT STD_LOGIC;
    bpl_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    dlt_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    dlt_ce0 : OUT STD_LOGIC;
    dlt_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of filtez is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal exitcond1_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal do_init_reg_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter1_do_init_reg_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_pipeline_reg_pp0_iter2_do_init_reg_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter3_do_init_reg_92 : STD_LOGIC_VECTOR (0 downto 0);
    signal dlt_pn_rec3_reg_109 : STD_LOGIC_VECTOR (2 downto 0);
    signal zl12_rewind_reg_123 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_148_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_01_rec_reg_159 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal exitcond1_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter1_exitcond1_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter2_exitcond1_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter3_exitcond1_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter4_exitcond1_reg_233 : STD_LOGIC_VECTOR (0 downto 0);
    signal bpl_load_reg_237 : STD_LOGIC_VECTOR (31 downto 0);
    signal dlt_load_reg_242 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_197_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_201_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bpl_load_1_reg_267 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal dlt_load_1_reg_272 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_171_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zl_reg_277 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal temp_reg_282 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter0_preg : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal dlt_pn_rec3_phi_fu_113_p6 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_phi_precharge_reg_pp0_iter3_zl1_reg_138 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_precharge_reg_pp0_iter4_zl1_reg_138 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_01_rec_cast_fu_191_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_148_p0 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_40_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_148_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_171_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_171_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_pipeline_idle_pp0 : STD_LOGIC;

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
    adpcm_main_mul_32bkb_U1 : component adpcm_main_mul_32bkb
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_171_p0,
        din1 => grp_fu_171_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_171_p2);





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


    ap_enable_reg_pp0_iter0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_preg <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_preg <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv32_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and not((ap_const_lv1_0 = ap_pipeline_reg_pp0_iter4_exitcond1_reg_233)))) then 
                    ap_return_preg <= grp_fu_148_p2(45 downto 14);
                end if; 
            end if;
        end if;
    end process;


    ap_phi_precharge_reg_pp0_iter4_zl1_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter3_do_init_reg_92))) then 
                ap_phi_precharge_reg_pp0_iter4_zl1_reg_138 <= zl12_rewind_reg_123;
            elsif (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and not((ap_const_lv1_0 = ap_pipeline_reg_pp0_iter3_do_init_reg_92)))) then 
                ap_phi_precharge_reg_pp0_iter4_zl1_reg_138 <= zl_reg_277;
            elsif (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter3))) then 
                ap_phi_precharge_reg_pp0_iter4_zl1_reg_138 <= ap_phi_precharge_reg_pp0_iter3_zl1_reg_138;
            end if; 
        end if;
    end process;

    dlt_pn_rec3_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_233 = ap_const_lv1_0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                dlt_pn_rec3_reg_109 <= p_01_rec_reg_159;
            elsif ((((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0))) or (not((exitcond1_reg_233 = ap_const_lv1_0)) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1)))) then 
                dlt_pn_rec3_reg_109 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    do_init_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_reg_233 = ap_const_lv1_0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                do_init_reg_92 <= ap_const_lv1_0;
            elsif ((((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0))) or (not((exitcond1_reg_233 = ap_const_lv1_0)) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1)))) then 
                do_init_reg_92 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0))) then
                ap_pipeline_reg_pp0_iter1_do_init_reg_92 <= do_init_reg_92;
                ap_pipeline_reg_pp0_iter1_exitcond1_reg_233 <= exitcond1_reg_233;
                ap_pipeline_reg_pp0_iter2_do_init_reg_92 <= ap_pipeline_reg_pp0_iter1_do_init_reg_92;
                ap_pipeline_reg_pp0_iter2_exitcond1_reg_233 <= ap_pipeline_reg_pp0_iter1_exitcond1_reg_233;
                ap_pipeline_reg_pp0_iter3_do_init_reg_92 <= ap_pipeline_reg_pp0_iter2_do_init_reg_92;
                ap_pipeline_reg_pp0_iter3_exitcond1_reg_233 <= ap_pipeline_reg_pp0_iter2_exitcond1_reg_233;
                ap_pipeline_reg_pp0_iter4_exitcond1_reg_233 <= ap_pipeline_reg_pp0_iter3_exitcond1_reg_233;
                exitcond1_reg_233 <= exitcond1_fu_185_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and not((ap_const_lv1_0 = ap_pipeline_reg_pp0_iter4_exitcond1_reg_233)))) then
                ap_return <= grp_fu_148_p2(45 downto 14);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then
                bpl_load_1_reg_267 <= bpl_q0;
                dlt_load_1_reg_272 <= dlt_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and not((ap_const_lv1_0 = do_init_reg_92)))) then
                bpl_load_reg_237 <= bpl_q0;
                dlt_load_reg_242 <= dlt_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0))) then
                p_01_rec_reg_159 <= grp_fu_148_p2(3 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4))) then
                temp_reg_282 <= grp_fu_171_p2(32 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_pipeline_reg_pp0_iter4_exitcond1_reg_233))) then
                zl12_rewind_reg_123 <= grp_fu_148_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter3) and not((ap_const_lv1_0 = ap_pipeline_reg_pp0_iter3_do_init_reg_92)))) then
                zl_reg_277 <= grp_fu_171_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_pipeline_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
            when ap_ST_fsm_pp0_stage1 => 
                if (not((ap_const_logic_1 = ap_pipeline_idle_pp0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2 downto 2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_preg)
    begin
        if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_preg;
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

    ap_phi_precharge_reg_pp0_iter3_zl1_reg_138 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_pipeline_idle_pp0_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2) and (ap_const_logic_0 = ap_enable_reg_pp0_iter3))) then 
            ap_pipeline_idle_pp0 <= ap_const_logic_1;
        else 
            ap_pipeline_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond1_reg_233, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0)
    begin
        if ((not((exitcond1_reg_233 = ap_const_lv1_0)) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    bpl_address0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, p_01_rec_cast_fu_191_p1)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter0)) then
            if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                bpl_address0 <= p_01_rec_cast_fu_191_p1(3 - 1 downto 0);
            elsif ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
                bpl_address0 <= ap_const_lv64_0(3 - 1 downto 0);
            else 
                bpl_address0 <= "XXX";
            end if;
        else 
            bpl_address0 <= "XXX";
        end if; 
    end process;


    bpl_ce0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)))) then 
            bpl_ce0 <= ap_const_logic_1;
        else 
            bpl_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    dlt_address0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, p_01_rec_cast_fu_191_p1)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter0)) then
            if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                dlt_address0 <= p_01_rec_cast_fu_191_p1(3 - 1 downto 0);
            elsif ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
                dlt_address0 <= ap_const_lv64_0(3 - 1 downto 0);
            else 
                dlt_address0 <= "XXX";
            end if;
        else 
            dlt_address0 <= "XXX";
        end if; 
    end process;


    dlt_ce0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)))) then 
            dlt_ce0 <= ap_const_logic_1;
        else 
            dlt_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    dlt_pn_rec3_phi_fu_113_p6_assign_proc : process(exitcond1_reg_233, ap_CS_fsm_pp0_stage0, dlt_pn_rec3_reg_109, p_01_rec_reg_159, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then
            if (not((exitcond1_reg_233 = ap_const_lv1_0))) then 
                dlt_pn_rec3_phi_fu_113_p6 <= ap_const_lv3_0;
            elsif ((exitcond1_reg_233 = ap_const_lv1_0)) then 
                dlt_pn_rec3_phi_fu_113_p6 <= p_01_rec_reg_159;
            else 
                dlt_pn_rec3_phi_fu_113_p6 <= dlt_pn_rec3_reg_109;
            end if;
        else 
            dlt_pn_rec3_phi_fu_113_p6 <= dlt_pn_rec3_reg_109;
        end if; 
    end process;

    exitcond1_fu_185_p2 <= "1" when (dlt_pn_rec3_phi_fu_113_p6 = ap_const_lv3_4) else "0";

    grp_fu_148_p0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter4, dlt_pn_rec3_phi_fu_113_p6, tmp_40_fu_205_p1)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4))) then 
            grp_fu_148_p0 <= tmp_40_fu_205_p1;
        elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_148_p0 <= std_logic_vector(resize(unsigned(dlt_pn_rec3_phi_fu_113_p6),64));
        else 
            grp_fu_148_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_148_p1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter4, ap_phi_precharge_reg_pp0_iter4_zl1_reg_138)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4))) then 
            grp_fu_148_p1 <= ap_phi_precharge_reg_pp0_iter4_zl1_reg_138;
        elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_1 = ap_CS_fsm_pp0_stage0))) then 
            grp_fu_148_p1 <= std_logic_vector(resize(unsigned(ap_const_lv3_1),64));
        else 
            grp_fu_148_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_148_p2 <= std_logic_vector(unsigned(grp_fu_148_p0) + unsigned(grp_fu_148_p1));

    grp_fu_171_p0_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage0, tmp_s_fu_201_p1, ap_enable_reg_pp0_iter1, dlt_load_1_reg_272)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter1)) then
            if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                grp_fu_171_p0 <= dlt_load_1_reg_272;
            elsif ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
                grp_fu_171_p0 <= tmp_s_fu_201_p1(32 - 1 downto 0);
            else 
                grp_fu_171_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            grp_fu_171_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_171_p1_assign_proc : process(ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage0, tmp_fu_197_p1, bpl_load_1_reg_267, ap_enable_reg_pp0_iter1)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter1)) then
            if ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage1)) then 
                grp_fu_171_p1 <= bpl_load_1_reg_267;
            elsif ((ap_const_lv1_1 = ap_CS_fsm_pp0_stage0)) then 
                grp_fu_171_p1 <= tmp_fu_197_p1(32 - 1 downto 0);
            else 
                grp_fu_171_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            grp_fu_171_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    p_01_rec_cast_fu_191_p1 <= std_logic_vector(resize(unsigned(p_01_rec_reg_159),64));
        tmp_40_fu_205_p1 <= std_logic_vector(resize(signed(temp_reg_282),64));

        tmp_fu_197_p1 <= std_logic_vector(resize(signed(bpl_load_reg_237),64));

        tmp_s_fu_201_p1 <= std_logic_vector(resize(signed(dlt_load_reg_242),64));

end behav;
