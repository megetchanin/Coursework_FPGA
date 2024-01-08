// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jan  8 14:05:27 2024
// Host        : HOME-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Vivado/Coursework_FPGA/Coursework.sim/sim_1/impl/func/xsim/HC_SR04_TB_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD
   (from_bcd_to_sensor_rcvd,
    data0,
    data1,
    \dec_out_reg[3]_0 ,
    \dec_out_reg[2]_0 ,
    \dec_out_reg[1]_0 ,
    \dec_out_reg[0]_0 ,
    internal_clk_BUFG,
    from_sensor_to_bcd_trcvd,
    data_to_bcd,
    rst_IBUF);
  output from_bcd_to_sensor_rcvd;
  output [3:0]data0;
  output [3:0]data1;
  output \dec_out_reg[3]_0 ;
  output \dec_out_reg[2]_0 ;
  output \dec_out_reg[1]_0 ;
  output \dec_out_reg[0]_0 ;
  input internal_clk_BUFG;
  input from_sensor_to_bcd_trcvd;
  input [13:0]data_to_bcd;
  input rst_IBUF;

  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg_n_0_[5] ;
  wire \FSM_onehot_prev_state_reg_n_0_[0] ;
  wire \FSM_onehot_prev_state_reg_n_0_[1] ;
  wire \FSM_onehot_prev_state_reg_n_0_[2] ;
  wire \FSM_onehot_prev_state_reg_n_0_[3] ;
  wire \FSM_onehot_prev_state_reg_n_0_[4] ;
  wire \FSM_onehot_prev_state_reg_n_0_[5] ;
  wire \bcd[0]_i_1_n_0 ;
  wire \bcd[10]_i_1_n_0 ;
  wire \bcd[11]_i_1_n_0 ;
  wire \bcd[11]_i_2_n_0 ;
  wire \bcd[11]_i_3_n_0 ;
  wire \bcd[11]_i_4_n_0 ;
  wire \bcd[11]_i_5_n_0 ;
  wire \bcd[1]_i_1_n_0 ;
  wire \bcd[2]_i_1_n_0 ;
  wire \bcd[3]_i_1_n_0 ;
  wire \bcd[3]_i_2_n_0 ;
  wire \bcd[3]_i_3_n_0 ;
  wire \bcd[4]_i_1_n_0 ;
  wire \bcd[5]_i_1_n_0 ;
  wire \bcd[6]_i_1_n_0 ;
  wire \bcd[7]_i_1_n_0 ;
  wire \bcd[7]_i_2_n_0 ;
  wire \bcd[7]_i_3_n_0 ;
  wire \bcd[8]_i_1_n_0 ;
  wire \bcd[9]_i_1_n_0 ;
  wire \bcd_reg_n_0_[0] ;
  wire \bcd_reg_n_0_[10] ;
  wire \bcd_reg_n_0_[11] ;
  wire \bcd_reg_n_0_[1] ;
  wire \bcd_reg_n_0_[2] ;
  wire \bcd_reg_n_0_[3] ;
  wire \bcd_reg_n_0_[4] ;
  wire \bcd_reg_n_0_[5] ;
  wire \bcd_reg_n_0_[6] ;
  wire \bcd_reg_n_0_[7] ;
  wire \bcd_reg_n_0_[8] ;
  wire \bcd_reg_n_0_[9] ;
  wire bin;
  wire \bin[0]_i_1_n_0 ;
  wire \bin[10]_i_1_n_0 ;
  wire \bin[11]_i_1_n_0 ;
  wire \bin[12]_i_1_n_0 ;
  wire \bin[13]_i_2_n_0 ;
  wire \bin[1]_i_1_n_0 ;
  wire \bin[2]_i_1_n_0 ;
  wire \bin[3]_i_1_n_0 ;
  wire \bin[4]_i_1_n_0 ;
  wire \bin[5]_i_1_n_0 ;
  wire \bin[6]_i_1_n_0 ;
  wire \bin[7]_i_1_n_0 ;
  wire \bin[8]_i_1_n_0 ;
  wire \bin[9]_i_1_n_0 ;
  wire [3:0]data0;
  wire [3:0]data1;
  wire data_from_bcd_trcvd_i_1_n_0;
  wire [13:0]data_to_bcd;
  wire \dec_out[11]_i_1_n_0 ;
  wire \dec_out[11]_i_2_n_0 ;
  wire \dec_out_reg[0]_0 ;
  wire \dec_out_reg[1]_0 ;
  wire \dec_out_reg[2]_0 ;
  wire \dec_out_reg[3]_0 ;
  wire from_bcd_to_sensor_rcvd;
  wire from_sensor_to_bcd_trcvd;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_2_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire [14:1]in10;
  wire internal_clk_BUFG;
  wire next_state;
  wire rst_IBUF;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .I2(from_sensor_to_bcd_trcvd),
        .I3(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I1(from_sensor_to_bcd_trcvd),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[4]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_onehot_next_state_reg[4]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\i_reg_n_0_[3] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[5]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \FSM_onehot_next_state_reg[5]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[3] ),
        .I4(\i_reg_n_0_[0] ),
        .O(\FSM_onehot_next_state_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_next_state_reg[5]_i_2 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .O(next_state));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_prev_state_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(rst_IBUF),
        .Q(\FSM_onehot_prev_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "RESET:000001,SHIFT:001000,IDLE:000010,START:000100,ADD:100000,DONE:010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_prev_state_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_onehot_next_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_prev_state_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \bcd[0]_i_1 
       (.I0(in10[14]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\bcd_reg_n_0_[0] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF506060FFFFFFFF)) 
    \bcd[10]_i_1 
       (.I0(\bcd_reg_n_0_[10] ),
        .I1(\bcd_reg_n_0_[8] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[9] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \bcd[11]_i_1 
       (.I0(\bcd[11]_i_3_n_0 ),
        .I1(\bcd_reg_n_0_[11] ),
        .I2(\bcd_reg_n_0_[8] ),
        .I3(\bcd_reg_n_0_[9] ),
        .I4(\bcd_reg_n_0_[10] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .O(\bcd[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF606060FFFFFFFF)) 
    \bcd[11]_i_2 
       (.I0(\bcd_reg_n_0_[11] ),
        .I1(\bcd[11]_i_4_n_0 ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[10] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \bcd[11]_i_3 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .O(\bcd[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \bcd[11]_i_4 
       (.I0(\bcd_reg_n_0_[10] ),
        .I1(\bcd_reg_n_0_[9] ),
        .I2(\bcd_reg_n_0_[8] ),
        .O(\bcd[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bcd[11]_i_5 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF844)) 
    \bcd[1]_i_1 
       (.I0(\bcd_reg_n_0_[1] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I3(\bcd_reg_n_0_[0] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF506060FFFFFFFF)) 
    \bcd[2]_i_1 
       (.I0(\bcd_reg_n_0_[2] ),
        .I1(\bcd_reg_n_0_[0] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[1] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \bcd[3]_i_1 
       (.I0(\bcd[11]_i_3_n_0 ),
        .I1(\bcd_reg_n_0_[3] ),
        .I2(\bcd_reg_n_0_[0] ),
        .I3(\bcd_reg_n_0_[1] ),
        .I4(\bcd_reg_n_0_[2] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .O(\bcd[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF606060FFFFFFFF)) 
    \bcd[3]_i_2 
       (.I0(\bcd_reg_n_0_[3] ),
        .I1(\bcd[3]_i_3_n_0 ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[2] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \bcd[3]_i_3 
       (.I0(\bcd_reg_n_0_[2] ),
        .I1(\bcd_reg_n_0_[1] ),
        .I2(\bcd_reg_n_0_[0] ),
        .O(\bcd[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \bcd[4]_i_1 
       (.I0(\bcd_reg_n_0_[3] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\bcd_reg_n_0_[4] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF844)) 
    \bcd[5]_i_1 
       (.I0(\bcd_reg_n_0_[5] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I3(\bcd_reg_n_0_[4] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF506060FFFFFFFF)) 
    \bcd[6]_i_1 
       (.I0(\bcd_reg_n_0_[6] ),
        .I1(\bcd_reg_n_0_[4] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[5] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \bcd[7]_i_1 
       (.I0(\bcd[11]_i_3_n_0 ),
        .I1(\bcd_reg_n_0_[7] ),
        .I2(\bcd_reg_n_0_[4] ),
        .I3(\bcd_reg_n_0_[5] ),
        .I4(\bcd_reg_n_0_[6] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .O(\bcd[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF606060FFFFFFFF)) 
    \bcd[7]_i_2 
       (.I0(\bcd_reg_n_0_[7] ),
        .I1(\bcd[7]_i_3_n_0 ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I4(\bcd_reg_n_0_[6] ),
        .I5(\bcd[11]_i_5_n_0 ),
        .O(\bcd[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \bcd[7]_i_3 
       (.I0(\bcd_reg_n_0_[6] ),
        .I1(\bcd_reg_n_0_[5] ),
        .I2(\bcd_reg_n_0_[4] ),
        .O(\bcd[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \bcd[8]_i_1 
       (.I0(\bcd_reg_n_0_[7] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(\bcd_reg_n_0_[8] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF844)) 
    \bcd[9]_i_1 
       (.I0(\bcd_reg_n_0_[9] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I3(\bcd_reg_n_0_[8] ),
        .I4(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(\bcd[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[3]_i_1_n_0 ),
        .D(\bcd[0]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[11]_i_1_n_0 ),
        .D(\bcd[10]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[11]_i_1_n_0 ),
        .D(\bcd[11]_i_2_n_0 ),
        .Q(\bcd_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[3]_i_1_n_0 ),
        .D(\bcd[1]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[3]_i_1_n_0 ),
        .D(\bcd[2]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[3]_i_1_n_0 ),
        .D(\bcd[3]_i_2_n_0 ),
        .Q(\bcd_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[7]_i_1_n_0 ),
        .D(\bcd[4]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[7]_i_1_n_0 ),
        .D(\bcd[5]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[7]_i_1_n_0 ),
        .D(\bcd[6]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[7]_i_1_n_0 ),
        .D(\bcd[7]_i_2_n_0 ),
        .Q(\bcd_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[11]_i_1_n_0 ),
        .D(\bcd[8]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bcd_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(\bcd[11]_i_1_n_0 ),
        .D(\bcd[9]_i_1_n_0 ),
        .Q(\bcd_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bin[0]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(data_to_bcd[0]),
        .O(\bin[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[10]_i_1 
       (.I0(in10[10]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[10]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[11]_i_1 
       (.I0(in10[11]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[11]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[12]_i_1 
       (.I0(in10[12]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[12]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bin[13]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .O(bin));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[13]_i_2 
       (.I0(in10[13]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[13]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[1]_i_1 
       (.I0(in10[1]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[1]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[2]_i_1 
       (.I0(in10[2]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[2]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[3]_i_1 
       (.I0(in10[3]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[3]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[4]_i_1 
       (.I0(in10[4]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[4]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[5]_i_1 
       (.I0(in10[5]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[5]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[6]_i_1 
       (.I0(in10[6]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[6]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[7]_i_1 
       (.I0(in10[7]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[7]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[8]_i_1 
       (.I0(in10[8]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[8]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \bin[9]_i_1 
       (.I0(in10[9]),
        .I1(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I2(data_to_bcd[9]),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\bin[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[0]_i_1_n_0 ),
        .Q(in10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[10]_i_1_n_0 ),
        .Q(in10[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[11]_i_1_n_0 ),
        .Q(in10[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[12] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[12]_i_1_n_0 ),
        .Q(in10[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[13] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[13]_i_2_n_0 ),
        .Q(in10[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[1]_i_1_n_0 ),
        .Q(in10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[2]_i_1_n_0 ),
        .Q(in10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[3]_i_1_n_0 ),
        .Q(in10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[4]_i_1_n_0 ),
        .Q(in10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[5]_i_1_n_0 ),
        .Q(in10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[6]_i_1_n_0 ),
        .Q(in10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[7]_i_1_n_0 ),
        .Q(in10[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[8]_i_1_n_0 ),
        .Q(in10[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bin_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(bin),
        .D(\bin[9]_i_1_n_0 ),
        .Q(in10[10]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    data_from_bcd_trcvd_i_1
       (.I0(from_bcd_to_sensor_rcvd),
        .I1(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .O(data_from_bcd_trcvd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_from_bcd_trcvd_reg
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(data_from_bcd_trcvd_i_1_n_0),
        .Q(from_bcd_to_sensor_rcvd),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1110)) 
    \dec_out[11]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .O(\dec_out[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dec_out[11]_i_2 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_prev_state_reg_n_0_[1] ),
        .O(\dec_out[11]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[0] ),
        .Q(\dec_out_reg[0]_0 ),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[10] ),
        .Q(data0[2]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[11] ),
        .Q(data0[3]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[1] ),
        .Q(\dec_out_reg[1]_0 ),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[2] ),
        .Q(\dec_out_reg[2]_0 ),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[3] ),
        .Q(\dec_out_reg[3]_0 ),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[4] ),
        .Q(data1[0]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[5] ),
        .Q(data1[1]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[6] ),
        .Q(data1[2]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[7] ),
        .Q(data1[3]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[8] ),
        .Q(data0[0]),
        .R(\dec_out[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_out_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(\dec_out[11]_i_2_n_0 ),
        .D(\bcd_reg_n_0_[9] ),
        .Q(data0[1]),
        .R(\dec_out[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \i[1]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \i[2]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[2] ),
        .O(\i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \i[3]_i_1 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_prev_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_prev_state_reg_n_0_[0] ),
        .O(i));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \i[3]_i_2 
       (.I0(\FSM_onehot_prev_state_reg_n_0_[3] ),
        .I1(\i_reg_n_0_[2] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .I4(\i_reg_n_0_[3] ),
        .O(\i[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(i),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(i),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(i),
        .D(\i[3]_i_2_n_0 ),
        .Q(\i_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module HC_SR04
   (trig_OBUF,
    internal_clk,
    valid,
    from_sensor_to_bcd_trcvd,
    ready_old,
    data_to_bcd,
    Q,
    rst_IBUF,
    clk_IBUF_BUFG,
    internal_clk_BUFG,
    echo_IBUF,
    ready_old_reg_0,
    go_btn_IBUF,
    \data_out_reg[3]_0 ,
    \data_out_reg[0]_0 ,
    data1,
    data0,
    \data_out_reg[1]_0 ,
    \data_out_reg[2]_0 ,
    ready,
    from_bcd_to_sensor_rcvd);
  output trig_OBUF;
  output internal_clk;
  output valid;
  output from_sensor_to_bcd_trcvd;
  output ready_old;
  output [13:0]data_to_bcd;
  output [4:0]Q;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input internal_clk_BUFG;
  input echo_IBUF;
  input ready_old_reg_0;
  input go_btn_IBUF;
  input \data_out_reg[3]_0 ;
  input \data_out_reg[0]_0 ;
  input [3:0]data1;
  input [3:0]data0;
  input \data_out_reg[1]_0 ;
  input \data_out_reg[2]_0 ;
  input ready;
  input from_bcd_to_sensor_rcvd;

  wire [15:0]A;
  wire CEA2;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;
  wire cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire [18:0]cnt_reg;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire [3:0]data0;
  wire [3:0]data1;
  wire data_16;
  wire data_16_reg_i_1_n_0;
  wire data_16_reg_n_81;
  wire data_16_reg_n_82;
  wire data_16_reg_n_83;
  wire data_16_reg_n_84;
  wire data_16_reg_n_85;
  wire data_16_reg_n_86;
  wire data_16_reg_n_87;
  wire data_16_reg_n_88;
  wire data_16_reg_n_89;
  wire data_16_reg_n_90;
  wire data_16_reg_n_91;
  wire data_16_reg_n_92;
  wire data_16_reg_n_93;
  wire data_16_reg_n_94;
  wire [4:0]data_out;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[3]_0 ;
  wire data_ready;
  wire data_ready_i_1_n_0;
  wire [13:0]data_to_bcd;
  wire \data_to_bcd[13]_i_1_n_0 ;
  wire \data_to_bcd[13]_i_2_n_0 ;
  wire \data_to_bcd[13]_i_3_n_0 ;
  wire \data_to_bcd[13]_i_4_n_0 ;
  wire \data_to_bcd[13]_i_5_n_0 ;
  wire \data_to_bcd[13]_i_6_n_0 ;
  wire data_to_bcd_trcvd_i_1_n_0;
  wire echo_IBUF;
  wire [15:0]echo_cnt;
  wire [15:1]echo_cnt0;
  wire echo_cnt0_carry__0_n_0;
  wire echo_cnt0_carry__1_n_0;
  wire echo_cnt0_carry_n_0;
  wire \echo_cnt[0]_i_1_n_0 ;
  wire \echo_cnt[15]_i_1_n_0 ;
  wire echo_old;
  wire echo_old_i_1_n_0;
  wire from_bcd_to_sensor_rcvd;
  wire from_sensor_to_bcd_trcvd;
  wire \genblk1[1].internal_clk[2]_i_1_n_0 ;
  wire \genblk1[2].internal_clk[3]_i_1_n_0 ;
  wire \genblk1[3].internal_clk[4]_i_1_n_0 ;
  wire \genblk1[4].internal_clk[5]_i_1_n_0 ;
  wire \genblk1[5].internal_clk[6]_i_1_n_0 ;
  wire \genblk1[6].internal_clk[7]_i_1_n_0 ;
  wire \genblk1[7].internal_clk[8]_i_1_n_0 ;
  wire \genblk1[8].internal_clk[9]_i_1_n_0 ;
  wire \genblk1[9].internal_clk[10]_i_1_n_0 ;
  wire go_btn_IBUF;
  wire internal_clk;
  wire [9:1]internal_clk_0;
  wire internal_clk_BUFG;
  wire [1:1]internal_clk__0;
  wire [3:0]next_state;
  wire \next_state_reg[0]_i_1_n_0 ;
  wire \next_state_reg[0]_i_2_n_0 ;
  wire \next_state_reg[0]_i_3_n_0 ;
  wire \next_state_reg[0]_i_4_n_0 ;
  wire \next_state_reg[1]_i_1_n_0 ;
  wire \next_state_reg[1]_i_2_n_0 ;
  wire \next_state_reg[1]_i_3_n_0 ;
  wire \next_state_reg[1]_i_4_n_0 ;
  wire \next_state_reg[1]_i_5_n_0 ;
  wire \next_state_reg[2]_i_1_n_0 ;
  wire \next_state_reg[2]_i_2_n_0 ;
  wire \next_state_reg[2]_i_3_n_0 ;
  wire \next_state_reg[3]_i_1_n_0 ;
  wire \next_state_reg[3]_i_2_n_0 ;
  wire \next_state_reg[3]_i_3_n_0 ;
  wire \next_state_reg[3]_i_4_n_0 ;
  wire \next_state_reg[3]_i_5_n_0 ;
  wire p_1_in;
  wire [3:0]prev_state;
  wire ready;
  wire ready_old;
  wire ready_old_reg_0;
  wire rst_IBUF;
  wire trig;
  wire trig_OBUF;
  wire trig_i_2_n_0;
  wire trig_i_4_n_0;
  wire trig_i_5_n_0;
  wire trig_i_6_n_0;
  wire trig_i_7_n_0;
  wire valid;
  wire valid_i_1_n_0;
  wire valid_i_2_n_0;
  wire valid_i_3_n_0;
  wire valid_i_4_n_0;
  wire valid_i_5_n_0;
  wire [2:0]\NLW_cnt_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire NLW_data_16_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_data_16_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_data_16_reg_OVERFLOW_UNCONNECTED;
  wire NLW_data_16_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_data_16_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_data_16_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_data_16_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_data_16_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_data_16_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_data_16_reg_P_UNCONNECTED;
  wire [47:0]NLW_data_16_reg_PCOUT_UNCONNECTED;
  wire [2:0]NLW_echo_cnt0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_echo_cnt0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_echo_cnt0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_echo_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_echo_cnt0_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0010)) 
    \cnt[0]_i_1 
       (.I0(prev_state[3]),
        .I1(prev_state[2]),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .O(cnt));
  LUT4 #(
    .INIT(16'h4044)) 
    \cnt[0]_i_2 
       (.I0(prev_state[2]),
        .I1(prev_state[1]),
        .I2(prev_state[0]),
        .I3(prev_state[3]),
        .O(\cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(cnt_reg[0]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\NLW_cnt_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[16]_i_1_O_UNCONNECTED [3],\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,cnt_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(cnt_reg[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(cnt_reg[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(cnt_reg[3]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(\cnt[0]_i_2_n_0 ),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(cnt));
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    data_16_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_data_16_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_data_16_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_data_16_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_data_16_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(data_16_reg_i_1_n_0),
        .CLK(internal_clk_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_data_16_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_data_16_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_data_16_reg_P_UNCONNECTED[47:25],data_16_reg_n_81,data_16_reg_n_82,data_16_reg_n_83,data_16_reg_n_84,data_16_reg_n_85,data_16_reg_n_86,data_16_reg_n_87,data_16_reg_n_88,data_16_reg_n_89,data_16_reg_n_90,data_16_reg_n_91,data_16_reg_n_92,data_16_reg_n_93,data_16_reg_n_94,NLW_data_16_reg_P_UNCONNECTED[10:0]}),
        .PATTERNBDETECT(NLW_data_16_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_data_16_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_data_16_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(data_16),
        .UNDERFLOW(NLW_data_16_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0004)) 
    data_16_reg_i_1
       (.I0(prev_state[3]),
        .I1(prev_state[2]),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .O(data_16_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_10
       (.I0(echo_cnt0[8]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_11
       (.I0(echo_cnt0[7]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_12
       (.I0(echo_cnt0[6]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_13
       (.I0(echo_cnt0[5]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_14
       (.I0(echo_cnt0[4]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_15
       (.I0(echo_cnt0[3]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_16
       (.I0(echo_cnt0[2]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_17
       (.I0(echo_cnt0[1]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'h04)) 
    data_16_reg_i_18
       (.I0(echo_cnt[0]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'h4000)) 
    data_16_reg_i_2
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .O(data_16));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_3
       (.I0(echo_cnt0[15]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[15]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_4
       (.I0(echo_cnt0[14]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[14]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_5
       (.I0(echo_cnt0[13]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[13]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_6
       (.I0(echo_cnt0[12]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[12]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_7
       (.I0(echo_cnt0[11]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[11]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_8
       (.I0(echo_cnt0[10]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[10]));
  LUT3 #(
    .INIT(8'h08)) 
    data_16_reg_i_9
       (.I0(echo_cnt0[9]),
        .I1(prev_state[1]),
        .I2(prev_state[3]),
        .O(A[9]));
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \data_out[0]_i_1 
       (.I0(prev_state[1]),
        .I1(\data_out_reg[0]_0 ),
        .I2(prev_state[3]),
        .I3(prev_state[0]),
        .I4(\data_out[0]_i_2_n_0 ),
        .O(data_out[0]));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \data_out[0]_i_2 
       (.I0(data0[0]),
        .I1(prev_state[0]),
        .I2(data1[0]),
        .I3(prev_state[3]),
        .I4(prev_state[2]),
        .O(\data_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \data_out[1]_i_1 
       (.I0(data1[1]),
        .I1(prev_state[0]),
        .I2(data0[1]),
        .I3(prev_state[2]),
        .I4(prev_state[3]),
        .I5(\data_out[1]_i_2_n_0 ),
        .O(data_out[1]));
  LUT5 #(
    .INIT(32'h0000EAE0)) 
    \data_out[1]_i_2 
       (.I0(prev_state[3]),
        .I1(prev_state[2]),
        .I2(prev_state[0]),
        .I3(\data_out_reg[1]_0 ),
        .I4(prev_state[1]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \data_out[2]_i_1 
       (.I0(prev_state[1]),
        .I1(\data_out_reg[2]_0 ),
        .I2(prev_state[3]),
        .I3(prev_state[0]),
        .I4(\data_out[2]_i_2_n_0 ),
        .O(data_out[2]));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \data_out[2]_i_2 
       (.I0(data0[2]),
        .I1(prev_state[0]),
        .I2(data1[2]),
        .I3(prev_state[3]),
        .I4(prev_state[2]),
        .O(\data_out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2A28)) 
    \data_out[3]_i_1 
       (.I0(prev_state[3]),
        .I1(prev_state[0]),
        .I2(prev_state[1]),
        .I3(\data_out_reg[3]_0 ),
        .I4(\data_out[3]_i_2_n_0 ),
        .O(data_out[3]));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \data_out[3]_i_2 
       (.I0(data0[3]),
        .I1(prev_state[0]),
        .I2(data1[3]),
        .I3(prev_state[3]),
        .I4(prev_state[2]),
        .O(\data_out[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6465)) 
    \data_out[4]_i_1 
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .I2(prev_state[1]),
        .I3(prev_state[0]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h11F0)) 
    \data_out[4]_i_2 
       (.I0(prev_state[1]),
        .I1(prev_state[0]),
        .I2(prev_state[2]),
        .I3(prev_state[3]),
        .O(data_out[4]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(\data_out[4]_i_1_n_0 ),
        .D(data_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(\data_out[4]_i_1_n_0 ),
        .D(data_out[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(\data_out[4]_i_1_n_0 ),
        .D(data_out[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(\data_out[4]_i_1_n_0 ),
        .D(data_out[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(\data_out[4]_i_1_n_0 ),
        .D(data_out[4]),
        .Q(Q[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAFAF5FA0050A080)) 
    data_ready_i_1
       (.I0(prev_state[2]),
        .I1(from_bcd_to_sensor_rcvd),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .I4(prev_state[3]),
        .I5(data_ready),
        .O(data_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ready_reg
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(data_ready_i_1_n_0),
        .Q(data_ready),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \data_to_bcd[13]_i_1 
       (.I0(\data_to_bcd[13]_i_3_n_0 ),
        .I1(prev_state[2]),
        .O(\data_to_bcd[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA2AAAAAAAA)) 
    \data_to_bcd[13]_i_2 
       (.I0(\data_to_bcd[13]_i_3_n_0 ),
        .I1(\data_to_bcd[13]_i_4_n_0 ),
        .I2(\data_to_bcd[13]_i_5_n_0 ),
        .I3(\data_to_bcd[13]_i_6_n_0 ),
        .I4(from_sensor_to_bcd_trcvd),
        .I5(prev_state[2]),
        .O(\data_to_bcd[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0111)) 
    \data_to_bcd[13]_i_3 
       (.I0(prev_state[1]),
        .I1(prev_state[3]),
        .I2(prev_state[0]),
        .I3(prev_state[2]),
        .O(\data_to_bcd[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_to_bcd[13]_i_4 
       (.I0(data_16_reg_n_87),
        .I1(data_16_reg_n_90),
        .I2(data_16_reg_n_89),
        .I3(data_16_reg_n_82),
        .I4(data_16_reg_n_92),
        .I5(data_16_reg_n_84),
        .O(\data_to_bcd[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_to_bcd[13]_i_5 
       (.I0(data_16_reg_n_81),
        .I1(data_16_reg_n_93),
        .I2(data_16_reg_n_86),
        .I3(data_16_reg_n_94),
        .O(\data_to_bcd[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_to_bcd[13]_i_6 
       (.I0(data_16_reg_n_83),
        .I1(data_16_reg_n_91),
        .I2(data_16_reg_n_85),
        .I3(data_16_reg_n_88),
        .O(\data_to_bcd[13]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_94),
        .Q(data_to_bcd[0]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_84),
        .Q(data_to_bcd[10]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_83),
        .Q(data_to_bcd[11]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[12] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_82),
        .Q(data_to_bcd[12]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[13] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_81),
        .Q(data_to_bcd[13]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_93),
        .Q(data_to_bcd[1]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_92),
        .Q(data_to_bcd[2]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_91),
        .Q(data_to_bcd[3]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_90),
        .Q(data_to_bcd[4]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_89),
        .Q(data_to_bcd[5]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_88),
        .Q(data_to_bcd[6]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_87),
        .Q(data_to_bcd[7]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_86),
        .Q(data_to_bcd[8]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_to_bcd_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(\data_to_bcd[13]_i_2_n_0 ),
        .D(data_16_reg_n_85),
        .Q(data_to_bcd[9]),
        .R(\data_to_bcd[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFEF000000)) 
    data_to_bcd_trcvd_i_1
       (.I0(\data_to_bcd[13]_i_6_n_0 ),
        .I1(\data_to_bcd[13]_i_5_n_0 ),
        .I2(\data_to_bcd[13]_i_4_n_0 ),
        .I3(prev_state[2]),
        .I4(\data_to_bcd[13]_i_3_n_0 ),
        .I5(from_sensor_to_bcd_trcvd),
        .O(data_to_bcd_trcvd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_to_bcd_trcvd_reg
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(data_to_bcd_trcvd_i_1_n_0),
        .Q(from_sensor_to_bcd_trcvd),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 echo_cnt0_carry
       (.CI(1'b0),
        .CO({echo_cnt0_carry_n_0,NLW_echo_cnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(echo_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(echo_cnt0[4:1]),
        .S(echo_cnt[4:1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 echo_cnt0_carry__0
       (.CI(echo_cnt0_carry_n_0),
        .CO({echo_cnt0_carry__0_n_0,NLW_echo_cnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(echo_cnt0[8:5]),
        .S(echo_cnt[8:5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 echo_cnt0_carry__1
       (.CI(echo_cnt0_carry__0_n_0),
        .CO({echo_cnt0_carry__1_n_0,NLW_echo_cnt0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(echo_cnt0[12:9]),
        .S(echo_cnt[12:9]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 echo_cnt0_carry__2
       (.CI(echo_cnt0_carry__1_n_0),
        .CO(NLW_echo_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_echo_cnt0_carry__2_O_UNCONNECTED[3],echo_cnt0[15:13]}),
        .S({1'b0,echo_cnt[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \echo_cnt[0]_i_1 
       (.I0(echo_cnt[0]),
        .O(\echo_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4001)) 
    \echo_cnt[15]_i_1 
       (.I0(prev_state[2]),
        .I1(prev_state[0]),
        .I2(prev_state[1]),
        .I3(prev_state[3]),
        .O(\echo_cnt[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00C1)) 
    \echo_cnt[15]_i_2 
       (.I0(prev_state[3]),
        .I1(prev_state[1]),
        .I2(prev_state[0]),
        .I3(prev_state[2]),
        .O(CEA2));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(\echo_cnt[0]_i_1_n_0 ),
        .Q(echo_cnt[0]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[10] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[10]),
        .Q(echo_cnt[10]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[11] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[11]),
        .Q(echo_cnt[11]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[12] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[12]),
        .Q(echo_cnt[12]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[13] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[13]),
        .Q(echo_cnt[13]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[14] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[14]),
        .Q(echo_cnt[14]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[15] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[15]),
        .Q(echo_cnt[15]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[1]),
        .Q(echo_cnt[1]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[2]),
        .Q(echo_cnt[2]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[3]),
        .Q(echo_cnt[3]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[4] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[4]),
        .Q(echo_cnt[4]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[5] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[5]),
        .Q(echo_cnt[5]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[6] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[6]),
        .Q(echo_cnt[6]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[7] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[7]),
        .Q(echo_cnt[7]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[8] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[8]),
        .Q(echo_cnt[8]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \echo_cnt_reg[9] 
       (.C(internal_clk_BUFG),
        .CE(CEA2),
        .D(echo_cnt0[9]),
        .Q(echo_cnt[9]),
        .R(\echo_cnt[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    echo_old_i_1
       (.I0(rst_IBUF),
        .O(echo_old_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    echo_old_reg
       (.C(internal_clk_BUFG),
        .CE(echo_old_i_1_n_0),
        .D(echo_IBUF),
        .Q(echo_old),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \genblk1[0].internal_clk[1]_i_1 
       (.I0(internal_clk_0[1]),
        .O(internal_clk__0));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].internal_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(internal_clk__0),
        .Q(internal_clk_0[1]),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[1].internal_clk[2]_i_1 
       (.I0(internal_clk_0[2]),
        .I1(rst_IBUF),
        .O(\genblk1[1].internal_clk[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].internal_clk_reg[2] 
       (.C(internal_clk_0[1]),
        .CE(1'b1),
        .D(\genblk1[1].internal_clk[2]_i_1_n_0 ),
        .Q(internal_clk_0[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[2].internal_clk[3]_i_1 
       (.I0(internal_clk_0[3]),
        .I1(rst_IBUF),
        .O(\genblk1[2].internal_clk[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].internal_clk_reg[3] 
       (.C(internal_clk_0[2]),
        .CE(1'b1),
        .D(\genblk1[2].internal_clk[3]_i_1_n_0 ),
        .Q(internal_clk_0[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[3].internal_clk[4]_i_1 
       (.I0(internal_clk_0[4]),
        .I1(rst_IBUF),
        .O(\genblk1[3].internal_clk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].internal_clk_reg[4] 
       (.C(internal_clk_0[3]),
        .CE(1'b1),
        .D(\genblk1[3].internal_clk[4]_i_1_n_0 ),
        .Q(internal_clk_0[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[4].internal_clk[5]_i_1 
       (.I0(internal_clk_0[5]),
        .I1(rst_IBUF),
        .O(\genblk1[4].internal_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[4].internal_clk_reg[5] 
       (.C(internal_clk_0[4]),
        .CE(1'b1),
        .D(\genblk1[4].internal_clk[5]_i_1_n_0 ),
        .Q(internal_clk_0[5]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[5].internal_clk[6]_i_1 
       (.I0(internal_clk_0[6]),
        .I1(rst_IBUF),
        .O(\genblk1[5].internal_clk[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[5].internal_clk_reg[6] 
       (.C(internal_clk_0[5]),
        .CE(1'b1),
        .D(\genblk1[5].internal_clk[6]_i_1_n_0 ),
        .Q(internal_clk_0[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[6].internal_clk[7]_i_1 
       (.I0(internal_clk_0[7]),
        .I1(rst_IBUF),
        .O(\genblk1[6].internal_clk[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[6].internal_clk_reg[7] 
       (.C(internal_clk_0[6]),
        .CE(1'b1),
        .D(\genblk1[6].internal_clk[7]_i_1_n_0 ),
        .Q(internal_clk_0[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[7].internal_clk[8]_i_1 
       (.I0(internal_clk_0[8]),
        .I1(rst_IBUF),
        .O(\genblk1[7].internal_clk[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[7].internal_clk_reg[8] 
       (.C(internal_clk_0[7]),
        .CE(1'b1),
        .D(\genblk1[7].internal_clk[8]_i_1_n_0 ),
        .Q(internal_clk_0[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[8].internal_clk[9]_i_1 
       (.I0(internal_clk_0[9]),
        .I1(rst_IBUF),
        .O(\genblk1[8].internal_clk[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[8].internal_clk_reg[9] 
       (.C(internal_clk_0[8]),
        .CE(1'b1),
        .D(\genblk1[8].internal_clk[9]_i_1_n_0 ),
        .Q(internal_clk_0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \genblk1[9].internal_clk[10]_i_1 
       (.I0(internal_clk),
        .I1(rst_IBUF),
        .O(\genblk1[9].internal_clk[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[9].internal_clk_reg[10] 
       (.C(internal_clk_0[9]),
        .CE(1'b1),
        .D(\genblk1[9].internal_clk[10]_i_1_n_0 ),
        .Q(internal_clk),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.CLR(1'b0),
        .D(\next_state_reg[0]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'h1013DCDFDCDFDCDF)) 
    \next_state_reg[0]_i_1 
       (.I0(\next_state_reg[0]_i_2_n_0 ),
        .I1(prev_state[3]),
        .I2(prev_state[2]),
        .I3(\next_state_reg[0]_i_3_n_0 ),
        .I4(\next_state_reg[0]_i_4_n_0 ),
        .I5(\next_state_reg[2]_i_3_n_0 ),
        .O(\next_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F40B0B04F40BFBF)) 
    \next_state_reg[0]_i_2 
       (.I0(ready_old),
        .I1(ready),
        .I2(prev_state[1]),
        .I3(data_ready),
        .I4(prev_state[0]),
        .I5(from_sensor_to_bcd_trcvd),
        .O(\next_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20BFBF2F20B0B0)) 
    \next_state_reg[0]_i_3 
       (.I0(echo_old),
        .I1(echo_IBUF),
        .I2(prev_state[1]),
        .I3(go_btn_IBUF),
        .I4(prev_state[0]),
        .I5(rst_IBUF),
        .O(\next_state_reg[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \next_state_reg[0]_i_4 
       (.I0(prev_state[0]),
        .I1(ready_old),
        .I2(ready),
        .O(\next_state_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.CLR(1'b0),
        .D(\next_state_reg[1]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \next_state_reg[1]_i_1 
       (.I0(prev_state[1]),
        .I1(\next_state_reg[1]_i_2_n_0 ),
        .I2(\next_state_reg[3]_i_3_n_0 ),
        .I3(\next_state_reg[1]_i_3_n_0 ),
        .I4(\next_state_reg[1]_i_4_n_0 ),
        .O(\next_state_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \next_state_reg[1]_i_2 
       (.I0(ready_old),
        .I1(ready),
        .I2(prev_state[0]),
        .O(\next_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F008800)) 
    \next_state_reg[1]_i_3 
       (.I0(prev_state[0]),
        .I1(data_ready),
        .I2(\next_state_reg[1]_i_2_n_0 ),
        .I3(prev_state[2]),
        .I4(prev_state[1]),
        .I5(prev_state[3]),
        .O(\next_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF838F8F800000000)) 
    \next_state_reg[1]_i_4 
       (.I0(go_btn_IBUF),
        .I1(prev_state[0]),
        .I2(prev_state[1]),
        .I3(echo_IBUF),
        .I4(echo_old),
        .I5(\next_state_reg[1]_i_5_n_0 ),
        .O(\next_state_reg[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \next_state_reg[1]_i_5 
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .O(\next_state_reg[1]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.CLR(1'b0),
        .D(\next_state_reg[2]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT6 #(
    .INIT(64'h0000000055550300)) 
    \next_state_reg[2]_i_1 
       (.I0(\next_state_reg[2]_i_2_n_0 ),
        .I1(\next_state_reg[2]_i_3_n_0 ),
        .I2(echo_IBUF),
        .I3(echo_old),
        .I4(prev_state[2]),
        .I5(prev_state[3]),
        .O(\next_state_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \next_state_reg[2]_i_2 
       (.I0(prev_state[0]),
        .I1(ready),
        .I2(ready_old),
        .I3(prev_state[1]),
        .O(\next_state_reg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \next_state_reg[2]_i_3 
       (.I0(prev_state[1]),
        .I1(prev_state[0]),
        .O(\next_state_reg[2]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.CLR(1'b0),
        .D(\next_state_reg[3]_i_1_n_0 ),
        .G(\next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[3]));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    \next_state_reg[3]_i_1 
       (.I0(\next_state_reg[3]_i_3_n_0 ),
        .I1(\next_state_reg[3]_i_4_n_0 ),
        .I2(prev_state[0]),
        .I3(ready),
        .I4(ready_old),
        .I5(prev_state[1]),
        .O(\next_state_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \next_state_reg[3]_i_2 
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .O(\next_state_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \next_state_reg[3]_i_3 
       (.I0(prev_state[3]),
        .I1(prev_state[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(\next_state_reg[3]_i_5_n_0 ),
        .I5(trig_i_4_n_0),
        .O(\next_state_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \next_state_reg[3]_i_4 
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .O(\next_state_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \next_state_reg[3]_i_5 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(prev_state[0]),
        .I3(data_ready),
        .O(\next_state_reg[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[0] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(prev_state[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[1] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(prev_state[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[2] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(prev_state[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \prev_state_reg[3] 
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(next_state[3]),
        .Q(prev_state[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    ready_old_reg
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(ready_old_reg_0),
        .Q(ready_old),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    trig_i_1
       (.I0(prev_state[3]),
        .I1(prev_state[2]),
        .I2(prev_state[0]),
        .I3(prev_state[1]),
        .O(trig));
  LUT4 #(
    .INIT(16'h0004)) 
    trig_i_2
       (.I0(prev_state[2]),
        .I1(prev_state[1]),
        .I2(prev_state[0]),
        .I3(prev_state[3]),
        .O(trig_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000111)) 
    trig_i_3
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(trig_i_4_n_0),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    trig_i_4
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[17]),
        .I2(cnt_reg[18]),
        .I3(trig_i_5_n_0),
        .I4(trig_i_6_n_0),
        .I5(trig_i_7_n_0),
        .O(trig_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    trig_i_5
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[4]),
        .O(trig_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    trig_i_6
       (.I0(cnt_reg[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[9]),
        .I3(cnt_reg[8]),
        .O(trig_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    trig_i_7
       (.I0(cnt_reg[15]),
        .I1(cnt_reg[14]),
        .I2(cnt_reg[13]),
        .I3(cnt_reg[12]),
        .O(trig_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trig_reg
       (.C(internal_clk_BUFG),
        .CE(trig_i_2_n_0),
        .D(p_1_in),
        .Q(trig_OBUF),
        .R(trig));
  LUT6 #(
    .INIT(64'h9999999900000060)) 
    valid_i_1
       (.I0(prev_state[2]),
        .I1(valid_i_2_n_0),
        .I2(valid_i_3_n_0),
        .I3(valid_i_4_n_0),
        .I4(valid_i_5_n_0),
        .I5(valid),
        .O(valid_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    valid_i_2
       (.I0(prev_state[3]),
        .I1(prev_state[1]),
        .O(valid_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF70)) 
    valid_i_3
       (.I0(prev_state[1]),
        .I1(prev_state[0]),
        .I2(prev_state[3]),
        .I3(prev_state[2]),
        .O(valid_i_3_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    valid_i_4
       (.I0(prev_state[0]),
        .I1(data_ready),
        .I2(ready),
        .O(valid_i_4_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    valid_i_5
       (.I0(prev_state[0]),
        .I1(data_ready),
        .I2(ready),
        .O(valid_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg
       (.C(internal_clk_BUFG),
        .CE(1'b1),
        .D(valid_i_1_n_0),
        .Q(valid),
        .R(1'b0));
endmodule

(* DATA_WIDTH = "8" *) (* ECO_CHECKSUM = "51e1b73c" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst,
    trig,
    echo,
    sig,
    go_btn);
  input clk;
  input rst;
  output trig;
  input echo;
  output sig;
  input go_btn;

  wire bcd_n_10;
  wire bcd_n_11;
  wire bcd_n_12;
  wire bcd_n_9;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]data0;
  wire [3:0]data1;
  wire [4:0]data_out;
  wire [13:0]data_to_bcd;
  wire echo;
  wire echo_IBUF;
  wire from_bcd_to_sensor_rcvd;
  wire from_sensor_to_bcd_trcvd;
  wire go_btn;
  wire go_btn_IBUF;
  wire internal_clk;
  wire internal_clk_BUFG;
  wire ready;
  wire ready_old;
  wire rst;
  wire rst_IBUF;
  wire sig;
  wire sig_OBUF;
  wire trig;
  wire trig_OBUF;
  wire uart_n_2;
  wire valid;

  BCD bcd
       (.data0(data0),
        .data1(data1),
        .data_to_bcd(data_to_bcd),
        .\dec_out_reg[0]_0 (bcd_n_12),
        .\dec_out_reg[1]_0 (bcd_n_11),
        .\dec_out_reg[2]_0 (bcd_n_10),
        .\dec_out_reg[3]_0 (bcd_n_9),
        .from_bcd_to_sensor_rcvd(from_bcd_to_sensor_rcvd),
        .from_sensor_to_bcd_trcvd(from_sensor_to_bcd_trcvd),
        .internal_clk_BUFG(internal_clk_BUFG),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF echo_IBUF_inst
       (.I(echo),
        .O(echo_IBUF));
  IBUF go_btn_IBUF_inst
       (.I(go_btn),
        .O(go_btn_IBUF));
  BUFG internal_clk_BUFG_inst
       (.I(internal_clk),
        .O(internal_clk_BUFG));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  HC_SR04 sensor
       (.Q(data_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data0(data0),
        .data1(data1),
        .\data_out_reg[0]_0 (bcd_n_12),
        .\data_out_reg[1]_0 (bcd_n_11),
        .\data_out_reg[2]_0 (bcd_n_10),
        .\data_out_reg[3]_0 (bcd_n_9),
        .data_to_bcd(data_to_bcd),
        .echo_IBUF(echo_IBUF),
        .from_bcd_to_sensor_rcvd(from_bcd_to_sensor_rcvd),
        .from_sensor_to_bcd_trcvd(from_sensor_to_bcd_trcvd),
        .go_btn_IBUF(go_btn_IBUF),
        .internal_clk(internal_clk),
        .internal_clk_BUFG(internal_clk_BUFG),
        .ready(ready),
        .ready_old(ready_old),
        .ready_old_reg_0(uart_n_2),
        .rst_IBUF(rst_IBUF),
        .trig_OBUF(trig_OBUF),
        .valid(valid));
  OBUF sig_OBUF_inst
       (.I(sig_OBUF),
        .O(sig));
  OBUF trig_OBUF_inst
       (.I(trig_OBUF),
        .O(trig));
  uart_tx uart
       (.Q(data_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ready(ready),
        .ready_old(ready_old),
        .ready_r_reg_0(uart_n_2),
        .rst_IBUF(rst_IBUF),
        .sig_OBUF(sig_OBUF),
        .valid(valid));
endmodule

module uart_tx
   (sig_OBUF,
    ready,
    ready_r_reg_0,
    rst_IBUF,
    clk_IBUF_BUFG,
    valid,
    ready_old,
    Q);
  output sig_OBUF;
  output ready;
  output ready_r_reg_0;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input valid;
  input ready_old;
  input [4:0]Q;

  wire FSM_sequential_state_i_1_n_0;
  wire FSM_sequential_state_i_2_n_0;
  wire [4:0]Q;
  wire [3:0]byte_number;
  wire \byte_number[0]_i_1_n_0 ;
  wire \byte_number[1]_i_1_n_0 ;
  wire \byte_number[2]_i_1_n_0 ;
  wire \byte_number[3]_i_1_n_0 ;
  wire \byte_number[3]_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \cnt_clk[1]_i_2_n_0 ;
  wire \cnt_clk[1]_i_3_n_0 ;
  wire \cnt_clk[1]_i_4_n_0 ;
  wire \cnt_clk[5]_i_2_n_0 ;
  wire \cnt_clk[5]_i_3_n_0 ;
  wire \cnt_clk_reg[13]_i_1_n_0 ;
  wire \cnt_clk_reg[13]_i_1_n_4 ;
  wire \cnt_clk_reg[13]_i_1_n_5 ;
  wire \cnt_clk_reg[13]_i_1_n_6 ;
  wire \cnt_clk_reg[13]_i_1_n_7 ;
  wire \cnt_clk_reg[17]_i_1_n_7 ;
  wire \cnt_clk_reg[1]_i_1_n_0 ;
  wire \cnt_clk_reg[1]_i_1_n_4 ;
  wire \cnt_clk_reg[1]_i_1_n_5 ;
  wire \cnt_clk_reg[1]_i_1_n_6 ;
  wire \cnt_clk_reg[1]_i_1_n_7 ;
  wire \cnt_clk_reg[5]_i_1_n_0 ;
  wire \cnt_clk_reg[5]_i_1_n_4 ;
  wire \cnt_clk_reg[5]_i_1_n_5 ;
  wire \cnt_clk_reg[5]_i_1_n_6 ;
  wire \cnt_clk_reg[5]_i_1_n_7 ;
  wire \cnt_clk_reg[9]_i_1_n_0 ;
  wire \cnt_clk_reg[9]_i_1_n_4 ;
  wire \cnt_clk_reg[9]_i_1_n_5 ;
  wire \cnt_clk_reg[9]_i_1_n_6 ;
  wire \cnt_clk_reg[9]_i_1_n_7 ;
  wire \cnt_clk_reg_n_0_[10] ;
  wire \cnt_clk_reg_n_0_[11] ;
  wire \cnt_clk_reg_n_0_[12] ;
  wire \cnt_clk_reg_n_0_[13] ;
  wire \cnt_clk_reg_n_0_[14] ;
  wire \cnt_clk_reg_n_0_[15] ;
  wire \cnt_clk_reg_n_0_[16] ;
  wire \cnt_clk_reg_n_0_[1] ;
  wire \cnt_clk_reg_n_0_[2] ;
  wire \cnt_clk_reg_n_0_[3] ;
  wire \cnt_clk_reg_n_0_[4] ;
  wire \cnt_clk_reg_n_0_[5] ;
  wire \cnt_clk_reg_n_0_[6] ;
  wire \cnt_clk_reg_n_0_[7] ;
  wire \cnt_clk_reg_n_0_[8] ;
  wire \cnt_clk_reg_n_0_[9] ;
  wire [4:0]data_r;
  wire \data_r[4]_i_1_n_0 ;
  wire \data_r[4]_i_2_n_0 ;
  wire internal_clk;
  wire p_0_in;
  wire ready;
  wire ready_old;
  wire ready_r;
  wire ready_r_i_1_n_0;
  wire ready_r_reg_0;
  wire rst_IBUF;
  wire sig_OBUF;
  wire sig_r;
  wire sig_r_i_2_n_0;
  wire sig_r_i_3_n_0;
  wire sig_r_i_4_n_0;
  wire valid;
  wire [2:0]\NLW_cnt_clk_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_clk_reg[17]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_clk_reg[17]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_clk_reg[1]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_clk_reg[5]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_clk_reg[9]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hBFFF5500)) 
    FSM_sequential_state_i_1
       (.I0(rst_IBUF),
        .I1(valid),
        .I2(ready),
        .I3(FSM_sequential_state_i_2_n_0),
        .I4(ready_r),
        .O(FSM_sequential_state_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    FSM_sequential_state_i_2
       (.I0(ready_r),
        .I1(byte_number[2]),
        .I2(byte_number[3]),
        .I3(byte_number[1]),
        .I4(byte_number[0]),
        .O(FSM_sequential_state_i_2_n_0));
  (* FSM_ENCODED_STATES = "STT_DATA:0,STT_WAIT:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_state_reg
       (.C(internal_clk),
        .CE(1'b1),
        .D(FSM_sequential_state_i_1_n_0),
        .Q(ready_r),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \byte_number[0]_i_1 
       (.I0(ready_r),
        .I1(byte_number[0]),
        .O(\byte_number[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \byte_number[1]_i_1 
       (.I0(byte_number[0]),
        .I1(byte_number[1]),
        .I2(ready_r),
        .O(\byte_number[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \byte_number[2]_i_1 
       (.I0(ready_r),
        .I1(byte_number[1]),
        .I2(byte_number[0]),
        .I3(byte_number[2]),
        .O(\byte_number[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_number[3]_i_1 
       (.I0(rst_IBUF),
        .I1(ready),
        .I2(ready_r),
        .O(\byte_number[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h15554000)) 
    \byte_number[3]_i_2 
       (.I0(ready_r),
        .I1(byte_number[0]),
        .I2(byte_number[1]),
        .I3(byte_number[2]),
        .I4(byte_number[3]),
        .O(\byte_number[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_number_reg[0] 
       (.C(internal_clk),
        .CE(\byte_number[3]_i_1_n_0 ),
        .D(\byte_number[0]_i_1_n_0 ),
        .Q(byte_number[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_number_reg[1] 
       (.C(internal_clk),
        .CE(\byte_number[3]_i_1_n_0 ),
        .D(\byte_number[1]_i_1_n_0 ),
        .Q(byte_number[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_number_reg[2] 
       (.C(internal_clk),
        .CE(\byte_number[3]_i_1_n_0 ),
        .D(\byte_number[2]_i_1_n_0 ),
        .Q(byte_number[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_number_reg[3] 
       (.C(internal_clk),
        .CE(\byte_number[3]_i_1_n_0 ),
        .D(\byte_number[3]_i_2_n_0 ),
        .Q(byte_number[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[1]_i_2 
       (.I0(\cnt_clk_reg_n_0_[3] ),
        .O(\cnt_clk[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[1]_i_3 
       (.I0(\cnt_clk_reg_n_0_[2] ),
        .O(\cnt_clk[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[1]_i_4 
       (.I0(\cnt_clk_reg_n_0_[1] ),
        .O(\cnt_clk[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[5]_i_2 
       (.I0(\cnt_clk_reg_n_0_[8] ),
        .O(\cnt_clk[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[5]_i_3 
       (.I0(\cnt_clk_reg_n_0_[5] ),
        .O(\cnt_clk[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[9]_i_1_n_6 ),
        .Q(\cnt_clk_reg_n_0_[10] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[9]_i_1_n_5 ),
        .Q(\cnt_clk_reg_n_0_[11] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[9]_i_1_n_4 ),
        .Q(\cnt_clk_reg_n_0_[12] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[13]_i_1_n_7 ),
        .Q(\cnt_clk_reg_n_0_[13] ),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_clk_reg[13]_i_1 
       (.CI(\cnt_clk_reg[9]_i_1_n_0 ),
        .CO({\cnt_clk_reg[13]_i_1_n_0 ,\NLW_cnt_clk_reg[13]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[13]_i_1_n_4 ,\cnt_clk_reg[13]_i_1_n_5 ,\cnt_clk_reg[13]_i_1_n_6 ,\cnt_clk_reg[13]_i_1_n_7 }),
        .S({\cnt_clk_reg_n_0_[16] ,\cnt_clk_reg_n_0_[15] ,\cnt_clk_reg_n_0_[14] ,\cnt_clk_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[13]_i_1_n_6 ),
        .Q(\cnt_clk_reg_n_0_[14] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[13]_i_1_n_5 ),
        .Q(\cnt_clk_reg_n_0_[15] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[13]_i_1_n_4 ),
        .Q(\cnt_clk_reg_n_0_[16] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[17]_i_1_n_7 ),
        .Q(p_0_in),
        .R(rst_IBUF));
  CARRY4 \cnt_clk_reg[17]_i_1 
       (.CI(\cnt_clk_reg[13]_i_1_n_0 ),
        .CO(\NLW_cnt_clk_reg[17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_clk_reg[17]_i_1_O_UNCONNECTED [3:1],\cnt_clk_reg[17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_0_in}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[1]_i_1_n_7 ),
        .Q(\cnt_clk_reg_n_0_[1] ),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_clk_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\cnt_clk_reg[1]_i_1_n_0 ,\NLW_cnt_clk_reg[1]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\cnt_clk_reg[1]_i_1_n_4 ,\cnt_clk_reg[1]_i_1_n_5 ,\cnt_clk_reg[1]_i_1_n_6 ,\cnt_clk_reg[1]_i_1_n_7 }),
        .S({\cnt_clk_reg_n_0_[4] ,\cnt_clk[1]_i_2_n_0 ,\cnt_clk[1]_i_3_n_0 ,\cnt_clk[1]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[1]_i_1_n_6 ),
        .Q(\cnt_clk_reg_n_0_[2] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[1]_i_1_n_5 ),
        .Q(\cnt_clk_reg_n_0_[3] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[1]_i_1_n_4 ),
        .Q(\cnt_clk_reg_n_0_[4] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[5]_i_1_n_7 ),
        .Q(\cnt_clk_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_clk_reg[5]_i_1 
       (.CI(\cnt_clk_reg[1]_i_1_n_0 ),
        .CO({\cnt_clk_reg[5]_i_1_n_0 ,\NLW_cnt_clk_reg[5]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b1}),
        .O({\cnt_clk_reg[5]_i_1_n_4 ,\cnt_clk_reg[5]_i_1_n_5 ,\cnt_clk_reg[5]_i_1_n_6 ,\cnt_clk_reg[5]_i_1_n_7 }),
        .S({\cnt_clk[5]_i_2_n_0 ,\cnt_clk_reg_n_0_[7] ,\cnt_clk_reg_n_0_[6] ,\cnt_clk[5]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[5]_i_1_n_6 ),
        .Q(\cnt_clk_reg_n_0_[6] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[5]_i_1_n_5 ),
        .Q(\cnt_clk_reg_n_0_[7] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[5]_i_1_n_4 ),
        .Q(\cnt_clk_reg_n_0_[8] ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_clk_reg[9]_i_1_n_7 ),
        .Q(\cnt_clk_reg_n_0_[9] ),
        .R(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_clk_reg[9]_i_1 
       (.CI(\cnt_clk_reg[5]_i_1_n_0 ),
        .CO({\cnt_clk_reg[9]_i_1_n_0 ,\NLW_cnt_clk_reg[9]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_clk_reg[9]_i_1_n_4 ,\cnt_clk_reg[9]_i_1_n_5 ,\cnt_clk_reg[9]_i_1_n_6 ,\cnt_clk_reg[9]_i_1_n_7 }),
        .S({\cnt_clk_reg_n_0_[12] ,\cnt_clk_reg_n_0_[11] ,\cnt_clk_reg_n_0_[10] ,\cnt_clk_reg_n_0_[9] }));
  LUT4 #(
    .INIT(16'h0008)) 
    \data_r[4]_i_1 
       (.I0(ready),
        .I1(ready_r),
        .I2(rst_IBUF),
        .I3(valid),
        .O(\data_r[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \data_r[4]_i_2 
       (.I0(rst_IBUF),
        .I1(ready_r),
        .I2(ready),
        .O(\data_r[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0] 
       (.C(internal_clk),
        .CE(\data_r[4]_i_2_n_0 ),
        .D(Q[0]),
        .Q(data_r[0]),
        .R(\data_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1] 
       (.C(internal_clk),
        .CE(\data_r[4]_i_2_n_0 ),
        .D(Q[1]),
        .Q(data_r[1]),
        .R(\data_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[2] 
       (.C(internal_clk),
        .CE(\data_r[4]_i_2_n_0 ),
        .D(Q[2]),
        .Q(data_r[2]),
        .R(\data_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[3] 
       (.C(internal_clk),
        .CE(\data_r[4]_i_2_n_0 ),
        .D(Q[3]),
        .Q(data_r[3]),
        .R(\data_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[4] 
       (.C(internal_clk),
        .CE(\data_r[4]_i_2_n_0 ),
        .D(Q[4]),
        .Q(data_r[4]),
        .R(\data_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    internal_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(internal_clk),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'hE2)) 
    ready_old_i_1
       (.I0(ready),
        .I1(rst_IBUF),
        .I2(ready_old),
        .O(ready_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h006E)) 
    ready_r_i_1
       (.I0(ready),
        .I1(ready_r),
        .I2(valid),
        .I3(rst_IBUF),
        .O(ready_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_r_reg
       (.C(internal_clk),
        .CE(1'b1),
        .D(ready_r_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    sig_r_i_1
       (.I0(ready),
        .I1(ready_r),
        .O(sig_r));
  LUT5 #(
    .INIT(32'h00AEAEAE)) 
    sig_r_i_2
       (.I0(sig_r_i_3_n_0),
        .I1(sig_r_i_4_n_0),
        .I2(byte_number[2]),
        .I3(ready_r),
        .I4(valid),
        .O(sig_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0FFF0F4F0F0F0F4)) 
    sig_r_i_3
       (.I0(byte_number[0]),
        .I1(byte_number[3]),
        .I2(ready_r),
        .I3(byte_number[1]),
        .I4(byte_number[2]),
        .I5(data_r[4]),
        .O(sig_r_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sig_r_i_4
       (.I0(data_r[3]),
        .I1(data_r[2]),
        .I2(byte_number[1]),
        .I3(data_r[1]),
        .I4(byte_number[0]),
        .I5(data_r[0]),
        .O(sig_r_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sig_r_reg
       (.C(internal_clk),
        .CE(sig_r),
        .D(sig_r_i_2_n_0),
        .Q(sig_OBUF),
        .S(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
