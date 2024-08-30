-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gesture_model_Loop_VITIS_LOOP_149_1_proc8 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_stream_TVALID : IN STD_LOGIC;
    input_stream_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    input_stream_TREADY : OUT STD_LOGIC;
    input_V_0_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    input_V_0_ce0 : OUT STD_LOGIC;
    input_V_0_we0 : OUT STD_LOGIC;
    input_V_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of gesture_model_Loop_VITIS_LOOP_149_1_proc8 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_78 : STD_LOGIC_VECTOR (6 downto 0) := "1111000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln149_fu_72_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal input_stream_TDATA_blk_n : STD_LOGIC;
    signal i_cast_fu_84_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_40 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln149_fu_78_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_4 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal regslice_both_input_stream_U_apdone_blk : STD_LOGIC;
    signal input_stream_TDATA_int_regslice : STD_LOGIC_VECTOR (15 downto 0);
    signal input_stream_TVALID_int_regslice : STD_LOGIC;
    signal input_stream_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_input_stream_U_ack_in : STD_LOGIC;
    signal ap_condition_121 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component gesture_model_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component gesture_model_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component gesture_model_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);

    regslice_both_input_stream_U : component gesture_model_regslice_both
    generic map (
        DataWidth => 16)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => input_stream_TDATA,
        vld_in => input_stream_TVALID,
        ack_in => regslice_both_input_stream_U_ack_in,
        data_out => input_stream_TDATA_int_regslice,
        vld_out => input_stream_TVALID_int_regslice,
        ack_out => input_stream_TREADY_int_regslice,
        apdone_blk => regslice_both_input_stream_U_apdone_blk);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_121)) then
                if ((icmp_ln149_fu_72_p2 = ap_const_lv1_0)) then 
                    i_fu_40 <= add_ln149_fu_78_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_40 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln149_fu_78_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_4) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if (((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)));
    end process;


    ap_condition_121_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
                ap_condition_121 <= (not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (icmp_ln149_fu_72_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_loop_exit_ready, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_4_assign_proc : process(ap_CS_fsm_state1, i_fu_40, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_4 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_4 <= i_fu_40;
        end if; 
    end process;

    i_cast_fu_84_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_4),64));
    icmp_ln149_fu_72_p2 <= "1" when (ap_sig_allocacmp_i_4 = ap_const_lv7_78) else "0";
    input_V_0_address0 <= i_cast_fu_84_p1(7 - 1 downto 0);

    input_V_0_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            input_V_0_ce0 <= ap_const_logic_1;
        else 
            input_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    input_V_0_d0 <= input_stream_TDATA_int_regslice;

    input_V_0_we0_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            input_V_0_we0 <= ap_const_logic_1;
        else 
            input_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;


    input_stream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            input_stream_TDATA_blk_n <= input_stream_TVALID_int_regslice;
        else 
            input_stream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    input_stream_TREADY <= regslice_both_input_stream_U_ack_in;

    input_stream_TREADY_int_regslice_assign_proc : process(ap_CS_fsm_state1, icmp_ln149_fu_72_p2, ap_done_reg, ap_start_int, input_stream_TVALID_int_regslice)
    begin
        if ((not(((ap_start_int = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (input_stream_TVALID_int_regslice = ap_const_logic_0)))) and (icmp_ln149_fu_72_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            input_stream_TREADY_int_regslice <= ap_const_logic_1;
        else 
            input_stream_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

end behav;
