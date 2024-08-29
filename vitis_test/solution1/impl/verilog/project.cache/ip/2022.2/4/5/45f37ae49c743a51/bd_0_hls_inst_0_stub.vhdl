-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Aug 29 18:16:12 2024
-- Host        : prince-ThinkPad-E14-Gen-5 running 64-bit Ubuntu 24.04 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    input_r_ce0 : out STD_LOGIC;
    input_r_we0 : out STD_LOGIC;
    input_r_ce1 : out STD_LOGIC;
    input_r_we1 : out STD_LOGIC;
    output_r_ce0 : out STD_LOGIC;
    output_r_we0 : out STD_LOGIC;
    output_r_ce1 : out STD_LOGIC;
    output_r_we1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    input_r_address0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    input_r_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_r_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_r_address1 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    input_r_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_r_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_r_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    output_r_d0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    output_r_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_r_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    output_r_d1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    output_r_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_r_ce0,input_r_we0,input_r_ce1,input_r_we1,output_r_ce0,output_r_we0,output_r_ce1,output_r_we1,ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle,input_r_address0[6:0],input_r_d0[15:0],input_r_q0[15:0],input_r_address1[6:0],input_r_d1[15:0],input_r_q1[15:0],output_r_address0[4:0],output_r_d0[15:0],output_r_q0[15:0],output_r_address1[4:0],output_r_d1[15:0],output_r_q1[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gesture_model,Vivado 2022.2";
begin
end;
