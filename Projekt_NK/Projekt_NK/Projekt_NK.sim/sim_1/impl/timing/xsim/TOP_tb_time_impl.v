// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Feb  8 13:31:30 2024
// Host        : LAPTOP-OBEVJEUN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Papaja/Desktop/PRURE/Projekt_NK/Projekt_NK.sim/sim_1/impl/timing/xsim/TOP_tb_time_impl.v
// Design      : TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter
   (count_r,
    Q,
    BTNC_O,
    clk_IBUF_BUFG,
    AR,
    \output_multi_reg[0]_0 ,
    \output_multi_reg[7]_0 ,
    \output_multi_reg[6]_0 ,
    \output_multi_reg[5]_0 ,
    \output_multi_reg[4]_0 ,
    \output_multi_reg[3]_0 ,
    \output_multi_reg[2]_0 ,
    \output_multi_reg[1]_0 ,
    \output_multi_reg[0]_1 );
  output count_r;
  output [7:0]Q;
  input BTNC_O;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \output_multi_reg[0]_0 ;
  input \output_multi_reg[7]_0 ;
  input \output_multi_reg[6]_0 ;
  input \output_multi_reg[5]_0 ;
  input \output_multi_reg[4]_0 ;
  input \output_multi_reg[3]_0 ;
  input \output_multi_reg[2]_0 ;
  input \output_multi_reg[1]_0 ;
  input \output_multi_reg[0]_1 ;

  wire [0:0]AR;
  wire BTNC_O;
  wire \FSM_onehot_count_c[0]_i_1_n_0 ;
  wire FSM_sequential_count_r_i_1_n_0;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire count_r;
  wire led_output;
  wire \output_multi_reg[0]_0 ;
  wire \output_multi_reg[0]_1 ;
  wire \output_multi_reg[1]_0 ;
  wire \output_multi_reg[2]_0 ;
  wire \output_multi_reg[3]_0 ;
  wire \output_multi_reg[4]_0 ;
  wire \output_multi_reg[5]_0 ;
  wire \output_multi_reg[6]_0 ;
  wire \output_multi_reg[7]_0 ;
  wire \output_multi_reg_n_0_[0] ;
  wire \output_multi_reg_n_0_[1] ;
  wire \output_multi_reg_n_0_[2] ;
  wire \output_multi_reg_n_0_[3] ;
  wire \output_multi_reg_n_0_[4] ;
  wire \output_multi_reg_n_0_[5] ;
  wire \output_multi_reg_n_0_[6] ;
  wire \output_multi_reg_n_0_[7] ;
  wire prev_INPUT_C;
  wire prev_INPUT_R;

  LUT3 #(
    .INIT(8'hB4)) 
    \FSM_onehot_count_c[0]_i_1 
       (.I0(prev_INPUT_C),
        .I1(BTNC_O),
        .I2(led_output),
        .O(\FSM_onehot_count_c[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_count_c_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_count_c[0]_i_1_n_0 ),
        .Q(led_output),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    FSM_sequential_count_r_i_1
       (.I0(prev_INPUT_R),
        .I1(AR),
        .I2(count_r),
        .O(FSM_sequential_count_r_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:1,iSTATE0:0," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_count_r_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(FSM_sequential_count_r_i_1_n_0),
        .Q(count_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(led_output));
  FDRE #(
    .INIT(1'b0)) 
    \led_output_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(led_output));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[0]_1 ),
        .Q(\output_multi_reg_n_0_[0] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[1]_0 ),
        .Q(\output_multi_reg_n_0_[1] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[2]_0 ),
        .Q(\output_multi_reg_n_0_[2] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[3]_0 ),
        .Q(\output_multi_reg_n_0_[3] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[4]_0 ),
        .Q(\output_multi_reg_n_0_[4] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[5]_0 ),
        .Q(\output_multi_reg_n_0_[5] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[6]_0 ),
        .Q(\output_multi_reg_n_0_[6] ),
        .S(\output_multi_reg[0]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \output_multi_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\output_multi_reg[7]_0 ),
        .Q(\output_multi_reg_n_0_[7] ),
        .S(\output_multi_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    prev_INPUT_C_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(BTNC_O),
        .Q(prev_INPUT_C),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_INPUT_R_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(AR),
        .Q(prev_INPUT_R),
        .R(1'b0));
endmodule

module Debouncer
   (AR,
    clk_IBUF_BUFG,
    btnR_IBUF);
  output [0:0]AR;
  input clk_IBUF_BUFG;
  input btnR_IBUF;

  wire [0:0]AR;
  wire BOUT_i_1_n_0;
  wire BOUT_i_2_n_0;
  wire BOUT_i_3_n_0;
  wire BOUT_i_4_n_0;
  wire btnR_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__2_n_0;
  wire count0_carry__3_n_0;
  wire count0_carry__4_n_0;
  wire count0_carry__5_n_0;
  wire count0_carry_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire [31:1]data0;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h88888888888888A8)) 
    BOUT_i_1
       (.I0(state_reg_n_0),
        .I1(AR),
        .I2(btnR_IBUF),
        .I3(count[0]),
        .I4(BOUT_i_2_n_0),
        .I5(\count[31]_i_4_n_0 ),
        .O(BOUT_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_2
       (.I0(\count[31]_i_6_n_0 ),
        .I1(BOUT_i_3_n_0),
        .I2(\count[31]_i_5_n_0 ),
        .I3(BOUT_i_4_n_0),
        .O(BOUT_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_3
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[5]),
        .I3(count[4]),
        .O(BOUT_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_4
       (.I0(count[11]),
        .I1(count[10]),
        .I2(count[13]),
        .I3(count[12]),
        .O(BOUT_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BOUT_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(BOUT_i_1_n_0),
        .Q(AR),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,NLW_count0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,NLW_count0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(count[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,NLW_count0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(count[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO(NLW_count0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,count[31:29]}));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_4_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_2_n_0 ),
        .I3(state_reg_n_0),
        .I4(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \count[31]_i_1 
       (.I0(state_reg_n_0),
        .I1(count[0]),
        .I2(\count[31]_i_2_n_0 ),
        .I3(\count[31]_i_3_n_0 ),
        .I4(\count[31]_i_4_n_0 ),
        .O(\count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_2 
       (.I0(count[12]),
        .I1(count[13]),
        .I2(count[10]),
        .I3(count[11]),
        .I4(\count[31]_i_5_n_0 ),
        .O(\count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[2]),
        .I3(count[3]),
        .I4(\count[31]_i_6_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[31]_i_4 
       (.I0(\count[31]_i_7_n_0 ),
        .I1(\count[31]_i_8_n_0 ),
        .I2(count[31]),
        .I3(count[30]),
        .I4(count[1]),
        .I5(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_5 
       (.I0(count[15]),
        .I1(count[14]),
        .I2(count[17]),
        .I3(count[16]),
        .O(\count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_6 
       (.I0(count[7]),
        .I1(count[6]),
        .I2(count[9]),
        .I3(count[8]),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7 
       (.I0(count[23]),
        .I1(count[22]),
        .I2(count[25]),
        .I3(count[24]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(count[19]),
        .I1(count[18]),
        .I2(count[21]),
        .I3(count[20]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(count[27]),
        .I1(count[26]),
        .I2(count[29]),
        .I3(count[28]),
        .O(\count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[10]),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[11]),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[12]),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[13]),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[14]),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[15]),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[16]),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[17]),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[18]),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[19]),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[1]),
        .Q(count[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[20]),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[21]),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[22]),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[23]),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[24]),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[25]),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[26]),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[27]),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[28]),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[29]),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[2]),
        .Q(count[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[30]),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[31]),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[3]),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[4]),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[5]),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[6]),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[7]),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[8]),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(data0[9]),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCAAAAAAAA)) 
    state_i_1
       (.I0(btnR_IBUF),
        .I1(count[0]),
        .I2(\count[31]_i_2_n_0 ),
        .I3(\count[31]_i_3_n_0 ),
        .I4(\count[31]_i_4_n_0 ),
        .I5(state_reg_n_0),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (BTNC_O,
    clk_IBUF_BUFG,
    btnC_IBUF);
  output BTNC_O;
  input clk_IBUF_BUFG;
  input btnC_IBUF;

  wire BOUT_i_1__0_n_0;
  wire BOUT_i_2__0_n_0;
  wire BOUT_i_3__0_n_0;
  wire BOUT_i_4__0_n_0;
  wire BTNC_O;
  wire btnC_IBUF;
  wire clk_IBUF_BUFG;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1__0_n_0 ;
  wire \count[31]_i_2__0_n_0 ;
  wire \count[31]_i_3__0_n_0 ;
  wire \count[31]_i_4__0_n_0 ;
  wire \count[31]_i_5__0_n_0 ;
  wire \count[31]_i_6__0_n_0 ;
  wire \count[31]_i_7__0_n_0 ;
  wire \count[31]_i_8__0_n_0 ;
  wire \count[31]_i_9__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire state_i_1__0_n_0;
  wire state_reg_n_0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h88888888888888A8)) 
    BOUT_i_1__0
       (.I0(state_reg_n_0),
        .I1(BTNC_O),
        .I2(btnC_IBUF),
        .I3(\count_reg_n_0_[0] ),
        .I4(BOUT_i_2__0_n_0),
        .I5(\count[31]_i_4__0_n_0 ),
        .O(BOUT_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_2__0
       (.I0(\count[31]_i_6__0_n_0 ),
        .I1(BOUT_i_3__0_n_0),
        .I2(\count[31]_i_5__0_n_0 ),
        .I3(BOUT_i_4__0_n_0),
        .O(BOUT_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_3__0
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[4] ),
        .O(BOUT_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_i_4__0
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[12] ),
        .O(BOUT_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BOUT_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(BOUT_i_1__0_n_0),
        .Q(BTNC_O),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,NLW_count0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,NLW_count0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,NLW_count0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO(NLW_count0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_4__0_n_0 ),
        .I1(\count[31]_i_3__0_n_0 ),
        .I2(\count[31]_i_2__0_n_0 ),
        .I3(state_reg_n_0),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \count[31]_i_1__0 
       (.I0(state_reg_n_0),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[31]_i_2__0_n_0 ),
        .I3(\count[31]_i_3__0_n_0 ),
        .I4(\count[31]_i_4__0_n_0 ),
        .O(\count[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_2__0 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count[31]_i_5__0_n_0 ),
        .O(\count[31]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3__0 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count[31]_i_6__0_n_0 ),
        .O(\count[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[31]_i_4__0 
       (.I0(\count[31]_i_7__0_n_0 ),
        .I1(\count[31]_i_8__0_n_0 ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[30] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count[31]_i_9__0_n_0 ),
        .O(\count[31]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_5__0 
       (.I0(\count_reg_n_0_[15] ),
        .I1(\count_reg_n_0_[14] ),
        .I2(\count_reg_n_0_[17] ),
        .I3(\count_reg_n_0_[16] ),
        .O(\count[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_6__0 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .O(\count[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7__0 
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[25] ),
        .I3(\count_reg_n_0_[24] ),
        .O(\count[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8__0 
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[18] ),
        .I2(\count_reg_n_0_[21] ),
        .I3(\count_reg_n_0_[20] ),
        .O(\count[31]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9__0 
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[26] ),
        .I2(\count_reg_n_0_[29] ),
        .I3(\count_reg_n_0_[28] ),
        .O(\count[31]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_6),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_5),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_4),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_7),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_6),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_5),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_4),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_7),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_6),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_5),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_7),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_4),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_7),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_6),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_5),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_4),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_7),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_6),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_5),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_4),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_7),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_6),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_6),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_5),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_5),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_4),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_7),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_6),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_5),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_4),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_7),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCAAAAAAAA)) 
    state_i_1__0
       (.I0(btnC_IBUF),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[31]_i_2__0_n_0 ),
        .I3(\count[31]_i_3__0_n_0 ),
        .I4(\count[31]_i_4__0_n_0 ),
        .I5(state_reg_n_0),
        .O(state_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_i_1__0_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_1
   (BTNL_O,
    BOUT_reg_inv_0,
    clk_IBUF_BUFG,
    btnL_IBUF,
    end_count);
  output BTNL_O;
  output BOUT_reg_inv_0;
  input clk_IBUF_BUFG;
  input btnL_IBUF;
  input [0:0]end_count;

  wire BOUT_inv_i_1_n_0;
  wire BOUT_inv_i_2_n_0;
  wire BOUT_inv_i_3_n_0;
  wire BOUT_inv_i_4_n_0;
  wire BOUT_reg_inv_0;
  wire BTNL_O;
  wire btnL_IBUF;
  wire clk_IBUF_BUFG;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1__1_n_0 ;
  wire \count[31]_i_2__1_n_0 ;
  wire \count[31]_i_3__1_n_0 ;
  wire \count[31]_i_4__1_n_0 ;
  wire \count[31]_i_5__1_n_0 ;
  wire \count[31]_i_6__1_n_0 ;
  wire \count[31]_i_7__1_n_0 ;
  wire \count[31]_i_8__1_n_0 ;
  wire \count[31]_i_9__1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [0:0]end_count;
  wire state_i_1__1_n_0;
  wire state_reg_n_0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDD5D)) 
    BOUT_inv_i_1
       (.I0(state_reg_n_0),
        .I1(BTNL_O),
        .I2(btnL_IBUF),
        .I3(\count_reg_n_0_[0] ),
        .I4(BOUT_inv_i_2_n_0),
        .I5(\count[31]_i_4__1_n_0 ),
        .O(BOUT_inv_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_inv_i_2
       (.I0(\count[31]_i_6__1_n_0 ),
        .I1(BOUT_inv_i_3_n_0),
        .I2(\count[31]_i_5__1_n_0 ),
        .I3(BOUT_inv_i_4_n_0),
        .O(BOUT_inv_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_inv_i_3
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[4] ),
        .O(BOUT_inv_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    BOUT_inv_i_4
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[12] ),
        .O(BOUT_inv_i_4_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    BOUT_reg_inv
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(BOUT_inv_i_1_n_0),
        .Q(BTNL_O),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_onehot_count_speed[0]_i_1 
       (.I0(BTNL_O),
        .I1(end_count),
        .O(BOUT_reg_inv_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,NLW_count0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,NLW_count0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,NLW_count0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO(NLW_count0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_4__1_n_0 ),
        .I1(\count[31]_i_3__1_n_0 ),
        .I2(\count[31]_i_2__1_n_0 ),
        .I3(state_reg_n_0),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \count[31]_i_1__1 
       (.I0(state_reg_n_0),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[31]_i_2__1_n_0 ),
        .I3(\count[31]_i_3__1_n_0 ),
        .I4(\count[31]_i_4__1_n_0 ),
        .O(\count[31]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_2__1 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[10] ),
        .I3(\count_reg_n_0_[11] ),
        .I4(\count[31]_i_5__1_n_0 ),
        .O(\count[31]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3__1 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count[31]_i_6__1_n_0 ),
        .O(\count[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \count[31]_i_4__1 
       (.I0(\count[31]_i_7__1_n_0 ),
        .I1(\count[31]_i_8__1_n_0 ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[30] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count[31]_i_9__1_n_0 ),
        .O(\count[31]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_5__1 
       (.I0(\count_reg_n_0_[15] ),
        .I1(\count_reg_n_0_[14] ),
        .I2(\count_reg_n_0_[17] ),
        .I3(\count_reg_n_0_[16] ),
        .O(\count[31]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_6__1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .O(\count[31]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_7__1 
       (.I0(\count_reg_n_0_[23] ),
        .I1(\count_reg_n_0_[22] ),
        .I2(\count_reg_n_0_[25] ),
        .I3(\count_reg_n_0_[24] ),
        .O(\count[31]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8__1 
       (.I0(\count_reg_n_0_[19] ),
        .I1(\count_reg_n_0_[18] ),
        .I2(\count_reg_n_0_[21] ),
        .I3(\count_reg_n_0_[20] ),
        .O(\count[31]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9__1 
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[26] ),
        .I2(\count_reg_n_0_[29] ),
        .I3(\count_reg_n_0_[28] ),
        .O(\count[31]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_6),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_5),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_4),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_7),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_6),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_5),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__2_n_4),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_7),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_6),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_5),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_7),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__3_n_4),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_7),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_6),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_5),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__4_n_4),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_7),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_6),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_5),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__5_n_4),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_7),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_6),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_6),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__6_n_5),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_5),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry_n_4),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_7),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_6),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_5),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__0_n_4),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(state_reg_n_0),
        .D(count0_carry__1_n_7),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCAAAAAAAA)) 
    state_i_1__1
       (.I0(btnL_IBUF),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[31]_i_2__1_n_0 ),
        .I3(\count[31]_i_3__1_n_0 ),
        .I4(\count[31]_i_4__1_n_0 ),
        .I5(state_reg_n_0),
        .O(state_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(state_i_1__1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule

module Mode3
   (\leds_reg[7]_0 ,
    E,
    clk_IBUF_BUFG,
    AR,
    count_r);
  output \leds_reg[7]_0 ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input count_r;

  wire [0:0]AR;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire count_r;
  wire [7:7]leds;
  wire \leds_reg[7]_0 ;
  wire p_0_in;
  wire toggle;

  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(toggle),
        .Q(leds));
  LUT2 #(
    .INIT(4'h8)) 
    \output_multi[7]_i_1 
       (.I0(leds),
        .I1(count_r),
        .O(\leds_reg[7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(p_0_in));
  FDPE #(
    .INIT(1'b1)) 
    toggle_reg
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in),
        .PRE(AR),
        .Q(toggle));
endmodule

module Mode8
   (\leds_reg[7]_0 ,
    \leds_reg[6]_0 ,
    \leds_reg[5]_0 ,
    \leds_reg[4]_0 ,
    \leds_reg[3]_0 ,
    \leds_reg[2]_0 ,
    \leds_reg[1]_0 ,
    \leds_reg[0]_0 ,
    count_r,
    sw_IBUF,
    E,
    clk_IBUF_BUFG,
    AR);
  output \leds_reg[7]_0 ;
  output \leds_reg[6]_0 ;
  output \leds_reg[5]_0 ;
  output \leds_reg[4]_0 ;
  output \leds_reg[3]_0 ;
  output \leds_reg[2]_0 ;
  output \leds_reg[1]_0 ;
  output \leds_reg[0]_0 ;
  input count_r;
  input [1:0]sw_IBUF;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire [2:1]count;
  wire \count[0]_i_1__0_n_0 ;
  wire count_r;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [7:1]data1;
  wire [7:1]leds;
  wire \leds[0]_i_1_n_0 ;
  wire \leds_reg[0]_0 ;
  wire \leds_reg[1]_0 ;
  wire \leds_reg[2]_0 ;
  wire \leds_reg[3]_0 ;
  wire \leds_reg[4]_0 ;
  wire \leds_reg[5]_0 ;
  wire \leds_reg[6]_0 ;
  wire \leds_reg[7]_0 ;
  wire \leds_reg_n_0_[7] ;
  wire [1:0]sw_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \leds[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\leds[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F80808000)) 
    \leds[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(data1[1]),
        .O(leds[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \leds[2]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(data1[2]),
        .O(leds[2]));
  LUT6 #(
    .INIT(64'hFF7F7F7F80000000)) 
    \leds[3]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[1]),
        .I5(data1[3]),
        .O(leds[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \leds[4]_i_1 
       (.I0(data1[4]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(leds[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \leds[5]_i_1 
       (.I0(data1[5]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(leds[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \leds[6]_i_1 
       (.I0(data1[6]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(leds[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \leds[7]_i_1 
       (.I0(data1[7]),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(leds[7]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\leds[0]_i_1_n_0 ),
        .Q(data1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[1]),
        .Q(data1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[2]),
        .Q(data1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[3]),
        .Q(data1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[4]),
        .Q(data1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[5]),
        .Q(data1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[6]),
        .Q(data1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(leds[7]),
        .Q(\leds_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[0]_i_1 
       (.I0(data1[1]),
        .I1(count_r),
        .O(\leds_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[1]_i_1 
       (.I0(data1[2]),
        .I1(count_r),
        .O(\leds_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[2]_i_1 
       (.I0(data1[3]),
        .I1(count_r),
        .O(\leds_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[3]_i_1 
       (.I0(data1[4]),
        .I1(count_r),
        .O(\leds_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[4]_i_1 
       (.I0(data1[5]),
        .I1(count_r),
        .O(\leds_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[5]_i_1 
       (.I0(data1[6]),
        .I1(count_r),
        .O(\leds_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[6]_i_1 
       (.I0(data1[7]),
        .I1(count_r),
        .O(\leds_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_multi[7]_i_2 
       (.I0(\leds_reg_n_0_[7] ),
        .I1(count_r),
        .O(\leds_reg[7]_0 ));
endmodule

module Prescaler
   (end_count,
    E,
    \FSM_onehot_count_speed_reg[0]_0 ,
    clk_IBUF_BUFG,
    BTNL_O);
  output [0:0]end_count;
  output [0:0]E;
  input \FSM_onehot_count_speed_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input BTNL_O;

  wire BTNL_O;
  wire [0:0]E;
  wire \FSM_onehot_count_speed_reg[0]_0 ;
  wire INTER_CLOCK_i_1_n_0;
  wire clk_IBUF_BUFG;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_i_3_n_0;
  wire count0_carry__0_i_4_n_0;
  wire count0_carry__0_i_5_n_0;
  wire count0_carry__0_i_6_n_0;
  wire count0_carry__0_i_7_n_0;
  wire count0_carry__0_i_8_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__1_i_1_n_0;
  wire count0_carry__1_i_2_n_0;
  wire count0_carry__1_i_3_n_0;
  wire count0_carry__1_i_4_n_0;
  wire count0_carry__1_i_5_n_0;
  wire count0_carry__1_i_6_n_0;
  wire count0_carry__1_i_7_n_0;
  wire count0_carry__1_i_8_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__2_i_1_n_0;
  wire count0_carry__2_i_2_n_0;
  wire count0_carry__2_i_3_n_0;
  wire count0_carry__2_i_4_n_0;
  wire count0_carry__2_i_5_n_0;
  wire count0_carry__2_i_6_n_0;
  wire count0_carry__2_i_7_n_0;
  wire count0_carry__2_n_0;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_i_5_n_0;
  wire count0_carry_i_6_n_0;
  wire count0_carry_i_7_n_0;
  wire count0_carry_i_8_n_0;
  wire count0_carry_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire [30:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [0:0]end_count;
  wire \end_count[0]_i_1_n_0 ;
  wire [0:0]end_count__0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[28]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_count_speed_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_count_speed_reg[0]_0 ),
        .Q(end_count),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    INTER_CLOCK_i_1
       (.I0(count0_carry__2_n_0),
        .I1(BTNL_O),
        .I2(E),
        .O(INTER_CLOCK_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    INTER_CLOCK_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(INTER_CLOCK_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({count0_carry_i_1_n_0,count0_carry_i_2_n_0,count0_carry_i_3_n_0,count0_carry_i_4_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_5_n_0,count0_carry_i_6_n_0,count0_carry_i_7_n_0,count0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count0_carry__0_i_1_n_0,count0_carry__0_i_2_n_0,count0_carry__0_i_3_n_0,count0_carry__0_i_4_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_5_n_0,count0_carry__0_i_6_n_0,count0_carry__0_i_7_n_0,count0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__0_i_1
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__0_i_2
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(count0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__0_i_3
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__0_i_4
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(count0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__0_i_5
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__0_i_6
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(count0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__0_i_7
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(count0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__0_i_8
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(count0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count0_carry__1_i_1_n_0,count0_carry__1_i_2_n_0,count0_carry__1_i_3_n_0,count0_carry__1_i_4_n_0}),
        .O(NLW_count0_carry__1_O_UNCONNECTED[3:0]),
        .S({count0_carry__1_i_5_n_0,count0_carry__1_i_6_n_0,count0_carry__1_i_7_n_0,count0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__1_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__1_i_2
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__1_i_3
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__1_i_4
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__1_i_5
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__1_i_6
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__1_i_7
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__1_i_8
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({count_reg[30],count0_carry__2_i_1_n_0,count0_carry__2_i_2_n_0,count0_carry__2_i_3_n_0}),
        .O(NLW_count0_carry__2_O_UNCONNECTED[3:0]),
        .S({count0_carry__2_i_4_n_0,count0_carry__2_i_5_n_0,count0_carry__2_i_6_n_0,count0_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__2_i_1
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(count0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__2_i_2
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(count0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry__2_i_3
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count0_carry__2_i_4
       (.I0(count_reg[30]),
        .O(count0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_5
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(count0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_6
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(count0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_7
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry_i_1
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(count0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry_i_2
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    count0_carry_i_3
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(count0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB0)) 
    count0_carry_i_4
       (.I0(count_reg[0]),
        .I1(end_count__0),
        .I2(count_reg[1]),
        .O(count0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_5
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(count0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_6
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_7
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(count0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h42)) 
    count0_carry_i_8
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(end_count__0),
        .O(count0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_1 
       (.I0(count0_carry__2_n_0),
        .I1(BTNL_O),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\NLW_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO(\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[28]_i_1_O_UNCONNECTED [3],\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({1'b0,count_reg[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(BTNL_O),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \end_count[0]_i_1 
       (.I0(end_count__0),
        .I1(end_count),
        .I2(BTNL_O),
        .O(\end_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \end_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\end_count[0]_i_1_n_0 ),
        .Q(end_count__0),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "6107a4a3" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module TOP
   (btnR,
    btnC,
    btnL,
    clk,
    sw,
    led);
  input btnR;
  input btnC;
  input btnL;
  input clk;
  input [1:0]sw;
  output [7:0]led;

  wire BTNC_O;
  wire BTNL_O;
  wire BTNR_O;
  wire COUT;
  wire Debouncer_2_n_1;
  wire Mode3_n_0;
  wire Mode8_n_0;
  wire Mode8_n_1;
  wire Mode8_n_2;
  wire Mode8_n_3;
  wire Mode8_n_4;
  wire Mode8_n_5;
  wire Mode8_n_6;
  wire Mode8_n_7;
  wire btnC;
  wire btnC_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire count_r;
  wire [0:0]end_count;
  wire [7:0]led;
  wire [7:0]led_OBUF;
  wire [1:0]sw;
  wire [1:0]sw_IBUF;

initial begin
 $sdf_annotate("TOP_tb_time_impl.sdf",,,,"tool_control");
end
  Counter Counter
       (.AR(BTNR_O),
        .BTNC_O(BTNC_O),
        .Q(led_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_r(count_r),
        .\output_multi_reg[0]_0 (Mode3_n_0),
        .\output_multi_reg[0]_1 (Mode8_n_7),
        .\output_multi_reg[1]_0 (Mode8_n_6),
        .\output_multi_reg[2]_0 (Mode8_n_5),
        .\output_multi_reg[3]_0 (Mode8_n_4),
        .\output_multi_reg[4]_0 (Mode8_n_3),
        .\output_multi_reg[5]_0 (Mode8_n_2),
        .\output_multi_reg[6]_0 (Mode8_n_1),
        .\output_multi_reg[7]_0 (Mode8_n_0));
  Debouncer Debouncer
       (.AR(BTNR_O),
        .btnR_IBUF(btnR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Debouncer_0 Debouncer_1
       (.BTNC_O(BTNC_O),
        .btnC_IBUF(btnC_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Debouncer_1 Debouncer_2
       (.BOUT_reg_inv_0(Debouncer_2_n_1),
        .BTNL_O(BTNL_O),
        .btnL_IBUF(btnL_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .end_count(end_count));
  Mode3 Mode3
       (.AR(BTNR_O),
        .E(COUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_r(count_r),
        .\leds_reg[7]_0 (Mode3_n_0));
  Mode8 Mode8
       (.AR(BTNR_O),
        .E(COUT),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_r(count_r),
        .\leds_reg[0]_0 (Mode8_n_7),
        .\leds_reg[1]_0 (Mode8_n_6),
        .\leds_reg[2]_0 (Mode8_n_5),
        .\leds_reg[3]_0 (Mode8_n_4),
        .\leds_reg[4]_0 (Mode8_n_3),
        .\leds_reg[5]_0 (Mode8_n_2),
        .\leds_reg[6]_0 (Mode8_n_1),
        .\leds_reg[7]_0 (Mode8_n_0),
        .sw_IBUF(sw_IBUF));
  Prescaler Prescaler
       (.BTNL_O(BTNL_O),
        .E(COUT),
        .\FSM_onehot_count_speed_reg[0]_0 (Debouncer_2_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .end_count(end_count));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
