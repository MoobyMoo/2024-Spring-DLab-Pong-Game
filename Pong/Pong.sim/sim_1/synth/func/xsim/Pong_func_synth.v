// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat May 11 17:30:18 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.sim/sim_1/synth/func/xsim/Pong_func_synth.v
// Design      : Pong
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Draw
   (draw_change,
    CO,
    \paddle_y_reg[4] ,
    draw_ball_reg,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[5] ,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \counter_reg[1] ,
    clock_25Mhz_BUFG,
    fixed_column_count14_out,
    draw_paddle_p10,
    draw_paddle_p20,
    draw_ball0,
    fixed_column_count14_out_0,
    fixed_column_count14_out_1,
    display_reg,
    fixed_column_count1,
    draw_t_reg,
    DI,
    S,
    draw_paddle_p2_i_3,
    draw_paddle_p2_i_3_0,
    Q,
    small_row_count,
    draw_r_reg,
    draw_t_reg_0,
    draw_s_reg,
    draw_g_reg,
    draw_b_reg,
    display_reg_0,
    draw_t_reg_1,
    display_reg_1,
    display_reg_2,
    draw_s_reg_0,
    draw_s_reg_1,
    draw_s_reg_2,
    draw_s_reg_3,
    \temp_Blue_reg[3] ,
    \temp_Red_reg[3] ,
    \temp_Blue_reg[3]_0 ,
    \temp_Red_reg[3]_0 ,
    \temp_Red_reg[3]_1 ,
    D,
    \fixed_column_count_reg[4] ,
    \fixed_row_count_reg[4] ,
    \fixed_column_count_reg[3] ,
    \fixed_row_count_reg[4]_0 ,
    \fixed_column_count_reg[5] ,
    \fixed_column_count_reg[5]_0 ,
    \fixed_row_count_reg[4]_1 ,
    \fixed_column_count_reg[3]_0 ,
    \fixed_row_count_reg[4]_2 );
  output draw_change;
  output [0:0]CO;
  output [0:0]\paddle_y_reg[4] ;
  output draw_ball_reg;
  output \FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[5] ;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[2]_1 ;
  output \FSM_onehot_state_reg[2]_2 ;
  output [1:0]\counter_reg[1] ;
  input clock_25Mhz_BUFG;
  input fixed_column_count14_out;
  input draw_paddle_p10;
  input draw_paddle_p20;
  input draw_ball0;
  input fixed_column_count14_out_0;
  input fixed_column_count14_out_1;
  input display_reg;
  input fixed_column_count1;
  input draw_t_reg;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]draw_paddle_p2_i_3;
  input [3:0]draw_paddle_p2_i_3_0;
  input [3:0]Q;
  input [0:0]small_row_count;
  input draw_r_reg;
  input draw_t_reg_0;
  input draw_s_reg;
  input draw_g_reg;
  input draw_b_reg;
  input display_reg_0;
  input draw_t_reg_1;
  input display_reg_1;
  input display_reg_2;
  input draw_s_reg_0;
  input draw_s_reg_1;
  input [3:0]draw_s_reg_2;
  input [3:0]draw_s_reg_3;
  input \temp_Blue_reg[3] ;
  input \temp_Red_reg[3] ;
  input \temp_Blue_reg[3]_0 ;
  input [5:0]\temp_Red_reg[3]_0 ;
  input \temp_Red_reg[3]_1 ;
  input [3:0]D;
  input [3:0]\fixed_column_count_reg[4] ;
  input [3:0]\fixed_row_count_reg[4] ;
  input [2:0]\fixed_column_count_reg[3] ;
  input [3:0]\fixed_row_count_reg[4]_0 ;
  input [4:0]\fixed_column_count_reg[5] ;
  input [3:0]\fixed_column_count_reg[5]_0 ;
  input [4:0]\fixed_row_count_reg[4]_1 ;
  input [3:0]\fixed_column_count_reg[3]_0 ;
  input [4:0]\fixed_row_count_reg[4]_2 ;

  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]DI;
  wire Draw_Game_wrap_n_4;
  wire Draw_Mode_wrap_n_1;
  wire Draw_Over_wrap_n_0;
  wire Draw_Over_wrap_n_1;
  wire Draw_Over_wrap_n_2;
  wire Draw_Over_wrap_n_4;
  wire Draw_Start_wrap_n_3;
  wire Draw_Start_wrap_n_4;
  wire Draw_Start_wrap_n_5;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[5] ;
  wire [3:0]Q;
  wire [3:0]S;
  wire clock_25Mhz_BUFG;
  wire [1:0]\counter_reg[1] ;
  wire display_reg;
  wire display_reg_0;
  wire display_reg_1;
  wire display_reg_2;
  wire draw_b_reg;
  wire draw_ball0;
  wire draw_ball_reg;
  wire draw_change;
  wire draw_g_reg;
  wire draw_paddle_p10;
  wire draw_paddle_p20;
  wire [3:0]draw_paddle_p2_i_3;
  wire [3:0]draw_paddle_p2_i_3_0;
  wire draw_r_reg;
  wire draw_s;
  wire draw_s_reg;
  wire draw_s_reg_0;
  wire draw_s_reg_1;
  wire [3:0]draw_s_reg_2;
  wire [3:0]draw_s_reg_3;
  wire draw_t_reg;
  wire draw_t_reg_0;
  wire draw_t_reg_1;
  wire fixed_column_count1;
  wire fixed_column_count14_out;
  wire fixed_column_count14_out_0;
  wire fixed_column_count14_out_1;
  wire [2:0]\fixed_column_count_reg[3] ;
  wire [3:0]\fixed_column_count_reg[3]_0 ;
  wire [3:0]\fixed_column_count_reg[4] ;
  wire [4:0]\fixed_column_count_reg[5] ;
  wire [3:0]\fixed_column_count_reg[5]_0 ;
  wire [3:0]\fixed_row_count_reg[4] ;
  wire [3:0]\fixed_row_count_reg[4]_0 ;
  wire [4:0]\fixed_row_count_reg[4]_1 ;
  wire [4:0]\fixed_row_count_reg[4]_2 ;
  wire out_clock;
  wire [0:0]\paddle_y_reg[4] ;
  wire [0:0]small_row_count;
  wire \temp_Blue_reg[3] ;
  wire \temp_Blue_reg[3]_0 ;
  wire \temp_Red_reg[3] ;
  wire [5:0]\temp_Red_reg[3]_0 ;
  wire \temp_Red_reg[3]_1 ;

  Draw_Game Draw_Game_wrap
       (.CO(CO),
        .DI(DI),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2] ),
        .\FSM_onehot_state_reg[2]_0 (Draw_Game_wrap_n_4),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state_reg[2]_1 ),
        .\FSM_onehot_state_reg[2]_3 (\FSM_onehot_state_reg[2]_2 ),
        .S(S),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_ball0(draw_ball0),
        .draw_ball_reg_0(draw_ball_reg),
        .draw_paddle_p10(draw_paddle_p10),
        .draw_paddle_p20(draw_paddle_p20),
        .draw_paddle_p2_i_3(draw_paddle_p2_i_3),
        .draw_paddle_p2_i_3_0(draw_paddle_p2_i_3_0),
        .\paddle_y_reg[4] (\paddle_y_reg[4] ),
        .\temp_Blue_reg[3] (Draw_Over_wrap_n_2),
        .\temp_Blue_reg[3]_0 (\temp_Blue_reg[3]_0 ),
        .\temp_Blue_reg[3]_1 (Draw_Start_wrap_n_3),
        .\temp_Green_reg[3] (Draw_Start_wrap_n_4),
        .\temp_Red_reg[2] (Draw_Over_wrap_n_4),
        .\temp_Red_reg[2]_0 (\temp_Red_reg[3]_1 ),
        .\temp_Red_reg[3] (\temp_Red_reg[3] ),
        .\temp_Red_reg[3]_0 (\temp_Red_reg[3]_0 [5:1]),
        .\temp_Red_reg[3]_1 (Draw_Start_wrap_n_5));
  Draw_Mode Draw_Mode_wrap
       (.D(D),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg(display_reg_0),
        .draw_s(draw_s),
        .draw_s_i_2(Draw_Over_wrap_n_0),
        .draw_s_reg(draw_s_reg_0),
        .draw_s_reg_0(draw_s_reg_1),
        .draw_s_reg_1(Draw_Over_wrap_n_1),
        .draw_t_reg_0(Draw_Mode_wrap_n_1),
        .draw_t_reg_1(draw_t_reg_1),
        .fixed_column_count14_out(fixed_column_count14_out),
        .\fixed_column_count_reg[4] (\fixed_column_count_reg[4] ));
  Draw_Over Draw_Over_wrap
       (.\FSM_onehot_state_reg[5] (\FSM_onehot_state_reg[5] ),
        .\FSM_onehot_state_reg[5]_0 (Draw_Over_wrap_n_4),
        .Q(Q),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg(display_reg),
        .display_reg_0(display_reg_1),
        .display_reg_1(display_reg_2),
        .draw_s_reg(Draw_Over_wrap_n_2),
        .draw_s_reg_0(draw_s_reg_2),
        .draw_s_reg_1(draw_s_reg_3),
        .draw_t_reg_0(draw_t_reg),
        .fixed_column_count1(fixed_column_count1),
        .fixed_column_count14_out_0(fixed_column_count14_out_0),
        .fixed_column_count14_out_1(fixed_column_count14_out_1),
        .\fixed_column_count_reg[3] (\fixed_column_count_reg[3] ),
        .\fixed_column_count_reg[3]_0 (\fixed_column_count_reg[3]_0 ),
        .\fixed_column_count_reg[5] (Draw_Over_wrap_n_0),
        .\fixed_column_count_reg[5]_0 (\fixed_column_count_reg[5] ),
        .\fixed_column_count_reg[5]_1 (\fixed_column_count_reg[5]_0 ),
        .\fixed_row_count_reg[4] (\fixed_row_count_reg[4] ),
        .\fixed_row_count_reg[4]_0 (\fixed_row_count_reg[4]_0 ),
        .\fixed_row_count_reg[4]_1 (\fixed_row_count_reg[4]_1 ),
        .\fixed_row_count_reg[4]_2 (\fixed_row_count_reg[4]_2 ),
        .\fixed_row_count_reg[5] (Draw_Over_wrap_n_1),
        .small_row_count(small_row_count),
        .\temp_Blue_reg[3] (\temp_Blue_reg[3] ),
        .\temp_Red_reg[3] (Draw_Game_wrap_n_4),
        .\temp_Red_reg[3]_0 ({\temp_Red_reg[3]_0 [5:4],\temp_Red_reg[3]_0 [2:0]}));
  Draw_Start Draw_Start_wrap
       (.CLK(out_clock),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .\counter_reg[1]_0 (\counter_reg[1] ),
        .draw_b_reg_0(draw_b_reg),
        .draw_change(draw_change),
        .draw_g_reg_0(draw_g_reg),
        .draw_r_reg_0(draw_r_reg),
        .draw_s(draw_s),
        .draw_s_reg_0(draw_s_reg),
        .draw_t_reg_0(Draw_Start_wrap_n_3),
        .draw_t_reg_1(Draw_Start_wrap_n_4),
        .draw_t_reg_2(Draw_Start_wrap_n_5),
        .draw_t_reg_3(draw_t_reg_0),
        .\temp_Blue_reg[3] (Draw_Mode_wrap_n_1),
        .\temp_Red_reg[3] (\temp_Red_reg[3]_1 ));
  clock_divider__parameterized1 clock_sec
       (.CLK(out_clock),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG));
endmodule

module Draw_Game
   (CO,
    \paddle_y_reg[4] ,
    draw_ball_reg_0,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_state_reg[2]_3 ,
    draw_paddle_p10,
    clock_25Mhz_BUFG,
    draw_paddle_p20,
    draw_ball0,
    DI,
    S,
    draw_paddle_p2_i_3,
    draw_paddle_p2_i_3_0,
    \temp_Red_reg[3] ,
    \temp_Blue_reg[3] ,
    \temp_Blue_reg[3]_0 ,
    \temp_Red_reg[2] ,
    \temp_Red_reg[3]_0 ,
    \temp_Blue_reg[3]_1 ,
    \temp_Green_reg[3] ,
    \temp_Red_reg[3]_1 ,
    \temp_Red_reg[2]_0 );
  output [0:0]CO;
  output [0:0]\paddle_y_reg[4] ;
  output draw_ball_reg_0;
  output \FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[2]_1 ;
  output \FSM_onehot_state_reg[2]_2 ;
  output \FSM_onehot_state_reg[2]_3 ;
  input draw_paddle_p10;
  input clock_25Mhz_BUFG;
  input draw_paddle_p20;
  input draw_ball0;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]draw_paddle_p2_i_3;
  input [3:0]draw_paddle_p2_i_3_0;
  input \temp_Red_reg[3] ;
  input \temp_Blue_reg[3] ;
  input \temp_Blue_reg[3]_0 ;
  input \temp_Red_reg[2] ;
  input [4:0]\temp_Red_reg[3]_0 ;
  input \temp_Blue_reg[3]_1 ;
  input \temp_Green_reg[3] ;
  input \temp_Red_reg[3]_1 ;
  input \temp_Red_reg[2]_0 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire [3:0]S;
  wire clock_25Mhz_BUFG;
  wire draw_ball;
  wire draw_ball0;
  wire draw_ball_reg_0;
  wire draw_paddle_p1;
  wire draw_paddle_p10;
  wire draw_paddle_p11_carry_n_1;
  wire draw_paddle_p11_carry_n_2;
  wire draw_paddle_p11_carry_n_3;
  wire draw_paddle_p2;
  wire draw_paddle_p20;
  wire draw_paddle_p21_carry_n_1;
  wire draw_paddle_p21_carry_n_2;
  wire draw_paddle_p21_carry_n_3;
  wire [3:0]draw_paddle_p2_i_3;
  wire [3:0]draw_paddle_p2_i_3_0;
  wire [0:0]\paddle_y_reg[4] ;
  wire \temp_Blue_reg[3] ;
  wire \temp_Blue_reg[3]_0 ;
  wire \temp_Blue_reg[3]_1 ;
  wire \temp_Green_reg[3] ;
  wire \temp_Red[3]_i_4_n_0 ;
  wire \temp_Red_reg[2] ;
  wire \temp_Red_reg[2]_0 ;
  wire \temp_Red_reg[3] ;
  wire [4:0]\temp_Red_reg[3]_0 ;
  wire \temp_Red_reg[3]_1 ;
  wire [3:0]NLW_draw_paddle_p11_carry_O_UNCONNECTED;
  wire [3:0]NLW_draw_paddle_p21_carry_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    draw_ball_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_ball0),
        .Q(draw_ball),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 draw_paddle_p11_carry
       (.CI(1'b0),
        .CO({CO,draw_paddle_p11_carry_n_1,draw_paddle_p11_carry_n_2,draw_paddle_p11_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_draw_paddle_p11_carry_O_UNCONNECTED[3:0]),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    draw_paddle_p1_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_paddle_p10),
        .Q(draw_paddle_p1),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 draw_paddle_p21_carry
       (.CI(1'b0),
        .CO({\paddle_y_reg[4] ,draw_paddle_p21_carry_n_1,draw_paddle_p21_carry_n_2,draw_paddle_p21_carry_n_3}),
        .CYINIT(1'b1),
        .DI(draw_paddle_p2_i_3),
        .O(NLW_draw_paddle_p21_carry_O_UNCONNECTED[3:0]),
        .S(draw_paddle_p2_i_3_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_paddle_p2_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_paddle_p20),
        .Q(draw_paddle_p2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h222222202222222A)) 
    \temp_Blue[3]_i_1 
       (.I0(\temp_Red_reg[3] ),
        .I1(\temp_Red[3]_i_4_n_0 ),
        .I2(\temp_Red_reg[3]_0 [0]),
        .I3(\temp_Red_reg[3]_0 [4]),
        .I4(\temp_Red_reg[3]_0 [1]),
        .I5(\temp_Blue_reg[3]_1 ),
        .O(\FSM_onehot_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h5555000055545554)) 
    \temp_Blue[3]_i_2 
       (.I0(\temp_Red_reg[3] ),
        .I1(draw_ball),
        .I2(draw_paddle_p1),
        .I3(draw_paddle_p2),
        .I4(\temp_Blue_reg[3] ),
        .I5(\temp_Blue_reg[3]_0 ),
        .O(draw_ball_reg_0));
  LUT6 #(
    .INIT(64'h222222202222222A)) 
    \temp_Green[3]_i_1 
       (.I0(\temp_Red_reg[3] ),
        .I1(\temp_Red[3]_i_4_n_0 ),
        .I2(\temp_Red_reg[3]_0 [0]),
        .I3(\temp_Red_reg[3]_0 [4]),
        .I4(\temp_Red_reg[3]_0 [1]),
        .I5(\temp_Green_reg[3] ),
        .O(\FSM_onehot_state_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_Red[2]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(\temp_Red_reg[2] ),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'h222222202222222A)) 
    \temp_Red[3]_i_1 
       (.I0(\temp_Red_reg[3] ),
        .I1(\temp_Red[3]_i_4_n_0 ),
        .I2(\temp_Red_reg[3]_0 [0]),
        .I3(\temp_Red_reg[3]_0 [4]),
        .I4(\temp_Red_reg[3]_0 [1]),
        .I5(\temp_Red_reg[3]_1 ),
        .O(\FSM_onehot_state_reg[2]_3 ));
  LUT3 #(
    .INIT(8'h01)) 
    \temp_Red[3]_i_4 
       (.I0(draw_paddle_p2),
        .I1(draw_paddle_p1),
        .I2(draw_ball),
        .O(\temp_Red[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F5F5D5D5D00)) 
    \temp_Red[3]_i_7 
       (.I0(\temp_Red[3]_i_4_n_0 ),
        .I1(\temp_Red_reg[3]_0 [0]),
        .I2(\temp_Red_reg[2]_0 ),
        .I3(\temp_Red_reg[3]_0 [3]),
        .I4(\temp_Red_reg[3]_0 [2]),
        .I5(\temp_Red_reg[3]_0 [4]),
        .O(\FSM_onehot_state_reg[2]_0 ));
endmodule

module Draw_Mode
   (draw_s,
    draw_t_reg_0,
    fixed_column_count14_out,
    clock_25Mhz_BUFG,
    display_reg,
    draw_t_reg_1,
    draw_s_reg,
    draw_s_reg_0,
    draw_s_i_2,
    draw_s_reg_1,
    D,
    \fixed_column_count_reg[4] );
  output draw_s;
  output draw_t_reg_0;
  input fixed_column_count14_out;
  input clock_25Mhz_BUFG;
  input display_reg;
  input draw_t_reg_1;
  input draw_s_reg;
  input draw_s_reg_0;
  input draw_s_i_2;
  input draw_s_reg_1;
  input [3:0]D;
  input [3:0]\fixed_column_count_reg[4] ;

  wire [3:0]D;
  wire clock_25Mhz_BUFG;
  wire display_reg;
  wire draw_s;
  wire draw_s_i_2;
  wire draw_s_reg;
  wire draw_s_reg_0;
  wire draw_s_reg_1;
  wire draw_t_reg_0;
  wire draw_t_reg_1;
  wire fixed_column_count14_out;
  wire [3:0]\fixed_column_count_reg[4] ;

  Score_Display Score_Display_Limit
       (.D(D),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg_0(display_reg),
        .draw_s(draw_s),
        .draw_s_i_2_0(draw_s_i_2),
        .draw_s_reg_0(draw_s_reg),
        .draw_s_reg_1(draw_s_reg_0),
        .draw_s_reg_2(draw_s_reg_1),
        .fixed_column_count14_out(fixed_column_count14_out),
        .\fixed_column_count_reg[4]_0 (\fixed_column_count_reg[4] ));
  FDRE #(
    .INIT(1'b0)) 
    draw_t_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_t_reg_1),
        .Q(draw_t_reg_0),
        .R(1'b0));
endmodule

module Draw_Over
   (\fixed_column_count_reg[5] ,
    \fixed_row_count_reg[5] ,
    draw_s_reg,
    \FSM_onehot_state_reg[5] ,
    \FSM_onehot_state_reg[5]_0 ,
    fixed_column_count14_out_0,
    clock_25Mhz_BUFG,
    fixed_column_count14_out_1,
    display_reg,
    fixed_column_count1,
    draw_t_reg_0,
    Q,
    small_row_count,
    display_reg_0,
    display_reg_1,
    draw_s_reg_0,
    draw_s_reg_1,
    \temp_Blue_reg[3] ,
    \temp_Red_reg[3] ,
    \temp_Red_reg[3]_0 ,
    \fixed_row_count_reg[4] ,
    \fixed_column_count_reg[3] ,
    \fixed_row_count_reg[4]_0 ,
    \fixed_column_count_reg[5]_0 ,
    \fixed_column_count_reg[5]_1 ,
    \fixed_row_count_reg[4]_1 ,
    \fixed_column_count_reg[3]_0 ,
    \fixed_row_count_reg[4]_2 );
  output \fixed_column_count_reg[5] ;
  output \fixed_row_count_reg[5] ;
  output draw_s_reg;
  output \FSM_onehot_state_reg[5] ;
  output \FSM_onehot_state_reg[5]_0 ;
  input fixed_column_count14_out_0;
  input clock_25Mhz_BUFG;
  input fixed_column_count14_out_1;
  input display_reg;
  input fixed_column_count1;
  input draw_t_reg_0;
  input [3:0]Q;
  input [0:0]small_row_count;
  input display_reg_0;
  input display_reg_1;
  input [3:0]draw_s_reg_0;
  input [3:0]draw_s_reg_1;
  input \temp_Blue_reg[3] ;
  input \temp_Red_reg[3] ;
  input [4:0]\temp_Red_reg[3]_0 ;
  input [3:0]\fixed_row_count_reg[4] ;
  input [2:0]\fixed_column_count_reg[3] ;
  input [3:0]\fixed_row_count_reg[4]_0 ;
  input [4:0]\fixed_column_count_reg[5]_0 ;
  input [3:0]\fixed_column_count_reg[5]_1 ;
  input [4:0]\fixed_row_count_reg[4]_1 ;
  input [3:0]\fixed_column_count_reg[3]_0 ;
  input [4:0]\fixed_row_count_reg[4]_2 ;

  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire Face_Display_P1_n_0;
  wire Face_Display_P2_n_1;
  wire [3:0]Q;
  wire clock_25Mhz_BUFG;
  wire display_reg;
  wire display_reg_0;
  wire display_reg_1;
  wire draw_f;
  wire draw_sP1;
  wire draw_sP2;
  wire draw_s_reg;
  wire [3:0]draw_s_reg_0;
  wire [3:0]draw_s_reg_1;
  wire draw_t_reg_0;
  wire draw_t_reg_n_0;
  wire fixed_column_count1;
  wire fixed_column_count14_out_0;
  wire fixed_column_count14_out_1;
  wire [2:0]\fixed_column_count_reg[3] ;
  wire [3:0]\fixed_column_count_reg[3]_0 ;
  wire \fixed_column_count_reg[5] ;
  wire [4:0]\fixed_column_count_reg[5]_0 ;
  wire [3:0]\fixed_column_count_reg[5]_1 ;
  wire [3:0]\fixed_row_count_reg[4] ;
  wire [3:0]\fixed_row_count_reg[4]_0 ;
  wire [4:0]\fixed_row_count_reg[4]_1 ;
  wire [4:0]\fixed_row_count_reg[4]_2 ;
  wire \fixed_row_count_reg[5] ;
  wire [0:0]small_row_count;
  wire \temp_Blue_reg[3] ;
  wire \temp_Red_reg[3] ;
  wire [4:0]\temp_Red_reg[3]_0 ;

  Face_Display Face_Display_P1
       (.Q(Q[3:2]),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_f(draw_f),
        .draw_f_reg_0(\temp_Blue_reg[3] ),
        .draw_f_reg_1(\fixed_row_count_reg[5] ),
        .fixed_column_count1(fixed_column_count1),
        .\fixed_column_count_reg[3]_0 (\fixed_column_count_reg[3]_0 ),
        .\fixed_column_count_reg[4]_0 (Face_Display_P1_n_0),
        .\fixed_column_count_reg[5]_0 (\fixed_column_count_reg[5] ),
        .\fixed_row_count_reg[4]_0 (\fixed_row_count_reg[4]_2 ));
  Face_Display__parameterized0 Face_Display_P2
       (.D({\fixed_column_count_reg[5]_1 ,Q[1:0]}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg_0(display_reg),
        .draw_f_reg_0(Face_Display_P2_n_1),
        .draw_f_reg_1(\temp_Blue_reg[3] ),
        .\fixed_row_count_reg[4]_0 (\fixed_row_count_reg[4]_1 ),
        .\fixed_row_count_reg[5]_0 (\fixed_row_count_reg[5] ),
        .small_row_count(small_row_count));
  Score_Display__parameterized0 Score_Display_P1
       (.\FSM_onehot_state_reg[5] (\FSM_onehot_state_reg[5] ),
        .\FSM_onehot_state_reg[5]_0 (\FSM_onehot_state_reg[5]_0 ),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg_0(display_reg_0),
        .draw_f(draw_f),
        .draw_sP1(draw_sP1),
        .draw_sP2(draw_sP2),
        .draw_s_i_20_0(Face_Display_P1_n_0),
        .draw_s_i_8__1_0(\fixed_row_count_reg[5] ),
        .draw_s_i_8__1_1(\fixed_column_count_reg[5] ),
        .draw_s_reg_0(draw_s_reg_0),
        .fixed_column_count14_out_0(fixed_column_count14_out_0),
        .\fixed_column_count_reg[3]_0 (\fixed_column_count_reg[3] ),
        .\fixed_row_count_reg[4]_0 (\fixed_row_count_reg[4] ),
        .\temp_Red[3]_i_6_0 (draw_t_reg_n_0),
        .\temp_Red[3]_i_6_1 (Face_Display_P2_n_1),
        .\temp_Red[3]_i_6_2 (\temp_Blue_reg[3] ),
        .\temp_Red_reg[3] (\temp_Red_reg[3] ),
        .\temp_Red_reg[3]_0 (\temp_Red_reg[3]_0 ));
  Score_Display__parameterized1 Score_Display_P2
       (.clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .display_reg_0(display_reg_1),
        .draw_f(draw_f),
        .draw_sP1(draw_sP1),
        .draw_sP2(draw_sP2),
        .draw_s_i_4__1_0(\fixed_row_count_reg[5] ),
        .draw_s_reg_0(draw_s_reg),
        .draw_s_reg_1(draw_s_reg_1),
        .fixed_column_count14_out_1(fixed_column_count14_out_1),
        .\fixed_column_count_reg[5]_0 (\fixed_column_count_reg[5]_0 ),
        .\fixed_row_count_reg[4]_0 (\fixed_row_count_reg[4]_0 ),
        .\temp_Blue_reg[3] (draw_t_reg_n_0),
        .\temp_Blue_reg[3]_0 (Face_Display_P2_n_1),
        .\temp_Blue_reg[3]_1 (\temp_Blue_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    draw_t_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_t_reg_0),
        .Q(draw_t_reg_n_0),
        .R(1'b0));
endmodule

module Draw_Start
   (draw_change,
    \counter_reg[1]_0 ,
    draw_t_reg_0,
    draw_t_reg_1,
    draw_t_reg_2,
    CLK,
    draw_r_reg_0,
    clock_25Mhz_BUFG,
    draw_t_reg_3,
    draw_s_reg_0,
    draw_g_reg_0,
    draw_b_reg_0,
    \temp_Blue_reg[3] ,
    draw_s,
    \temp_Red_reg[3] );
  output draw_change;
  output [1:0]\counter_reg[1]_0 ;
  output draw_t_reg_0;
  output draw_t_reg_1;
  output draw_t_reg_2;
  input CLK;
  input draw_r_reg_0;
  input clock_25Mhz_BUFG;
  input draw_t_reg_3;
  input draw_s_reg_0;
  input draw_g_reg_0;
  input draw_b_reg_0;
  input \temp_Blue_reg[3] ;
  input draw_s;
  input \temp_Red_reg[3] ;

  wire CLK;
  wire clock_25Mhz_BUFG;
  wire [1:0]\counter_reg[1]_0 ;
  wire draw_b;
  wire draw_b_reg_0;
  wire draw_change;
  wire draw_change0;
  wire draw_g;
  wire draw_g_reg_0;
  wire draw_r;
  wire draw_r_reg_0;
  wire draw_s;
  wire draw_s_reg_0;
  wire draw_s_reg_n_0;
  wire draw_t_reg_0;
  wire draw_t_reg_1;
  wire draw_t_reg_2;
  wire draw_t_reg_3;
  wire draw_t_reg_n_0;
  wire [1:0]p_0_in;
  wire \temp_Blue_reg[3] ;
  wire \temp_Red_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[1]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[1]_0 [1]),
        .I1(\counter_reg[1]_0 [0]),
        .O(p_0_in[1]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\counter_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\counter_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    draw_b_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_b_reg_0),
        .Q(draw_b),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    draw_change_i_1
       (.I0(draw_change),
        .O(draw_change0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    draw_change_reg
       (.C(CLK),
        .CE(1'b1),
        .D(draw_change0),
        .Q(draw_change),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    draw_g_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_g_reg_0),
        .Q(draw_g),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    draw_r_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_r_reg_0),
        .Q(draw_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    draw_s_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_s_reg_0),
        .Q(draw_s_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    draw_t_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_t_reg_3),
        .Q(draw_t_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h101010101010101F)) 
    \temp_Blue[3]_i_3 
       (.I0(\temp_Blue_reg[3] ),
        .I1(draw_s),
        .I2(\temp_Red_reg[3] ),
        .I3(draw_b),
        .I4(draw_s_reg_n_0),
        .I5(draw_t_reg_n_0),
        .O(draw_t_reg_0));
  LUT6 #(
    .INIT(64'h101010101010101F)) 
    \temp_Green[3]_i_2 
       (.I0(\temp_Blue_reg[3] ),
        .I1(draw_s),
        .I2(\temp_Red_reg[3] ),
        .I3(draw_g),
        .I4(draw_s_reg_n_0),
        .I5(draw_t_reg_n_0),
        .O(draw_t_reg_1));
  LUT6 #(
    .INIT(64'h101010101010101F)) 
    \temp_Red[3]_i_5 
       (.I0(\temp_Blue_reg[3] ),
        .I1(draw_s),
        .I2(\temp_Red_reg[3] ),
        .I3(draw_r),
        .I4(draw_s_reg_n_0),
        .I5(draw_t_reg_n_0),
        .O(draw_t_reg_2));
endmodule

module Face_Display
   (\fixed_column_count_reg[4]_0 ,
    \fixed_column_count_reg[5]_0 ,
    draw_f,
    fixed_column_count1,
    clock_25Mhz_BUFG,
    Q,
    draw_f_reg_0,
    draw_f_reg_1,
    \fixed_column_count_reg[3]_0 ,
    \fixed_row_count_reg[4]_0 );
  output \fixed_column_count_reg[4]_0 ;
  output \fixed_column_count_reg[5]_0 ;
  output draw_f;
  input fixed_column_count1;
  input clock_25Mhz_BUFG;
  input [1:0]Q;
  input draw_f_reg_0;
  input draw_f_reg_1;
  input [3:0]\fixed_column_count_reg[3]_0 ;
  input [4:0]\fixed_row_count_reg[4]_0 ;

  wire [1:0]Q;
  wire clock_25Mhz_BUFG;
  wire display_reg_n_0;
  wire draw_f;
  wire draw_f_i_1__0_n_0;
  wire draw_f_i_2__0_n_0;
  wire draw_f_i_3__0_n_0;
  wire draw_f_reg_0;
  wire draw_f_reg_1;
  wire fixed_column_count1;
  wire [3:0]\fixed_column_count_reg[3]_0 ;
  wire \fixed_column_count_reg[4]_0 ;
  wire \fixed_column_count_reg[5]_0 ;
  wire \fixed_column_count_reg_n_0_[3] ;
  wire [4:0]fixed_row_count;
  wire [4:0]\fixed_row_count_reg[4]_0 ;
  wire [8:6]sel0__2;

  FDRE #(
    .INIT(1'b0)) 
    display_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(fixed_column_count1),
        .Q(display_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    draw_f_i_1__0
       (.I0(draw_f_i_2__0_n_0),
        .I1(draw_f_i_3__0_n_0),
        .I2(\fixed_column_count_reg[5]_0 ),
        .I3(\fixed_column_count_reg[4]_0 ),
        .I4(\fixed_column_count_reg_n_0_[3] ),
        .I5(fixed_row_count[3]),
        .O(draw_f_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4440404040434443)) 
    draw_f_i_2__0
       (.I0(sel0__2[8]),
        .I1(fixed_row_count[1]),
        .I2(sel0__2[6]),
        .I3(sel0__2[7]),
        .I4(draw_f_reg_0),
        .I5(fixed_row_count[0]),
        .O(draw_f_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    draw_f_i_3__0
       (.I0(fixed_row_count[4]),
        .I1(draw_f_reg_1),
        .I2(display_reg_n_0),
        .I3(fixed_row_count[2]),
        .O(draw_f_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_f_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_f_i_1__0_n_0),
        .Q(draw_f),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [0]),
        .Q(sel0__2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [1]),
        .Q(sel0__2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [2]),
        .Q(sel0__2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [3]),
        .Q(\fixed_column_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\fixed_column_count_reg[4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\fixed_column_count_reg[5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [0]),
        .Q(fixed_row_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [1]),
        .Q(fixed_row_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [2]),
        .Q(fixed_row_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [3]),
        .Q(fixed_row_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [4]),
        .Q(fixed_row_count[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Face_Display" *) 
module Face_Display__parameterized0
   (\fixed_row_count_reg[5]_0 ,
    draw_f_reg_0,
    display_reg_0,
    clock_25Mhz_BUFG,
    small_row_count,
    draw_f_reg_1,
    D,
    \fixed_row_count_reg[4]_0 );
  output \fixed_row_count_reg[5]_0 ;
  output draw_f_reg_0;
  input display_reg_0;
  input clock_25Mhz_BUFG;
  input [0:0]small_row_count;
  input draw_f_reg_1;
  input [5:0]D;
  input [4:0]\fixed_row_count_reg[4]_0 ;

  wire [5:0]D;
  wire clock_25Mhz_BUFG;
  wire display;
  wire display_reg_0;
  wire draw_f_i_1_n_0;
  wire draw_f_i_2_n_0;
  wire draw_f_i_3_n_0;
  wire draw_f_reg_0;
  wire draw_f_reg_1;
  wire \fixed_column_count_reg_n_0_[3] ;
  wire \fixed_column_count_reg_n_0_[4] ;
  wire \fixed_column_count_reg_n_0_[5] ;
  wire [4:0]\fixed_row_count_reg[4]_0 ;
  wire \fixed_row_count_reg[5]_0 ;
  wire \fixed_row_count_reg_n_0_[0] ;
  wire \fixed_row_count_reg_n_0_[1] ;
  wire \fixed_row_count_reg_n_0_[2] ;
  wire \fixed_row_count_reg_n_0_[3] ;
  wire \fixed_row_count_reg_n_0_[4] ;
  wire [8:6]sel0__1;
  wire [0:0]small_row_count;

  FDRE #(
    .INIT(1'b0)) 
    display_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(display_reg_0),
        .Q(display),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    draw_f_i_1
       (.I0(draw_f_i_2_n_0),
        .I1(draw_f_i_3_n_0),
        .I2(display),
        .I3(\fixed_column_count_reg_n_0_[5] ),
        .I4(\fixed_row_count_reg[5]_0 ),
        .I5(\fixed_column_count_reg_n_0_[3] ),
        .O(draw_f_i_1_n_0));
  LUT6 #(
    .INIT(64'h4040444044434043)) 
    draw_f_i_2
       (.I0(sel0__1[8]),
        .I1(\fixed_row_count_reg_n_0_[1] ),
        .I2(sel0__1[6]),
        .I3(sel0__1[7]),
        .I4(draw_f_reg_1),
        .I5(\fixed_row_count_reg_n_0_[0] ),
        .O(draw_f_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    draw_f_i_3
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(\fixed_row_count_reg_n_0_[3] ),
        .I2(\fixed_column_count_reg_n_0_[4] ),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .O(draw_f_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_f_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_f_i_1_n_0),
        .Q(draw_f_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(sel0__1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(sel0__1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(sel0__1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\fixed_column_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\fixed_column_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\fixed_column_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [0]),
        .Q(\fixed_row_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [1]),
        .Q(\fixed_row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [2]),
        .Q(\fixed_row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [3]),
        .Q(\fixed_row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [4]),
        .Q(\fixed_row_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(small_row_count),
        .Q(\fixed_row_count_reg[5]_0 ),
        .R(1'b0));
endmodule

(* ACTIVE_COLS = "640" *) (* ACTIVE_ROWS = "480" *) (* BLANK = "12" *) 
(* DEBOUNCE_DIVISOR = "50000" *) (* TOTAL_COLS = "800" *) (* TOTAL_ROWS = "525" *) 
(* NotValidForBitStream *)
module Pong
   (clock,
    p1_up,
    p1_down,
    p2_up,
    p2_down,
    start,
    change_mode,
    out_Hsync,
    out_Vsync,
    out_Red,
    out_Green,
    out_Blue,
    ssd,
    anode);
  input clock;
  input p1_up;
  input p1_down;
  input p2_up;
  input p2_down;
  input start;
  input change_mode;
  output out_Hsync;
  output out_Vsync;
  output [3:0]out_Red;
  output [3:0]out_Green;
  output [3:0]out_Blue;
  output [7:0]ssd;
  output [7:0]anode;

  wire [7:0]anode;
  wire [7:0]anode_OBUF;
  wire change_mode;
  wire change_mode_IBUF;
  wire change_mode_debounced;
  wire clock;
  wire clock_25Mhz;
  wire clock_25Mhz_BUFG;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire debounce_clock;
  wire debounce_clock_BUFG;
  wire debounce_start_n_1;
  wire [3:0]out_Blue;
  wire [0:0]out_Blue_OBUF;
  wire [3:0]out_Green;
  wire [0:0]out_Green_OBUF;
  wire out_Hsync;
  wire out_Hsync_OBUF;
  wire [3:0]out_Red;
  wire [3:0]out_Red_OBUF;
  wire out_Vsync;
  wire out_Vsync_OBUF;
  wire p1_down;
  wire p1_down_IBUF;
  wire p1_down_debounced;
  wire \p1_paddle/paddle_enable ;
  wire [3:1]p1_score;
  wire p1_up;
  wire p1_up_IBUF;
  wire p1_up_debounced;
  wire p2_down;
  wire p2_down_IBUF;
  wire p2_down_debounced;
  wire \p2_paddle/paddle_enable ;
  wire [3:1]p2_score;
  wire p2_up;
  wire p2_up_IBUF;
  wire p2_up_debounced;
  wire pong_fsm_wrap_n_14;
  wire pong_fsm_wrap_n_15;
  wire pong_fsm_wrap_n_16;
  wire pong_fsm_wrap_n_17;
  wire pong_fsm_wrap_n_18;
  wire pong_fsm_wrap_n_19;
  wire [2:0]refresh_count;
  wire [7:0]ssd;
  wire [7:1]ssd_OBUF;
  wire ssd_wrap_n_0;
  wire ssd_wrap_n_13;
  wire ssd_wrap_n_4;
  wire start;
  wire start_IBUF;
  wire start_debounced;
  wire start_pressed;
  wire temp1_Hsync;
  wire temp1_Vsync;

  OBUF \anode_OBUF[0]_inst 
       (.I(anode_OBUF[0]),
        .O(anode[0]));
  OBUF \anode_OBUF[1]_inst 
       (.I(anode_OBUF[1]),
        .O(anode[1]));
  OBUF \anode_OBUF[2]_inst 
       (.I(anode_OBUF[2]),
        .O(anode[2]));
  OBUF \anode_OBUF[3]_inst 
       (.I(anode_OBUF[3]),
        .O(anode[3]));
  OBUF \anode_OBUF[4]_inst 
       (.I(anode_OBUF[4]),
        .O(anode[4]));
  OBUF \anode_OBUF[5]_inst 
       (.I(anode_OBUF[5]),
        .O(anode[5]));
  OBUF \anode_OBUF[6]_inst 
       (.I(anode_OBUF[6]),
        .O(anode[6]));
  OBUF \anode_OBUF[7]_inst 
       (.I(anode_OBUF[7]),
        .O(anode[7]));
  IBUF change_mode_IBUF_inst
       (.I(change_mode),
        .O(change_mode_IBUF));
  BUFG clock_25Mhz_BUFG_inst
       (.I(clock_25Mhz),
        .O(clock_25Mhz_BUFG));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  clock_divider__parameterized0 clock_debounce
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .debounce_clock(debounce_clock));
  clock_divider clock_div
       (.clock_25Mhz(clock_25Mhz),
        .clock_IBUF_BUFG(clock_IBUF_BUFG));
  button_debouncer debounce_change_mode
       (.CLK(debounce_clock_BUFG),
        .change_mode_IBUF(change_mode_IBUF),
        .change_mode_debounced(change_mode_debounced));
  BUFG debounce_clock_BUFG_inst
       (.I(debounce_clock),
        .O(debounce_clock_BUFG));
  button_debouncer_0 debounce_p1_down
       (.CLK(debounce_clock_BUFG),
        .p1_down_IBUF(p1_down_IBUF),
        .p1_down_debounced(p1_down_debounced));
  button_debouncer_1 debounce_p1_up
       (.CLK(debounce_clock_BUFG),
        .p1_down_debounced(p1_down_debounced),
        .p1_up_IBUF(p1_up_IBUF),
        .p1_up_debounced(p1_up_debounced),
        .paddle_enable(\p1_paddle/paddle_enable ));
  button_debouncer_2 debounce_p2_down
       (.CLK(debounce_clock_BUFG),
        .p2_down_IBUF(p2_down_IBUF),
        .p2_down_debounced(p2_down_debounced));
  button_debouncer_3 debounce_p2_up
       (.CLK(debounce_clock_BUFG),
        .p2_down_debounced(p2_down_debounced),
        .p2_up_IBUF(p2_up_IBUF),
        .p2_up_debounced(p2_up_debounced),
        .paddle_enable(\p2_paddle/paddle_enable ));
  button_debouncer_4 debounce_start
       (.CLK(debounce_clock_BUFG),
        .debounced_button_reg_0(debounce_start_n_1),
        .start_IBUF(start_IBUF),
        .start_debounced(start_debounced),
        .start_pressed(start_pressed));
  OBUF \out_Blue_OBUF[0]_inst 
       (.I(out_Blue_OBUF),
        .O(out_Blue[0]));
  OBUF \out_Blue_OBUF[1]_inst 
       (.I(out_Blue_OBUF),
        .O(out_Blue[1]));
  OBUF \out_Blue_OBUF[2]_inst 
       (.I(out_Blue_OBUF),
        .O(out_Blue[2]));
  OBUF \out_Blue_OBUF[3]_inst 
       (.I(out_Blue_OBUF),
        .O(out_Blue[3]));
  OBUF \out_Green_OBUF[0]_inst 
       (.I(out_Green_OBUF),
        .O(out_Green[0]));
  OBUF \out_Green_OBUF[1]_inst 
       (.I(out_Green_OBUF),
        .O(out_Green[1]));
  OBUF \out_Green_OBUF[2]_inst 
       (.I(out_Green_OBUF),
        .O(out_Green[2]));
  OBUF \out_Green_OBUF[3]_inst 
       (.I(out_Green_OBUF),
        .O(out_Green[3]));
  OBUF out_Hsync_OBUF_inst
       (.I(out_Hsync_OBUF),
        .O(out_Hsync));
  OBUF \out_Red_OBUF[0]_inst 
       (.I(out_Red_OBUF[0]),
        .O(out_Red[0]));
  OBUF \out_Red_OBUF[1]_inst 
       (.I(out_Red_OBUF[0]),
        .O(out_Red[1]));
  OBUF \out_Red_OBUF[2]_inst 
       (.I(out_Red_OBUF[0]),
        .O(out_Red[2]));
  OBUF \out_Red_OBUF[3]_inst 
       (.I(out_Red_OBUF[3]),
        .O(out_Red[3]));
  OBUF out_Vsync_OBUF_inst
       (.I(out_Vsync_OBUF),
        .O(out_Vsync));
  IBUF p1_down_IBUF_inst
       (.I(p1_down),
        .O(p1_down_IBUF));
  IBUF p1_up_IBUF_inst
       (.I(p1_up),
        .O(p1_up_IBUF));
  IBUF p2_down_IBUF_inst
       (.I(p2_down),
        .O(p2_down_IBUF));
  IBUF p2_up_IBUF_inst
       (.I(p2_up),
        .O(p2_up_IBUF));
  Pong_FSM pong_fsm_wrap
       (.\FSM_onehot_state_reg[2]_0 (pong_fsm_wrap_n_15),
        .\FSM_onehot_state_reg[2]_1 (pong_fsm_wrap_n_17),
        .\FSM_onehot_state_reg[2]_2 (pong_fsm_wrap_n_18),
        .\FSM_onehot_state_reg[2]_3 (pong_fsm_wrap_n_19),
        .\FSM_onehot_state_reg[5]_0 (pong_fsm_wrap_n_16),
        .\FSM_onehot_state_reg[6]_0 (debounce_start_n_1),
        .Q(refresh_count),
        .change_mode_debounced(change_mode_debounced),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_ball_reg(pong_fsm_wrap_n_14),
        .p1_down_debounced(p1_down_debounced),
        .\p1_score_reg[3]_0 (p1_score),
        .p1_up_debounced(p1_up_debounced),
        .p2_down_debounced(p2_down_debounced),
        .\p2_score_reg[3]_0 (p2_score),
        .p2_up_debounced(p2_up_debounced),
        .paddle_enable(\p1_paddle/paddle_enable ),
        .paddle_enable_0(\p2_paddle/paddle_enable ),
        .\ssd[7] (ssd_wrap_n_0),
        .ssd_OBUF(ssd_OBUF),
        .\ssd_OBUF[5]_inst_i_1_0 (ssd_wrap_n_13),
        .\ssd_OBUF[5]_inst_i_1_1 (ssd_wrap_n_4),
        .start_debounced(start_debounced),
        .start_pressed(start_pressed));
  OBUF \ssd_OBUF[0]_inst 
       (.I(1'b1),
        .O(ssd[0]));
  OBUF \ssd_OBUF[1]_inst 
       (.I(ssd_OBUF[1]),
        .O(ssd[1]));
  OBUF \ssd_OBUF[2]_inst 
       (.I(ssd_OBUF[2]),
        .O(ssd[2]));
  OBUF \ssd_OBUF[3]_inst 
       (.I(ssd_OBUF[3]),
        .O(ssd[3]));
  OBUF \ssd_OBUF[4]_inst 
       (.I(ssd_OBUF[4]),
        .O(ssd[4]));
  OBUF \ssd_OBUF[5]_inst 
       (.I(ssd_OBUF[5]),
        .O(ssd[5]));
  OBUF \ssd_OBUF[6]_inst 
       (.I(ssd_OBUF[6]),
        .O(ssd[6]));
  OBUF \ssd_OBUF[7]_inst 
       (.I(ssd_OBUF[7]),
        .O(ssd[7]));
  score_to_ssd ssd_wrap
       (.CLK(debounce_clock_BUFG),
        .Q(refresh_count),
        .anode_OBUF(anode_OBUF),
        .\refresh_count_reg[0]_0 (ssd_wrap_n_0),
        .\refresh_count_reg[0]_1 (ssd_wrap_n_13),
        .\refresh_count_reg[1]_0 (ssd_wrap_n_4),
        .\ssd_OBUF[1]_inst_i_1 (p2_score),
        .\ssd_OBUF[7]_inst_i_4 (p1_score));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  VGA_Sync_Porch sync_porch
       (.Q({out_Red_OBUF[3],out_Red_OBUF[0]}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .out_Blue_OBUF(out_Blue_OBUF),
        .out_Green_OBUF(out_Green_OBUF),
        .out_Hsync_OBUF(out_Hsync_OBUF),
        .out_Vsync_OBUF(out_Vsync_OBUF),
        .temp1_Hsync(temp1_Hsync),
        .temp1_Vsync(temp1_Vsync),
        .\temp_Blue_reg[3]_0 (pong_fsm_wrap_n_17),
        .\temp_Blue_reg[3]_1 (pong_fsm_wrap_n_14),
        .\temp_Green_reg[3]_0 (pong_fsm_wrap_n_18),
        .\temp_Red_reg[2]_0 (pong_fsm_wrap_n_15),
        .\temp_Red_reg[3]_0 (pong_fsm_wrap_n_19),
        .\temp_Red_reg[3]_1 (pong_fsm_wrap_n_16));
  VGA_Sync_Pulse_Generator sync_pulse_gen
       (.CLK(clock_25Mhz_BUFG),
        .temp1_Hsync(temp1_Hsync),
        .temp1_Vsync(temp1_Vsync));
endmodule

module Pong_Ball_Control
   (\ball_x_reg[5]_0 ,
    \ball_x_reg[4]_0 ,
    \ball_x_reg[5]_1 ,
    \ball_y_reg[5]_0 ,
    \ball_x_reg[0]_0 ,
    DI,
    S,
    \ball_y_reg[3]_0 ,
    \ball_y_reg[5]_1 ,
    \ball_y_reg[2]_0 ,
    \ball_y_reg[2]_1 ,
    clock_25Mhz_BUFG,
    Q,
    \previous_ball_y_reg[4]_0 ,
    draw_ball_reg,
    \p_1_out_inferred__0/i___0_carry__0 ,
    \p_1_out_inferred__1/i___0_carry__0 );
  output [2:0]\ball_x_reg[5]_0 ;
  output \ball_x_reg[4]_0 ;
  output \ball_x_reg[5]_1 ;
  output [5:0]\ball_y_reg[5]_0 ;
  output \ball_x_reg[0]_0 ;
  output [2:0]DI;
  output [2:0]S;
  output [2:0]\ball_y_reg[3]_0 ;
  output [2:0]\ball_y_reg[5]_1 ;
  output [1:0]\ball_y_reg[2]_0 ;
  output [1:0]\ball_y_reg[2]_1 ;
  input clock_25Mhz_BUFG;
  input [0:0]Q;
  input \previous_ball_y_reg[4]_0 ;
  input [2:0]draw_ball_reg;
  input [5:0]\p_1_out_inferred__0/i___0_carry__0 ;
  input [5:0]\p_1_out_inferred__1/i___0_carry__0 ;

  wire [2:0]DI;
  wire [0:0]Q;
  wire [2:0]S;
  wire ball_count;
  wire \ball_count[0]_i_3_n_0 ;
  wire [31:2]ball_count_reg;
  wire \ball_count_reg[0]_i_2_n_0 ;
  wire \ball_count_reg[0]_i_2_n_1 ;
  wire \ball_count_reg[0]_i_2_n_2 ;
  wire \ball_count_reg[0]_i_2_n_3 ;
  wire \ball_count_reg[0]_i_2_n_4 ;
  wire \ball_count_reg[0]_i_2_n_5 ;
  wire \ball_count_reg[0]_i_2_n_6 ;
  wire \ball_count_reg[0]_i_2_n_7 ;
  wire \ball_count_reg[12]_i_1_n_0 ;
  wire \ball_count_reg[12]_i_1_n_1 ;
  wire \ball_count_reg[12]_i_1_n_2 ;
  wire \ball_count_reg[12]_i_1_n_3 ;
  wire \ball_count_reg[12]_i_1_n_4 ;
  wire \ball_count_reg[12]_i_1_n_5 ;
  wire \ball_count_reg[12]_i_1_n_6 ;
  wire \ball_count_reg[12]_i_1_n_7 ;
  wire \ball_count_reg[16]_i_1_n_0 ;
  wire \ball_count_reg[16]_i_1_n_1 ;
  wire \ball_count_reg[16]_i_1_n_2 ;
  wire \ball_count_reg[16]_i_1_n_3 ;
  wire \ball_count_reg[16]_i_1_n_4 ;
  wire \ball_count_reg[16]_i_1_n_5 ;
  wire \ball_count_reg[16]_i_1_n_6 ;
  wire \ball_count_reg[16]_i_1_n_7 ;
  wire \ball_count_reg[20]_i_1_n_0 ;
  wire \ball_count_reg[20]_i_1_n_1 ;
  wire \ball_count_reg[20]_i_1_n_2 ;
  wire \ball_count_reg[20]_i_1_n_3 ;
  wire \ball_count_reg[20]_i_1_n_4 ;
  wire \ball_count_reg[20]_i_1_n_5 ;
  wire \ball_count_reg[20]_i_1_n_6 ;
  wire \ball_count_reg[20]_i_1_n_7 ;
  wire \ball_count_reg[24]_i_1_n_0 ;
  wire \ball_count_reg[24]_i_1_n_1 ;
  wire \ball_count_reg[24]_i_1_n_2 ;
  wire \ball_count_reg[24]_i_1_n_3 ;
  wire \ball_count_reg[24]_i_1_n_4 ;
  wire \ball_count_reg[24]_i_1_n_5 ;
  wire \ball_count_reg[24]_i_1_n_6 ;
  wire \ball_count_reg[24]_i_1_n_7 ;
  wire \ball_count_reg[28]_i_1_n_1 ;
  wire \ball_count_reg[28]_i_1_n_2 ;
  wire \ball_count_reg[28]_i_1_n_3 ;
  wire \ball_count_reg[28]_i_1_n_4 ;
  wire \ball_count_reg[28]_i_1_n_5 ;
  wire \ball_count_reg[28]_i_1_n_6 ;
  wire \ball_count_reg[28]_i_1_n_7 ;
  wire \ball_count_reg[4]_i_1_n_0 ;
  wire \ball_count_reg[4]_i_1_n_1 ;
  wire \ball_count_reg[4]_i_1_n_2 ;
  wire \ball_count_reg[4]_i_1_n_3 ;
  wire \ball_count_reg[4]_i_1_n_4 ;
  wire \ball_count_reg[4]_i_1_n_5 ;
  wire \ball_count_reg[4]_i_1_n_6 ;
  wire \ball_count_reg[4]_i_1_n_7 ;
  wire \ball_count_reg[8]_i_1_n_0 ;
  wire \ball_count_reg[8]_i_1_n_1 ;
  wire \ball_count_reg[8]_i_1_n_2 ;
  wire \ball_count_reg[8]_i_1_n_3 ;
  wire \ball_count_reg[8]_i_1_n_4 ;
  wire \ball_count_reg[8]_i_1_n_5 ;
  wire \ball_count_reg[8]_i_1_n_6 ;
  wire \ball_count_reg[8]_i_1_n_7 ;
  wire \ball_count_reg_n_0_[0] ;
  wire \ball_count_reg_n_0_[1] ;
  wire ball_speed1;
  wire ball_speed1_carry__0_i_1_n_0;
  wire ball_speed1_carry__0_i_2_n_0;
  wire ball_speed1_carry__0_i_3_n_0;
  wire ball_speed1_carry__0_i_4_n_0;
  wire ball_speed1_carry__0_i_5_n_0;
  wire ball_speed1_carry__0_i_6_n_0;
  wire ball_speed1_carry__0_i_7_n_0;
  wire ball_speed1_carry__0_i_8_n_0;
  wire ball_speed1_carry__0_n_0;
  wire ball_speed1_carry__0_n_1;
  wire ball_speed1_carry__0_n_2;
  wire ball_speed1_carry__0_n_3;
  wire ball_speed1_carry__1_i_1_n_0;
  wire ball_speed1_carry__1_i_2_n_0;
  wire ball_speed1_carry__1_i_3_n_0;
  wire ball_speed1_carry__1_i_4_n_0;
  wire ball_speed1_carry__1_i_5_n_0;
  wire ball_speed1_carry__1_i_6_n_0;
  wire ball_speed1_carry__1_i_7_n_0;
  wire ball_speed1_carry__1_i_8_n_0;
  wire ball_speed1_carry__1_n_0;
  wire ball_speed1_carry__1_n_1;
  wire ball_speed1_carry__1_n_2;
  wire ball_speed1_carry__1_n_3;
  wire ball_speed1_carry__2_i_1_n_0;
  wire ball_speed1_carry__2_i_2_n_0;
  wire ball_speed1_carry__2_i_3_n_0;
  wire ball_speed1_carry__2_i_4_n_0;
  wire ball_speed1_carry__2_i_5_n_0;
  wire ball_speed1_carry__2_i_6_n_0;
  wire ball_speed1_carry__2_n_2;
  wire ball_speed1_carry__2_n_3;
  wire ball_speed1_carry_i_1_n_0;
  wire ball_speed1_carry_i_2_n_0;
  wire ball_speed1_carry_i_3_n_0;
  wire ball_speed1_carry_i_4_n_0;
  wire ball_speed1_carry_i_5_n_0;
  wire ball_speed1_carry_i_6_n_0;
  wire ball_speed1_carry_i_7_n_0;
  wire ball_speed1_carry_i_8_n_0;
  wire ball_speed1_carry_n_0;
  wire ball_speed1_carry_n_1;
  wire ball_speed1_carry_n_2;
  wire ball_speed1_carry_n_3;
  wire \ball_speed[11]_i_2_n_0 ;
  wire \ball_speed[11]_i_3_n_0 ;
  wire \ball_speed[11]_i_4_n_0 ;
  wire \ball_speed[15]_i_2_n_0 ;
  wire \ball_speed[15]_i_3_n_0 ;
  wire \ball_speed[15]_i_4_n_0 ;
  wire \ball_speed[15]_i_5_n_0 ;
  wire \ball_speed[19]_i_2_n_0 ;
  wire \ball_speed[19]_i_3_n_0 ;
  wire \ball_speed[19]_i_4_n_0 ;
  wire \ball_speed[19]_i_5_n_0 ;
  wire \ball_speed[23]_i_2_n_0 ;
  wire \ball_speed[23]_i_3_n_0 ;
  wire \ball_speed[23]_i_4_n_0 ;
  wire \ball_speed[23]_i_5_n_0 ;
  wire \ball_speed[27]_i_2_n_0 ;
  wire \ball_speed[27]_i_3_n_0 ;
  wire \ball_speed[27]_i_4_n_0 ;
  wire \ball_speed[27]_i_5_n_0 ;
  wire \ball_speed[31]_i_2_n_0 ;
  wire \ball_speed[3]_i_10_n_0 ;
  wire \ball_speed[3]_i_11_n_0 ;
  wire \ball_speed[3]_i_12_n_0 ;
  wire \ball_speed[3]_i_13_n_0 ;
  wire \ball_speed[3]_i_1_n_0 ;
  wire \ball_speed[3]_i_3_n_0 ;
  wire \ball_speed[3]_i_4_n_0 ;
  wire \ball_speed[3]_i_5_n_0 ;
  wire \ball_speed[3]_i_6_n_0 ;
  wire \ball_speed[3]_i_7_n_0 ;
  wire \ball_speed[3]_i_8_n_0 ;
  wire \ball_speed[3]_i_9_n_0 ;
  wire \ball_speed[7]_i_2_n_0 ;
  wire [31:3]ball_speed_reg;
  wire \ball_speed_reg[11]_i_1_n_0 ;
  wire \ball_speed_reg[11]_i_1_n_1 ;
  wire \ball_speed_reg[11]_i_1_n_2 ;
  wire \ball_speed_reg[11]_i_1_n_3 ;
  wire \ball_speed_reg[11]_i_1_n_4 ;
  wire \ball_speed_reg[11]_i_1_n_5 ;
  wire \ball_speed_reg[11]_i_1_n_6 ;
  wire \ball_speed_reg[11]_i_1_n_7 ;
  wire \ball_speed_reg[15]_i_1_n_0 ;
  wire \ball_speed_reg[15]_i_1_n_1 ;
  wire \ball_speed_reg[15]_i_1_n_2 ;
  wire \ball_speed_reg[15]_i_1_n_3 ;
  wire \ball_speed_reg[15]_i_1_n_4 ;
  wire \ball_speed_reg[15]_i_1_n_5 ;
  wire \ball_speed_reg[15]_i_1_n_6 ;
  wire \ball_speed_reg[15]_i_1_n_7 ;
  wire \ball_speed_reg[19]_i_1_n_0 ;
  wire \ball_speed_reg[19]_i_1_n_1 ;
  wire \ball_speed_reg[19]_i_1_n_2 ;
  wire \ball_speed_reg[19]_i_1_n_3 ;
  wire \ball_speed_reg[19]_i_1_n_4 ;
  wire \ball_speed_reg[19]_i_1_n_5 ;
  wire \ball_speed_reg[19]_i_1_n_6 ;
  wire \ball_speed_reg[19]_i_1_n_7 ;
  wire \ball_speed_reg[23]_i_1_n_0 ;
  wire \ball_speed_reg[23]_i_1_n_1 ;
  wire \ball_speed_reg[23]_i_1_n_2 ;
  wire \ball_speed_reg[23]_i_1_n_3 ;
  wire \ball_speed_reg[23]_i_1_n_4 ;
  wire \ball_speed_reg[23]_i_1_n_5 ;
  wire \ball_speed_reg[23]_i_1_n_6 ;
  wire \ball_speed_reg[23]_i_1_n_7 ;
  wire \ball_speed_reg[27]_i_1_n_0 ;
  wire \ball_speed_reg[27]_i_1_n_1 ;
  wire \ball_speed_reg[27]_i_1_n_2 ;
  wire \ball_speed_reg[27]_i_1_n_3 ;
  wire \ball_speed_reg[27]_i_1_n_4 ;
  wire \ball_speed_reg[27]_i_1_n_5 ;
  wire \ball_speed_reg[27]_i_1_n_6 ;
  wire \ball_speed_reg[27]_i_1_n_7 ;
  wire \ball_speed_reg[31]_i_1_n_7 ;
  wire \ball_speed_reg[3]_i_2_n_0 ;
  wire \ball_speed_reg[3]_i_2_n_1 ;
  wire \ball_speed_reg[3]_i_2_n_2 ;
  wire \ball_speed_reg[3]_i_2_n_3 ;
  wire \ball_speed_reg[3]_i_2_n_4 ;
  wire \ball_speed_reg[3]_i_2_n_5 ;
  wire \ball_speed_reg[3]_i_2_n_6 ;
  wire \ball_speed_reg[3]_i_2_n_7 ;
  wire \ball_speed_reg[7]_i_1_n_0 ;
  wire \ball_speed_reg[7]_i_1_n_1 ;
  wire \ball_speed_reg[7]_i_1_n_2 ;
  wire \ball_speed_reg[7]_i_1_n_3 ;
  wire \ball_speed_reg[7]_i_1_n_4 ;
  wire \ball_speed_reg[7]_i_1_n_5 ;
  wire \ball_speed_reg[7]_i_1_n_6 ;
  wire \ball_speed_reg[7]_i_1_n_7 ;
  wire [2:0]ball_x;
  wire \ball_x[0]_i_1_n_0 ;
  wire \ball_x[1]_i_1_n_0 ;
  wire \ball_x[2]_i_10_n_0 ;
  wire \ball_x[2]_i_11_n_0 ;
  wire \ball_x[2]_i_12_n_0 ;
  wire \ball_x[2]_i_1_n_0 ;
  wire \ball_x[2]_i_2_n_0 ;
  wire \ball_x[2]_i_3_n_0 ;
  wire \ball_x[2]_i_4_n_0 ;
  wire \ball_x[2]_i_5_n_0 ;
  wire \ball_x[2]_i_6_n_0 ;
  wire \ball_x[2]_i_7_n_0 ;
  wire \ball_x[2]_i_8_n_0 ;
  wire \ball_x[2]_i_9_n_0 ;
  wire \ball_x[3]_i_1_n_0 ;
  wire \ball_x[4]_i_1_n_0 ;
  wire \ball_x[5]_i_1_n_0 ;
  wire \ball_x[5]_i_2_n_0 ;
  wire \ball_x_reg[0]_0 ;
  wire \ball_x_reg[4]_0 ;
  wire [2:0]\ball_x_reg[5]_0 ;
  wire \ball_x_reg[5]_1 ;
  wire \ball_y[1]_i_10_n_0 ;
  wire \ball_y[1]_i_11_n_0 ;
  wire \ball_y[1]_i_12_n_0 ;
  wire \ball_y[1]_i_13_n_0 ;
  wire \ball_y[1]_i_1_n_0 ;
  wire \ball_y[1]_i_2_n_0 ;
  wire \ball_y[1]_i_3_n_0 ;
  wire \ball_y[1]_i_4_n_0 ;
  wire \ball_y[1]_i_5_n_0 ;
  wire \ball_y[1]_i_6_n_0 ;
  wire \ball_y[1]_i_7_n_0 ;
  wire \ball_y[1]_i_8_n_0 ;
  wire \ball_y[1]_i_9_n_0 ;
  wire \ball_y[2]_i_1_n_0 ;
  wire \ball_y[3]_i_1_n_0 ;
  wire \ball_y[4]_i_1_n_0 ;
  wire \ball_y[5]_i_1_n_0 ;
  wire \ball_y[5]_i_2_n_0 ;
  wire \ball_y[5]_i_3_n_0 ;
  wire [1:0]\ball_y_reg[2]_0 ;
  wire [1:0]\ball_y_reg[2]_1 ;
  wire [2:0]\ball_y_reg[3]_0 ;
  wire [5:0]\ball_y_reg[5]_0 ;
  wire [2:0]\ball_y_reg[5]_1 ;
  wire clear;
  wire clock_25Mhz_BUFG;
  wire [2:0]draw_ball_reg;
  wire [0:0]p_0_in;
  wire [5:0]\p_1_out_inferred__0/i___0_carry__0 ;
  wire [5:0]\p_1_out_inferred__1/i___0_carry__0 ;
  wire [5:0]previous_ball_x;
  wire \previous_ball_x[1]_i_1_n_0 ;
  wire \previous_ball_x[2]_i_1_n_0 ;
  wire \previous_ball_x[2]_i_2_n_0 ;
  wire \previous_ball_x[2]_i_3_n_0 ;
  wire previous_ball_y;
  wire \previous_ball_y[1]_i_1_n_0 ;
  wire \previous_ball_y[2]_i_1_n_0 ;
  wire \previous_ball_y[3]_i_1_n_0 ;
  wire \previous_ball_y[4]_i_1_n_0 ;
  wire \previous_ball_y_reg[4]_0 ;
  wire \previous_ball_y_reg_n_0_[0] ;
  wire \previous_ball_y_reg_n_0_[1] ;
  wire \previous_ball_y_reg_n_0_[2] ;
  wire \previous_ball_y_reg_n_0_[3] ;
  wire \previous_ball_y_reg_n_0_[4] ;
  wire \previous_ball_y_reg_n_0_[5] ;
  wire [3:3]\NLW_ball_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_ball_speed1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ball_speed1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ball_speed1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_ball_speed1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ball_speed1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_ball_speed_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_ball_speed_reg[31]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\ball_x_reg[5]_0 [1]),
        .I1(\ball_x_reg[5]_0 [2]),
        .I2(ball_x[0]),
        .I3(\ball_x_reg[5]_0 [0]),
        .I4(ball_x[1]),
        .I5(ball_x[2]),
        .O(\ball_x_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_onehot_state[6]_i_8 
       (.I0(\ball_x_reg[5]_0 [2]),
        .I1(\ball_x_reg[5]_0 [1]),
        .I2(ball_x[1]),
        .I3(ball_x[0]),
        .I4(ball_x[2]),
        .I5(\ball_x_reg[5]_0 [0]),
        .O(\ball_x_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ball_count[0]_i_1 
       (.I0(Q),
        .I1(ball_speed1),
        .O(ball_count));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_count[0]_i_3 
       (.I0(\ball_count_reg_n_0_[0] ),
        .O(\ball_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[0]_i_2_n_7 ),
        .Q(\ball_count_reg_n_0_[0] ),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ball_count_reg[0]_i_2_n_0 ,\ball_count_reg[0]_i_2_n_1 ,\ball_count_reg[0]_i_2_n_2 ,\ball_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ball_count_reg[0]_i_2_n_4 ,\ball_count_reg[0]_i_2_n_5 ,\ball_count_reg[0]_i_2_n_6 ,\ball_count_reg[0]_i_2_n_7 }),
        .S({ball_count_reg[3:2],\ball_count_reg_n_0_[1] ,\ball_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[10] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[8]_i_1_n_5 ),
        .Q(ball_count_reg[10]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[11] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[8]_i_1_n_4 ),
        .Q(ball_count_reg[11]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[12] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[12]_i_1_n_7 ),
        .Q(ball_count_reg[12]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[12]_i_1 
       (.CI(\ball_count_reg[8]_i_1_n_0 ),
        .CO({\ball_count_reg[12]_i_1_n_0 ,\ball_count_reg[12]_i_1_n_1 ,\ball_count_reg[12]_i_1_n_2 ,\ball_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[12]_i_1_n_4 ,\ball_count_reg[12]_i_1_n_5 ,\ball_count_reg[12]_i_1_n_6 ,\ball_count_reg[12]_i_1_n_7 }),
        .S(ball_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[13] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[12]_i_1_n_6 ),
        .Q(ball_count_reg[13]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[14] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[12]_i_1_n_5 ),
        .Q(ball_count_reg[14]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[15] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[12]_i_1_n_4 ),
        .Q(ball_count_reg[15]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[16] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[16]_i_1_n_7 ),
        .Q(ball_count_reg[16]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[16]_i_1 
       (.CI(\ball_count_reg[12]_i_1_n_0 ),
        .CO({\ball_count_reg[16]_i_1_n_0 ,\ball_count_reg[16]_i_1_n_1 ,\ball_count_reg[16]_i_1_n_2 ,\ball_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[16]_i_1_n_4 ,\ball_count_reg[16]_i_1_n_5 ,\ball_count_reg[16]_i_1_n_6 ,\ball_count_reg[16]_i_1_n_7 }),
        .S(ball_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[17] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[16]_i_1_n_6 ),
        .Q(ball_count_reg[17]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[18] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[16]_i_1_n_5 ),
        .Q(ball_count_reg[18]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[19] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[16]_i_1_n_4 ),
        .Q(ball_count_reg[19]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[0]_i_2_n_6 ),
        .Q(\ball_count_reg_n_0_[1] ),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[20] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[20]_i_1_n_7 ),
        .Q(ball_count_reg[20]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[20]_i_1 
       (.CI(\ball_count_reg[16]_i_1_n_0 ),
        .CO({\ball_count_reg[20]_i_1_n_0 ,\ball_count_reg[20]_i_1_n_1 ,\ball_count_reg[20]_i_1_n_2 ,\ball_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[20]_i_1_n_4 ,\ball_count_reg[20]_i_1_n_5 ,\ball_count_reg[20]_i_1_n_6 ,\ball_count_reg[20]_i_1_n_7 }),
        .S(ball_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[21] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[20]_i_1_n_6 ),
        .Q(ball_count_reg[21]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[22] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[20]_i_1_n_5 ),
        .Q(ball_count_reg[22]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[23] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[20]_i_1_n_4 ),
        .Q(ball_count_reg[23]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[24] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[24]_i_1_n_7 ),
        .Q(ball_count_reg[24]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[24]_i_1 
       (.CI(\ball_count_reg[20]_i_1_n_0 ),
        .CO({\ball_count_reg[24]_i_1_n_0 ,\ball_count_reg[24]_i_1_n_1 ,\ball_count_reg[24]_i_1_n_2 ,\ball_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[24]_i_1_n_4 ,\ball_count_reg[24]_i_1_n_5 ,\ball_count_reg[24]_i_1_n_6 ,\ball_count_reg[24]_i_1_n_7 }),
        .S(ball_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[25] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[24]_i_1_n_6 ),
        .Q(ball_count_reg[25]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[26] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[24]_i_1_n_5 ),
        .Q(ball_count_reg[26]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[27] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[24]_i_1_n_4 ),
        .Q(ball_count_reg[27]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[28] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[28]_i_1_n_7 ),
        .Q(ball_count_reg[28]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[28]_i_1 
       (.CI(\ball_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_ball_count_reg[28]_i_1_CO_UNCONNECTED [3],\ball_count_reg[28]_i_1_n_1 ,\ball_count_reg[28]_i_1_n_2 ,\ball_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[28]_i_1_n_4 ,\ball_count_reg[28]_i_1_n_5 ,\ball_count_reg[28]_i_1_n_6 ,\ball_count_reg[28]_i_1_n_7 }),
        .S(ball_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[29] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[28]_i_1_n_6 ),
        .Q(ball_count_reg[29]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[0]_i_2_n_5 ),
        .Q(ball_count_reg[2]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[30] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[28]_i_1_n_5 ),
        .Q(ball_count_reg[30]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[31] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[28]_i_1_n_4 ),
        .Q(ball_count_reg[31]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[0]_i_2_n_4 ),
        .Q(ball_count_reg[3]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[4]_i_1_n_7 ),
        .Q(ball_count_reg[4]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[4]_i_1 
       (.CI(\ball_count_reg[0]_i_2_n_0 ),
        .CO({\ball_count_reg[4]_i_1_n_0 ,\ball_count_reg[4]_i_1_n_1 ,\ball_count_reg[4]_i_1_n_2 ,\ball_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[4]_i_1_n_4 ,\ball_count_reg[4]_i_1_n_5 ,\ball_count_reg[4]_i_1_n_6 ,\ball_count_reg[4]_i_1_n_7 }),
        .S(ball_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[4]_i_1_n_6 ),
        .Q(ball_count_reg[5]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[4]_i_1_n_5 ),
        .Q(ball_count_reg[6]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[4]_i_1_n_4 ),
        .Q(ball_count_reg[7]),
        .R(ball_count));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[8]_i_1_n_7 ),
        .Q(ball_count_reg[8]),
        .R(ball_count));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_count_reg[8]_i_1 
       (.CI(\ball_count_reg[4]_i_1_n_0 ),
        .CO({\ball_count_reg[8]_i_1_n_0 ,\ball_count_reg[8]_i_1_n_1 ,\ball_count_reg[8]_i_1_n_2 ,\ball_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ball_count_reg[8]_i_1_n_4 ,\ball_count_reg[8]_i_1_n_5 ,\ball_count_reg[8]_i_1_n_6 ,\ball_count_reg[8]_i_1_n_7 }),
        .S(ball_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ball_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(Q),
        .D(\ball_count_reg[8]_i_1_n_6 ),
        .Q(ball_count_reg[9]),
        .R(ball_count));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_speed1_carry
       (.CI(1'b0),
        .CO({ball_speed1_carry_n_0,ball_speed1_carry_n_1,ball_speed1_carry_n_2,ball_speed1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ball_speed1_carry_i_1_n_0,ball_speed1_carry_i_2_n_0,ball_speed1_carry_i_3_n_0,ball_speed1_carry_i_4_n_0}),
        .O(NLW_ball_speed1_carry_O_UNCONNECTED[3:0]),
        .S({ball_speed1_carry_i_5_n_0,ball_speed1_carry_i_6_n_0,ball_speed1_carry_i_7_n_0,ball_speed1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_speed1_carry__0
       (.CI(ball_speed1_carry_n_0),
        .CO({ball_speed1_carry__0_n_0,ball_speed1_carry__0_n_1,ball_speed1_carry__0_n_2,ball_speed1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({ball_speed1_carry__0_i_1_n_0,ball_speed1_carry__0_i_2_n_0,ball_speed1_carry__0_i_3_n_0,ball_speed1_carry__0_i_4_n_0}),
        .O(NLW_ball_speed1_carry__0_O_UNCONNECTED[3:0]),
        .S({ball_speed1_carry__0_i_5_n_0,ball_speed1_carry__0_i_6_n_0,ball_speed1_carry__0_i_7_n_0,ball_speed1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__0_i_1
       (.I0(ball_speed_reg[17]),
        .I1(ball_count_reg[17]),
        .I2(ball_speed_reg[16]),
        .I3(ball_count_reg[16]),
        .O(ball_speed1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__0_i_2
       (.I0(ball_speed_reg[15]),
        .I1(ball_count_reg[15]),
        .I2(ball_speed_reg[14]),
        .I3(ball_count_reg[14]),
        .O(ball_speed1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__0_i_3
       (.I0(ball_speed_reg[13]),
        .I1(ball_count_reg[13]),
        .I2(ball_speed_reg[12]),
        .I3(ball_count_reg[12]),
        .O(ball_speed1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__0_i_4
       (.I0(ball_speed_reg[11]),
        .I1(ball_count_reg[11]),
        .I2(ball_speed_reg[10]),
        .I3(ball_count_reg[10]),
        .O(ball_speed1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__0_i_5
       (.I0(ball_count_reg[17]),
        .I1(ball_speed_reg[17]),
        .I2(ball_count_reg[16]),
        .I3(ball_speed_reg[16]),
        .O(ball_speed1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__0_i_6
       (.I0(ball_count_reg[15]),
        .I1(ball_speed_reg[15]),
        .I2(ball_count_reg[14]),
        .I3(ball_speed_reg[14]),
        .O(ball_speed1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__0_i_7
       (.I0(ball_count_reg[13]),
        .I1(ball_speed_reg[13]),
        .I2(ball_count_reg[12]),
        .I3(ball_speed_reg[12]),
        .O(ball_speed1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__0_i_8
       (.I0(ball_count_reg[11]),
        .I1(ball_speed_reg[11]),
        .I2(ball_count_reg[10]),
        .I3(ball_speed_reg[10]),
        .O(ball_speed1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_speed1_carry__1
       (.CI(ball_speed1_carry__0_n_0),
        .CO({ball_speed1_carry__1_n_0,ball_speed1_carry__1_n_1,ball_speed1_carry__1_n_2,ball_speed1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({ball_speed1_carry__1_i_1_n_0,ball_speed1_carry__1_i_2_n_0,ball_speed1_carry__1_i_3_n_0,ball_speed1_carry__1_i_4_n_0}),
        .O(NLW_ball_speed1_carry__1_O_UNCONNECTED[3:0]),
        .S({ball_speed1_carry__1_i_5_n_0,ball_speed1_carry__1_i_6_n_0,ball_speed1_carry__1_i_7_n_0,ball_speed1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__1_i_1
       (.I0(ball_speed_reg[25]),
        .I1(ball_count_reg[25]),
        .I2(ball_speed_reg[24]),
        .I3(ball_count_reg[24]),
        .O(ball_speed1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__1_i_2
       (.I0(ball_speed_reg[23]),
        .I1(ball_count_reg[23]),
        .I2(ball_speed_reg[22]),
        .I3(ball_count_reg[22]),
        .O(ball_speed1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__1_i_3
       (.I0(ball_speed_reg[21]),
        .I1(ball_count_reg[21]),
        .I2(ball_speed_reg[20]),
        .I3(ball_count_reg[20]),
        .O(ball_speed1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__1_i_4
       (.I0(ball_speed_reg[19]),
        .I1(ball_count_reg[19]),
        .I2(ball_speed_reg[18]),
        .I3(ball_count_reg[18]),
        .O(ball_speed1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__1_i_5
       (.I0(ball_count_reg[25]),
        .I1(ball_speed_reg[25]),
        .I2(ball_count_reg[24]),
        .I3(ball_speed_reg[24]),
        .O(ball_speed1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__1_i_6
       (.I0(ball_count_reg[23]),
        .I1(ball_speed_reg[23]),
        .I2(ball_count_reg[22]),
        .I3(ball_speed_reg[22]),
        .O(ball_speed1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__1_i_7
       (.I0(ball_count_reg[21]),
        .I1(ball_speed_reg[21]),
        .I2(ball_count_reg[20]),
        .I3(ball_speed_reg[20]),
        .O(ball_speed1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__1_i_8
       (.I0(ball_count_reg[19]),
        .I1(ball_speed_reg[19]),
        .I2(ball_count_reg[18]),
        .I3(ball_speed_reg[18]),
        .O(ball_speed1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ball_speed1_carry__2
       (.CI(ball_speed1_carry__1_n_0),
        .CO({NLW_ball_speed1_carry__2_CO_UNCONNECTED[3],ball_speed1,ball_speed1_carry__2_n_2,ball_speed1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ball_speed1_carry__2_i_1_n_0,ball_speed1_carry__2_i_2_n_0,ball_speed1_carry__2_i_3_n_0}),
        .O(NLW_ball_speed1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,ball_speed1_carry__2_i_4_n_0,ball_speed1_carry__2_i_5_n_0,ball_speed1_carry__2_i_6_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__2_i_1
       (.I0(ball_count_reg[31]),
        .I1(ball_speed_reg[31]),
        .I2(ball_speed_reg[30]),
        .I3(ball_count_reg[30]),
        .O(ball_speed1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__2_i_2
       (.I0(ball_speed_reg[29]),
        .I1(ball_count_reg[29]),
        .I2(ball_speed_reg[28]),
        .I3(ball_count_reg[28]),
        .O(ball_speed1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry__2_i_3
       (.I0(ball_speed_reg[27]),
        .I1(ball_count_reg[27]),
        .I2(ball_speed_reg[26]),
        .I3(ball_count_reg[26]),
        .O(ball_speed1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__2_i_4
       (.I0(ball_speed_reg[31]),
        .I1(ball_count_reg[31]),
        .I2(ball_count_reg[30]),
        .I3(ball_speed_reg[30]),
        .O(ball_speed1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__2_i_5
       (.I0(ball_count_reg[29]),
        .I1(ball_speed_reg[29]),
        .I2(ball_count_reg[28]),
        .I3(ball_speed_reg[28]),
        .O(ball_speed1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry__2_i_6
       (.I0(ball_count_reg[27]),
        .I1(ball_speed_reg[27]),
        .I2(ball_count_reg[26]),
        .I3(ball_speed_reg[26]),
        .O(ball_speed1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry_i_1
       (.I0(ball_speed_reg[9]),
        .I1(ball_count_reg[9]),
        .I2(ball_speed_reg[8]),
        .I3(ball_count_reg[8]),
        .O(ball_speed1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry_i_2
       (.I0(ball_speed_reg[7]),
        .I1(ball_count_reg[7]),
        .I2(ball_speed_reg[6]),
        .I3(ball_count_reg[6]),
        .O(ball_speed1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ball_speed1_carry_i_3
       (.I0(ball_speed_reg[5]),
        .I1(ball_count_reg[5]),
        .I2(ball_speed_reg[4]),
        .I3(ball_count_reg[4]),
        .O(ball_speed1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ball_speed1_carry_i_4
       (.I0(ball_speed_reg[3]),
        .I1(ball_count_reg[3]),
        .O(ball_speed1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry_i_5
       (.I0(ball_count_reg[9]),
        .I1(ball_speed_reg[9]),
        .I2(ball_count_reg[8]),
        .I3(ball_speed_reg[8]),
        .O(ball_speed1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry_i_6
       (.I0(ball_count_reg[7]),
        .I1(ball_speed_reg[7]),
        .I2(ball_count_reg[6]),
        .I3(ball_speed_reg[6]),
        .O(ball_speed1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ball_speed1_carry_i_7
       (.I0(ball_count_reg[5]),
        .I1(ball_speed_reg[5]),
        .I2(ball_count_reg[4]),
        .I3(ball_speed_reg[4]),
        .O(ball_speed1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    ball_speed1_carry_i_8
       (.I0(ball_count_reg[2]),
        .I1(ball_count_reg[3]),
        .I2(ball_speed_reg[3]),
        .O(ball_speed1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[11]_i_2 
       (.I0(ball_speed_reg[14]),
        .O(\ball_speed[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[11]_i_3 
       (.I0(ball_speed_reg[13]),
        .O(\ball_speed[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[11]_i_4 
       (.I0(ball_speed_reg[11]),
        .O(\ball_speed[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[15]_i_2 
       (.I0(ball_speed_reg[18]),
        .O(\ball_speed[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[15]_i_3 
       (.I0(ball_speed_reg[17]),
        .O(\ball_speed[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[15]_i_4 
       (.I0(ball_speed_reg[16]),
        .O(\ball_speed[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[15]_i_5 
       (.I0(ball_speed_reg[15]),
        .O(\ball_speed[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[19]_i_2 
       (.I0(ball_speed_reg[22]),
        .O(\ball_speed[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[19]_i_3 
       (.I0(ball_speed_reg[21]),
        .O(\ball_speed[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[19]_i_4 
       (.I0(ball_speed_reg[20]),
        .O(\ball_speed[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[19]_i_5 
       (.I0(ball_speed_reg[19]),
        .O(\ball_speed[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[23]_i_2 
       (.I0(ball_speed_reg[26]),
        .O(\ball_speed[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[23]_i_3 
       (.I0(ball_speed_reg[25]),
        .O(\ball_speed[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[23]_i_4 
       (.I0(ball_speed_reg[24]),
        .O(\ball_speed[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[23]_i_5 
       (.I0(ball_speed_reg[23]),
        .O(\ball_speed[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[27]_i_2 
       (.I0(ball_speed_reg[30]),
        .O(\ball_speed[27]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[27]_i_3 
       (.I0(ball_speed_reg[29]),
        .O(\ball_speed[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[27]_i_4 
       (.I0(ball_speed_reg[28]),
        .O(\ball_speed[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[27]_i_5 
       (.I0(ball_speed_reg[27]),
        .O(\ball_speed[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[31]_i_2 
       (.I0(ball_speed_reg[31]),
        .O(\ball_speed[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \ball_speed[3]_i_1 
       (.I0(ball_speed1),
        .I1(\ball_speed[3]_i_3_n_0 ),
        .I2(\ball_speed[3]_i_4_n_0 ),
        .O(\ball_speed[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ball_speed[3]_i_10 
       (.I0(ball_speed_reg[13]),
        .I1(ball_speed_reg[21]),
        .I2(ball_speed_reg[27]),
        .I3(ball_speed_reg[5]),
        .O(\ball_speed[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ball_speed[3]_i_11 
       (.I0(ball_speed_reg[26]),
        .I1(ball_speed_reg[14]),
        .I2(ball_speed_reg[12]),
        .I3(ball_speed_reg[6]),
        .O(\ball_speed[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \ball_speed[3]_i_12 
       (.I0(ball_speed_reg[20]),
        .I1(ball_speed_reg[16]),
        .I2(ball_speed_reg[17]),
        .I3(ball_speed_reg[15]),
        .O(\ball_speed[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ball_speed[3]_i_13 
       (.I0(ball_speed_reg[22]),
        .I1(ball_speed_reg[19]),
        .I2(ball_speed_reg[9]),
        .I3(ball_speed_reg[11]),
        .O(\ball_speed[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ball_speed[3]_i_3 
       (.I0(\ball_speed[3]_i_9_n_0 ),
        .I1(\ball_speed[3]_i_10_n_0 ),
        .I2(ball_speed_reg[24]),
        .I3(ball_speed_reg[3]),
        .I4(ball_speed_reg[25]),
        .I5(ball_speed_reg[23]),
        .O(\ball_speed[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ball_speed[3]_i_4 
       (.I0(\ball_speed[3]_i_11_n_0 ),
        .I1(\ball_speed[3]_i_12_n_0 ),
        .I2(\ball_speed[3]_i_13_n_0 ),
        .I3(ball_speed_reg[28]),
        .I4(ball_speed_reg[29]),
        .I5(ball_speed_reg[18]),
        .O(\ball_speed[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[3]_i_5 
       (.I0(ball_speed_reg[6]),
        .O(\ball_speed[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[3]_i_6 
       (.I0(ball_speed_reg[5]),
        .O(\ball_speed[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[3]_i_7 
       (.I0(ball_speed_reg[4]),
        .O(\ball_speed[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[3]_i_8 
       (.I0(ball_speed_reg[3]),
        .O(\ball_speed[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \ball_speed[3]_i_9 
       (.I0(ball_speed_reg[10]),
        .I1(ball_speed_reg[8]),
        .I2(ball_speed_reg[30]),
        .I3(ball_speed_reg[7]),
        .I4(ball_speed_reg[31]),
        .I5(ball_speed_reg[4]),
        .O(\ball_speed[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_speed[7]_i_2 
       (.I0(ball_speed_reg[10]),
        .O(\ball_speed[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[10] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[7]_i_1_n_4 ),
        .Q(ball_speed_reg[10]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[11] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[11]_i_1_n_7 ),
        .Q(ball_speed_reg[11]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[11]_i_1 
       (.CI(\ball_speed_reg[7]_i_1_n_0 ),
        .CO({\ball_speed_reg[11]_i_1_n_0 ,\ball_speed_reg[11]_i_1_n_1 ,\ball_speed_reg[11]_i_1_n_2 ,\ball_speed_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b0,1'b1}),
        .O({\ball_speed_reg[11]_i_1_n_4 ,\ball_speed_reg[11]_i_1_n_5 ,\ball_speed_reg[11]_i_1_n_6 ,\ball_speed_reg[11]_i_1_n_7 }),
        .S({\ball_speed[11]_i_2_n_0 ,\ball_speed[11]_i_3_n_0 ,ball_speed_reg[12],\ball_speed[11]_i_4_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[12] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[11]_i_1_n_6 ),
        .Q(ball_speed_reg[12]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[13] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[11]_i_1_n_5 ),
        .Q(ball_speed_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[14] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[11]_i_1_n_4 ),
        .Q(ball_speed_reg[14]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[15] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[15]_i_1_n_7 ),
        .Q(ball_speed_reg[15]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[15]_i_1 
       (.CI(\ball_speed_reg[11]_i_1_n_0 ),
        .CO({\ball_speed_reg[15]_i_1_n_0 ,\ball_speed_reg[15]_i_1_n_1 ,\ball_speed_reg[15]_i_1_n_2 ,\ball_speed_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\ball_speed_reg[15]_i_1_n_4 ,\ball_speed_reg[15]_i_1_n_5 ,\ball_speed_reg[15]_i_1_n_6 ,\ball_speed_reg[15]_i_1_n_7 }),
        .S({\ball_speed[15]_i_2_n_0 ,\ball_speed[15]_i_3_n_0 ,\ball_speed[15]_i_4_n_0 ,\ball_speed[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[16] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[15]_i_1_n_6 ),
        .Q(ball_speed_reg[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[17] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[15]_i_1_n_5 ),
        .Q(ball_speed_reg[17]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[18] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[15]_i_1_n_4 ),
        .Q(ball_speed_reg[18]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[19] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[19]_i_1_n_7 ),
        .Q(ball_speed_reg[19]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[19]_i_1 
       (.CI(\ball_speed_reg[15]_i_1_n_0 ),
        .CO({\ball_speed_reg[19]_i_1_n_0 ,\ball_speed_reg[19]_i_1_n_1 ,\ball_speed_reg[19]_i_1_n_2 ,\ball_speed_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\ball_speed_reg[19]_i_1_n_4 ,\ball_speed_reg[19]_i_1_n_5 ,\ball_speed_reg[19]_i_1_n_6 ,\ball_speed_reg[19]_i_1_n_7 }),
        .S({\ball_speed[19]_i_2_n_0 ,\ball_speed[19]_i_3_n_0 ,\ball_speed[19]_i_4_n_0 ,\ball_speed[19]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[20] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[19]_i_1_n_6 ),
        .Q(ball_speed_reg[20]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[21] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[19]_i_1_n_5 ),
        .Q(ball_speed_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[22] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[19]_i_1_n_4 ),
        .Q(ball_speed_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[23] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[23]_i_1_n_7 ),
        .Q(ball_speed_reg[23]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[23]_i_1 
       (.CI(\ball_speed_reg[19]_i_1_n_0 ),
        .CO({\ball_speed_reg[23]_i_1_n_0 ,\ball_speed_reg[23]_i_1_n_1 ,\ball_speed_reg[23]_i_1_n_2 ,\ball_speed_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\ball_speed_reg[23]_i_1_n_4 ,\ball_speed_reg[23]_i_1_n_5 ,\ball_speed_reg[23]_i_1_n_6 ,\ball_speed_reg[23]_i_1_n_7 }),
        .S({\ball_speed[23]_i_2_n_0 ,\ball_speed[23]_i_3_n_0 ,\ball_speed[23]_i_4_n_0 ,\ball_speed[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[24] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[23]_i_1_n_6 ),
        .Q(ball_speed_reg[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[25] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[23]_i_1_n_5 ),
        .Q(ball_speed_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[26] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[23]_i_1_n_4 ),
        .Q(ball_speed_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[27] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[27]_i_1_n_7 ),
        .Q(ball_speed_reg[27]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[27]_i_1 
       (.CI(\ball_speed_reg[23]_i_1_n_0 ),
        .CO({\ball_speed_reg[27]_i_1_n_0 ,\ball_speed_reg[27]_i_1_n_1 ,\ball_speed_reg[27]_i_1_n_2 ,\ball_speed_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\ball_speed_reg[27]_i_1_n_4 ,\ball_speed_reg[27]_i_1_n_5 ,\ball_speed_reg[27]_i_1_n_6 ,\ball_speed_reg[27]_i_1_n_7 }),
        .S({\ball_speed[27]_i_2_n_0 ,\ball_speed[27]_i_3_n_0 ,\ball_speed[27]_i_4_n_0 ,\ball_speed[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[28] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[27]_i_1_n_6 ),
        .Q(ball_speed_reg[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[29] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[27]_i_1_n_5 ),
        .Q(ball_speed_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[30] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[27]_i_1_n_4 ),
        .Q(ball_speed_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[31] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[31]_i_1_n_7 ),
        .Q(ball_speed_reg[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[31]_i_1 
       (.CI(\ball_speed_reg[27]_i_1_n_0 ),
        .CO(\NLW_ball_speed_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ball_speed_reg[31]_i_1_O_UNCONNECTED [3:1],\ball_speed_reg[31]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\ball_speed[31]_i_2_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[3]_i_2_n_7 ),
        .Q(ball_speed_reg[3]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\ball_speed_reg[3]_i_2_n_0 ,\ball_speed_reg[3]_i_2_n_1 ,\ball_speed_reg[3]_i_2_n_2 ,\ball_speed_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\ball_speed_reg[3]_i_2_n_4 ,\ball_speed_reg[3]_i_2_n_5 ,\ball_speed_reg[3]_i_2_n_6 ,\ball_speed_reg[3]_i_2_n_7 }),
        .S({\ball_speed[3]_i_5_n_0 ,\ball_speed[3]_i_6_n_0 ,\ball_speed[3]_i_7_n_0 ,\ball_speed[3]_i_8_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[3]_i_2_n_6 ),
        .Q(ball_speed_reg[4]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \ball_speed_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[3]_i_2_n_5 ),
        .Q(ball_speed_reg[5]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[3]_i_2_n_4 ),
        .Q(ball_speed_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[7]_i_1_n_7 ),
        .Q(ball_speed_reg[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ball_speed_reg[7]_i_1 
       (.CI(\ball_speed_reg[3]_i_2_n_0 ),
        .CO({\ball_speed_reg[7]_i_1_n_0 ,\ball_speed_reg[7]_i_1_n_1 ,\ball_speed_reg[7]_i_1_n_2 ,\ball_speed_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\ball_speed_reg[7]_i_1_n_4 ,\ball_speed_reg[7]_i_1_n_5 ,\ball_speed_reg[7]_i_1_n_6 ,\ball_speed_reg[7]_i_1_n_7 }),
        .S({\ball_speed[7]_i_2_n_0 ,ball_speed_reg[9:7]}));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[7]_i_1_n_6 ),
        .Q(ball_speed_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_speed_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(\ball_speed[3]_i_1_n_0 ),
        .D(\ball_speed_reg[7]_i_1_n_5 ),
        .Q(ball_speed_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ball_x[0]_i_1 
       (.I0(ball_x[0]),
        .O(\ball_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \ball_x[1]_i_1 
       (.I0(ball_x[0]),
        .I1(\ball_x[2]_i_2_n_0 ),
        .I2(ball_x[1]),
        .O(\ball_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \ball_x[2]_i_1 
       (.I0(ball_x[0]),
        .I1(\ball_x[2]_i_2_n_0 ),
        .I2(ball_x[1]),
        .I3(ball_x[2]),
        .O(\ball_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[2]_i_10 
       (.I0(previous_ball_x[2]),
        .I1(ball_x[2]),
        .O(\ball_x[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \ball_x[2]_i_11 
       (.I0(previous_ball_x[0]),
        .I1(ball_x[0]),
        .I2(ball_x[2]),
        .I3(previous_ball_x[2]),
        .I4(ball_x[1]),
        .I5(previous_ball_x[1]),
        .O(\ball_x[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[2]_i_12 
       (.I0(previous_ball_x[4]),
        .I1(\ball_x_reg[5]_0 [1]),
        .O(\ball_x[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB00030B0BBBB33BB)) 
    \ball_x[2]_i_2 
       (.I0(\ball_x[2]_i_3_n_0 ),
        .I1(\ball_x_reg[4]_0 ),
        .I2(\ball_x[2]_i_4_n_0 ),
        .I3(\ball_x_reg[5]_0 [2]),
        .I4(previous_ball_x[5]),
        .I5(\ball_x_reg[5]_1 ),
        .O(\ball_x[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEFFAAAE)) 
    \ball_x[2]_i_3 
       (.I0(\ball_x[2]_i_5_n_0 ),
        .I1(\ball_x[2]_i_6_n_0 ),
        .I2(\ball_x[2]_i_7_n_0 ),
        .I3(\ball_x_reg[5]_0 [0]),
        .I4(previous_ball_x[3]),
        .I5(\ball_x[2]_i_8_n_0 ),
        .O(\ball_x[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEEFAEAE)) 
    \ball_x[2]_i_4 
       (.I0(\ball_x[2]_i_9_n_0 ),
        .I1(\ball_x_reg[5]_0 [0]),
        .I2(previous_ball_x[3]),
        .I3(\ball_x[2]_i_10_n_0 ),
        .I4(\ball_x[2]_i_11_n_0 ),
        .I5(\ball_x[2]_i_12_n_0 ),
        .O(\ball_x[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ball_x[2]_i_5 
       (.I0(\ball_x_reg[5]_0 [2]),
        .I1(previous_ball_x[5]),
        .I2(\ball_x_reg[5]_0 [1]),
        .I3(previous_ball_x[4]),
        .O(\ball_x[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BBF0BFFFFBF0B)) 
    \ball_x[2]_i_6 
       (.I0(previous_ball_x[0]),
        .I1(ball_x[0]),
        .I2(ball_x[1]),
        .I3(previous_ball_x[1]),
        .I4(previous_ball_x[2]),
        .I5(ball_x[2]),
        .O(\ball_x[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[2]_i_7 
       (.I0(ball_x[2]),
        .I1(previous_ball_x[2]),
        .O(\ball_x[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ball_x[2]_i_8 
       (.I0(\ball_x_reg[5]_0 [1]),
        .I1(previous_ball_x[4]),
        .O(\ball_x[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ball_x[2]_i_9 
       (.I0(previous_ball_x[5]),
        .I1(\ball_x_reg[5]_0 [2]),
        .I2(previous_ball_x[4]),
        .I3(\ball_x_reg[5]_0 [1]),
        .O(\ball_x[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \ball_x[3]_i_1 
       (.I0(\ball_x[5]_i_2_n_0 ),
        .I1(\ball_x_reg[5]_0 [0]),
        .I2(ball_x[2]),
        .O(\ball_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \ball_x[4]_i_1 
       (.I0(\ball_x_reg[5]_0 [1]),
        .I1(\ball_x[5]_i_2_n_0 ),
        .I2(\ball_x_reg[5]_0 [0]),
        .I3(ball_x[2]),
        .O(\ball_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \ball_x[5]_i_1 
       (.I0(\ball_x_reg[5]_0 [2]),
        .I1(\ball_x_reg[5]_0 [1]),
        .I2(ball_x[2]),
        .I3(\ball_x_reg[5]_0 [0]),
        .I4(\ball_x[5]_i_2_n_0 ),
        .O(\ball_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hB332)) 
    \ball_x[5]_i_2 
       (.I0(ball_x[1]),
        .I1(ball_x[2]),
        .I2(\ball_x[2]_i_2_n_0 ),
        .I3(ball_x[0]),
        .O(\ball_x[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[0]_i_1_n_0 ),
        .Q(ball_x[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[1]_i_1_n_0 ),
        .Q(ball_x[1]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \ball_x_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[2]_i_1_n_0 ),
        .Q(ball_x[2]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[3]_i_1_n_0 ),
        .Q(\ball_x_reg[5]_0 [0]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \ball_x_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[4]_i_1_n_0 ),
        .Q(\ball_x_reg[5]_0 [1]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_x_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x[5]_i_1_n_0 ),
        .Q(\ball_x_reg[5]_0 [2]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \ball_y[0]_i_1 
       (.I0(\ball_y_reg[5]_0 [0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \ball_y[1]_i_1 
       (.I0(\ball_y[1]_i_2_n_0 ),
        .I1(\ball_y_reg[5]_0 [1]),
        .I2(\ball_y_reg[5]_0 [0]),
        .O(\ball_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \ball_y[1]_i_10 
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\previous_ball_y_reg_n_0_[3] ),
        .I2(\previous_ball_y_reg_n_0_[2] ),
        .I3(\ball_y_reg[5]_0 [2]),
        .O(\ball_y[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ball_y[1]_i_11 
       (.I0(\ball_y_reg[5]_0 [2]),
        .I1(\ball_y_reg[5]_0 [3]),
        .O(\ball_y[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2F022F0200002F02)) 
    \ball_y[1]_i_12 
       (.I0(\ball_y_reg[5]_0 [0]),
        .I1(\previous_ball_y_reg_n_0_[0] ),
        .I2(\previous_ball_y_reg_n_0_[1] ),
        .I3(\ball_y_reg[5]_0 [1]),
        .I4(\previous_ball_y_reg_n_0_[2] ),
        .I5(\ball_y_reg[5]_0 [2]),
        .O(\ball_y[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    \ball_y[1]_i_13 
       (.I0(\previous_ball_y_reg_n_0_[4] ),
        .I1(\ball_y_reg[5]_0 [4]),
        .I2(\ball_y_reg[5]_0 [3]),
        .I3(\previous_ball_y_reg_n_0_[3] ),
        .O(\ball_y[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h454544FF45FF44FF)) 
    \ball_y[1]_i_2 
       (.I0(\ball_y[1]_i_3_n_0 ),
        .I1(\ball_y[1]_i_4_n_0 ),
        .I2(\ball_y[1]_i_5_n_0 ),
        .I3(\ball_y[1]_i_6_n_0 ),
        .I4(\ball_y[1]_i_7_n_0 ),
        .I5(\ball_y[1]_i_8_n_0 ),
        .O(\ball_y[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ball_y[1]_i_3 
       (.I0(\ball_y_reg[5]_0 [5]),
        .I1(\ball_y_reg[5]_0 [4]),
        .I2(\ball_y_reg[5]_0 [2]),
        .I3(\ball_y_reg[5]_0 [3]),
        .I4(\ball_y_reg[5]_0 [0]),
        .I5(\ball_y_reg[5]_0 [1]),
        .O(\ball_y[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ball_y[1]_i_4 
       (.I0(\previous_ball_y_reg_n_0_[5] ),
        .I1(\ball_y_reg[5]_0 [5]),
        .O(\ball_y[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD0DD0000D0DDD0DD)) 
    \ball_y[1]_i_5 
       (.I0(\previous_ball_y_reg_n_0_[3] ),
        .I1(\ball_y_reg[5]_0 [3]),
        .I2(\ball_y_reg[5]_0 [4]),
        .I3(\previous_ball_y_reg_n_0_[4] ),
        .I4(\ball_y[1]_i_9_n_0 ),
        .I5(\ball_y[1]_i_10_n_0 ),
        .O(\ball_y[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \ball_y[1]_i_6 
       (.I0(\ball_y_reg[5]_0 [4]),
        .I1(\ball_y_reg[5]_0 [1]),
        .I2(\ball_y_reg[5]_0 [0]),
        .I3(\previous_ball_y_reg_n_0_[5] ),
        .I4(\ball_y_reg[5]_0 [5]),
        .I5(\ball_y[1]_i_11_n_0 ),
        .O(\ball_y[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hB0BB)) 
    \ball_y[1]_i_7 
       (.I0(\previous_ball_y_reg_n_0_[5] ),
        .I1(\ball_y_reg[5]_0 [5]),
        .I2(\previous_ball_y_reg_n_0_[4] ),
        .I3(\ball_y_reg[5]_0 [4]),
        .O(\ball_y[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h51005151FFFFFFFF)) 
    \ball_y[1]_i_8 
       (.I0(\ball_y[1]_i_12_n_0 ),
        .I1(\ball_y_reg[5]_0 [3]),
        .I2(\previous_ball_y_reg_n_0_[3] ),
        .I3(\previous_ball_y_reg_n_0_[2] ),
        .I4(\ball_y_reg[5]_0 [2]),
        .I5(\ball_y[1]_i_13_n_0 ),
        .O(\ball_y[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD0FD0000D0FDD0FD)) 
    \ball_y[1]_i_9 
       (.I0(\previous_ball_y_reg_n_0_[0] ),
        .I1(\ball_y_reg[5]_0 [0]),
        .I2(\ball_y_reg[5]_0 [1]),
        .I3(\previous_ball_y_reg_n_0_[1] ),
        .I4(\ball_y_reg[5]_0 [2]),
        .I5(\previous_ball_y_reg_n_0_[2] ),
        .O(\ball_y[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \ball_y[2]_i_1 
       (.I0(\ball_y_reg[5]_0 [2]),
        .I1(\ball_y[5]_i_2_n_0 ),
        .I2(\ball_y[5]_i_3_n_0 ),
        .O(\ball_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    \ball_y[3]_i_1 
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\ball_y[5]_i_2_n_0 ),
        .I2(\ball_y_reg[5]_0 [2]),
        .I3(\ball_y[5]_i_3_n_0 ),
        .O(\ball_y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hAAA96A69)) 
    \ball_y[4]_i_1 
       (.I0(\ball_y_reg[5]_0 [4]),
        .I1(\ball_y_reg[5]_0 [3]),
        .I2(\ball_y_reg[5]_0 [2]),
        .I3(\ball_y[5]_i_2_n_0 ),
        .I4(\ball_y[5]_i_3_n_0 ),
        .O(\ball_y[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA95AAAAAA9)) 
    \ball_y[5]_i_1 
       (.I0(\ball_y_reg[5]_0 [5]),
        .I1(\ball_y[5]_i_2_n_0 ),
        .I2(\ball_y_reg[5]_0 [2]),
        .I3(\ball_y_reg[5]_0 [3]),
        .I4(\ball_y_reg[5]_0 [4]),
        .I5(\ball_y[5]_i_3_n_0 ),
        .O(\ball_y[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \ball_y[5]_i_2 
       (.I0(\ball_y_reg[5]_0 [1]),
        .I1(\ball_y_reg[5]_0 [0]),
        .I2(\ball_y[1]_i_2_n_0 ),
        .O(\ball_y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \ball_y[5]_i_3 
       (.I0(\ball_y[1]_i_2_n_0 ),
        .I1(\ball_y_reg[5]_0 [1]),
        .I2(\ball_y_reg[5]_0 [0]),
        .O(\ball_y[5]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \ball_y_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(p_0_in),
        .Q(\ball_y_reg[5]_0 [0]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \ball_y_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y[1]_i_1_n_0 ),
        .Q(\ball_y_reg[5]_0 [1]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \ball_y_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y[2]_i_1_n_0 ),
        .Q(\ball_y_reg[5]_0 [2]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \ball_y_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y[3]_i_1_n_0 ),
        .Q(\ball_y_reg[5]_0 [3]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y[4]_i_1_n_0 ),
        .Q(\ball_y_reg[5]_0 [4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ball_y_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y[5]_i_1_n_0 ),
        .Q(\ball_y_reg[5]_0 [5]),
        .R(clear));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    draw_ball_i_4
       (.I0(ball_x[0]),
        .I1(draw_ball_reg[0]),
        .I2(draw_ball_reg[1]),
        .I3(ball_x[1]),
        .I4(draw_ball_reg[2]),
        .I5(ball_x[2]),
        .O(\ball_x_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    i___0_carry__0_i_4
       (.I0(\ball_y_reg[5]_0 [5]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [5]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'hB)) 
    i___0_carry__0_i_4__0
       (.I0(\ball_y_reg[5]_0 [5]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [5]),
        .O(\ball_y_reg[5]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___0_carry__0_i_5
       (.I0(\ball_y_reg[5]_0 [4]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [4]),
        .I2(\ball_y_reg[5]_0 [5]),
        .I3(\p_1_out_inferred__0/i___0_carry__0 [5]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___0_carry__0_i_5__0
       (.I0(\ball_y_reg[5]_0 [4]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [4]),
        .I2(\ball_y_reg[5]_0 [5]),
        .I3(\p_1_out_inferred__1/i___0_carry__0 [5]),
        .O(\ball_y_reg[5]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___0_carry__0_i_6
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [3]),
        .I2(\ball_y_reg[5]_0 [4]),
        .I3(\p_1_out_inferred__0/i___0_carry__0 [4]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    i___0_carry__0_i_6__0
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [3]),
        .I2(\ball_y_reg[5]_0 [4]),
        .I3(\p_1_out_inferred__1/i___0_carry__0 [4]),
        .O(\ball_y_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_1
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [3]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_1__0
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [3]),
        .O(\ball_y_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_3
       (.I0(\ball_y_reg[5]_0 [1]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_3__0
       (.I0(\ball_y_reg[5]_0 [1]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [1]),
        .O(\ball_y_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_4
       (.I0(\ball_y_reg[5]_0 [0]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [0]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_4__0
       (.I0(\ball_y_reg[5]_0 [0]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [0]),
        .O(\ball_y_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'h6966)) 
    i___0_carry_i_6
       (.I0(\ball_y_reg[5]_0 [2]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [2]),
        .I2(\ball_y_reg[5]_0 [1]),
        .I3(\p_1_out_inferred__0/i___0_carry__0 [1]),
        .O(\ball_y_reg[2]_0 [1]));
  LUT4 #(
    .INIT(16'h6966)) 
    i___0_carry_i_6__0
       (.I0(\ball_y_reg[5]_0 [2]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [2]),
        .I2(\ball_y_reg[5]_0 [1]),
        .I3(\p_1_out_inferred__1/i___0_carry__0 [1]),
        .O(\ball_y_reg[2]_1 [1]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___0_carry_i_7
       (.I0(\ball_y_reg[5]_0 [0]),
        .I1(\p_1_out_inferred__0/i___0_carry__0 [0]),
        .I2(\p_1_out_inferred__0/i___0_carry__0 [1]),
        .I3(\ball_y_reg[5]_0 [1]),
        .O(\ball_y_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i___0_carry_i_7__0
       (.I0(\ball_y_reg[5]_0 [0]),
        .I1(\p_1_out_inferred__1/i___0_carry__0 [0]),
        .I2(\p_1_out_inferred__1/i___0_carry__0 [1]),
        .I3(\ball_y_reg[5]_0 [1]),
        .O(\ball_y_reg[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \previous_ball_x[1]_i_1 
       (.I0(ball_x[1]),
        .I1(Q),
        .O(\previous_ball_x[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \previous_ball_x[2]_i_1 
       (.I0(\previous_ball_y_reg[4]_0 ),
        .I1(Q),
        .O(\previous_ball_x[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \previous_ball_x[2]_i_2 
       (.I0(ball_speed1),
        .I1(Q),
        .O(\previous_ball_x[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \previous_ball_x[2]_i_3 
       (.I0(ball_x[2]),
        .I1(Q),
        .O(\previous_ball_x[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \previous_ball_x[5]_i_1 
       (.I0(Q),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \previous_ball_x[5]_i_2 
       (.I0(ball_speed1),
        .O(previous_ball_y));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(ball_x[0]),
        .Q(previous_ball_x[0]),
        .S(clear));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_x[1]_i_1_n_0 ),
        .Q(previous_ball_x[1]),
        .S(\previous_ball_x[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_x[2]_i_3_n_0 ),
        .Q(previous_ball_x[2]),
        .R(\previous_ball_x[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x_reg[5]_0 [0]),
        .Q(previous_ball_x[3]),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x_reg[5]_0 [1]),
        .Q(previous_ball_x[4]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_x_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_x_reg[5]_0 [2]),
        .Q(previous_ball_x[5]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \previous_ball_y[1]_i_1 
       (.I0(\ball_y_reg[5]_0 [1]),
        .I1(Q),
        .O(\previous_ball_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \previous_ball_y[2]_i_1 
       (.I0(\ball_y_reg[5]_0 [2]),
        .I1(Q),
        .O(\previous_ball_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \previous_ball_y[3]_i_1 
       (.I0(\ball_y_reg[5]_0 [3]),
        .I1(Q),
        .O(\previous_ball_y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \previous_ball_y[4]_i_1 
       (.I0(\ball_y_reg[5]_0 [4]),
        .I1(Q),
        .O(\previous_ball_y[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y_reg[5]_0 [0]),
        .Q(\previous_ball_y_reg_n_0_[0] ),
        .R(clear));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_y[1]_i_1_n_0 ),
        .Q(\previous_ball_y_reg_n_0_[1] ),
        .S(\previous_ball_x[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_y[2]_i_1_n_0 ),
        .Q(\previous_ball_y_reg_n_0_[2] ),
        .S(\previous_ball_x[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_y[3]_i_1_n_0 ),
        .Q(\previous_ball_y_reg_n_0_[3] ),
        .S(\previous_ball_x[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(\previous_ball_x[2]_i_2_n_0 ),
        .D(\previous_ball_y[4]_i_1_n_0 ),
        .Q(\previous_ball_y_reg_n_0_[4] ),
        .R(\previous_ball_x[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \previous_ball_y_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(previous_ball_y),
        .D(\ball_y_reg[5]_0 [5]),
        .Q(\previous_ball_y_reg_n_0_[5] ),
        .R(clear));
endmodule

module Pong_FSM
   (start_pressed,
    ssd_OBUF,
    \p1_score_reg[3]_0 ,
    \p2_score_reg[3]_0 ,
    draw_ball_reg,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[5]_0 ,
    \FSM_onehot_state_reg[2]_1 ,
    \FSM_onehot_state_reg[2]_2 ,
    \FSM_onehot_state_reg[2]_3 ,
    clock_25Mhz_BUFG,
    change_mode_debounced,
    start_debounced,
    p1_up_debounced,
    p2_up_debounced,
    Q,
    \ssd_OBUF[5]_inst_i_1_0 ,
    \ssd_OBUF[5]_inst_i_1_1 ,
    \FSM_onehot_state_reg[6]_0 ,
    p1_down_debounced,
    p2_down_debounced,
    \ssd[7] ,
    paddle_enable,
    paddle_enable_0);
  output start_pressed;
  output [6:0]ssd_OBUF;
  output [2:0]\p1_score_reg[3]_0 ;
  output [2:0]\p2_score_reg[3]_0 ;
  output draw_ball_reg;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[5]_0 ;
  output \FSM_onehot_state_reg[2]_1 ;
  output \FSM_onehot_state_reg[2]_2 ;
  output \FSM_onehot_state_reg[2]_3 ;
  input clock_25Mhz_BUFG;
  input change_mode_debounced;
  input start_debounced;
  input p1_up_debounced;
  input p2_up_debounced;
  input [2:0]Q;
  input \ssd_OBUF[5]_inst_i_1_0 ;
  input \ssd_OBUF[5]_inst_i_1_1 ;
  input \FSM_onehot_state_reg[6]_0 ;
  input p1_down_debounced;
  input p2_down_debounced;
  input \ssd[7] ;
  input paddle_enable;
  input paddle_enable_0;

  wire \Draw_Game_wrap/draw_ball0 ;
  wire \Draw_Game_wrap/draw_paddle_p10 ;
  wire \Draw_Game_wrap/draw_paddle_p11 ;
  wire \Draw_Game_wrap/draw_paddle_p20 ;
  wire \Draw_Game_wrap/draw_paddle_p21 ;
  wire \Draw_Mode_wrap/Score_Display_Limit/fixed_column_count14_out ;
  wire \Draw_Over_wrap/Score_Display_P1/fixed_column_count14_out ;
  wire \Draw_Over_wrap/Score_Display_P2/fixed_column_count14_out ;
  wire \Draw_Over_wrap/fixed_column_count1 ;
  wire \Draw_Start_wrap/draw_change ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire \FSM_onehot_state_reg[2]_1 ;
  wire \FSM_onehot_state_reg[2]_2 ;
  wire \FSM_onehot_state_reg[2]_3 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[6]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [2:0]Q;
  wire VGA_Sync_to_Count_wrap_n_12;
  wire VGA_Sync_to_Count_wrap_n_13;
  wire VGA_Sync_to_Count_wrap_n_14;
  wire VGA_Sync_to_Count_wrap_n_15;
  wire VGA_Sync_to_Count_wrap_n_16;
  wire VGA_Sync_to_Count_wrap_n_17;
  wire VGA_Sync_to_Count_wrap_n_18;
  wire VGA_Sync_to_Count_wrap_n_19;
  wire VGA_Sync_to_Count_wrap_n_21;
  wire VGA_Sync_to_Count_wrap_n_22;
  wire VGA_Sync_to_Count_wrap_n_23;
  wire VGA_Sync_to_Count_wrap_n_24;
  wire VGA_Sync_to_Count_wrap_n_25;
  wire VGA_Sync_to_Count_wrap_n_26;
  wire VGA_Sync_to_Count_wrap_n_28;
  wire VGA_Sync_to_Count_wrap_n_29;
  wire VGA_Sync_to_Count_wrap_n_30;
  wire VGA_Sync_to_Count_wrap_n_31;
  wire VGA_Sync_to_Count_wrap_n_32;
  wire VGA_Sync_to_Count_wrap_n_33;
  wire VGA_Sync_to_Count_wrap_n_34;
  wire VGA_Sync_to_Count_wrap_n_35;
  wire VGA_Sync_to_Count_wrap_n_36;
  wire VGA_Sync_to_Count_wrap_n_37;
  wire VGA_Sync_to_Count_wrap_n_38;
  wire VGA_Sync_to_Count_wrap_n_39;
  wire VGA_Sync_to_Count_wrap_n_40;
  wire VGA_Sync_to_Count_wrap_n_41;
  wire VGA_Sync_to_Count_wrap_n_43;
  wire VGA_Sync_to_Count_wrap_n_44;
  wire VGA_Sync_to_Count_wrap_n_45;
  wire VGA_Sync_to_Count_wrap_n_46;
  wire VGA_Sync_to_Count_wrap_n_48;
  wire VGA_Sync_to_Count_wrap_n_49;
  wire VGA_Sync_to_Count_wrap_n_5;
  wire VGA_Sync_to_Count_wrap_n_50;
  wire VGA_Sync_to_Count_wrap_n_51;
  wire VGA_Sync_to_Count_wrap_n_52;
  wire VGA_Sync_to_Count_wrap_n_53;
  wire VGA_Sync_to_Count_wrap_n_54;
  wire VGA_Sync_to_Count_wrap_n_55;
  wire VGA_Sync_to_Count_wrap_n_56;
  wire VGA_Sync_to_Count_wrap_n_57;
  wire VGA_Sync_to_Count_wrap_n_58;
  wire VGA_Sync_to_Count_wrap_n_60;
  wire VGA_Sync_to_Count_wrap_n_61;
  wire VGA_Sync_to_Count_wrap_n_62;
  wire VGA_Sync_to_Count_wrap_n_63;
  wire VGA_Sync_to_Count_wrap_n_64;
  wire VGA_Sync_to_Count_wrap_n_65;
  wire VGA_Sync_to_Count_wrap_n_66;
  wire VGA_Sync_to_Count_wrap_n_67;
  wire VGA_Sync_to_Count_wrap_n_68;
  wire VGA_Sync_to_Count_wrap_n_69;
  wire VGA_Sync_to_Count_wrap_n_70;
  wire VGA_Sync_to_Count_wrap_n_71;
  wire VGA_Sync_to_Count_wrap_n_72;
  wire VGA_Sync_to_Count_wrap_n_73;
  wire ball_wrap_n_11;
  wire ball_wrap_n_12;
  wire ball_wrap_n_13;
  wire ball_wrap_n_14;
  wire ball_wrap_n_15;
  wire ball_wrap_n_16;
  wire ball_wrap_n_17;
  wire ball_wrap_n_18;
  wire ball_wrap_n_19;
  wire ball_wrap_n_20;
  wire ball_wrap_n_21;
  wire ball_wrap_n_22;
  wire ball_wrap_n_23;
  wire ball_wrap_n_24;
  wire ball_wrap_n_25;
  wire ball_wrap_n_26;
  wire ball_wrap_n_27;
  wire ball_wrap_n_3;
  wire ball_wrap_n_4;
  wire [4:3]ball_x;
  wire [5:5]ball_x__0;
  wire [4:0]ball_y;
  wire [5:1]ball_y__0;
  wire change_mode_debounced;
  wire change_mode_pressed;
  wire clock_25Mhz_BUFG;
  wire [1:0]counter;
  wire draw_ball_reg;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire init;
  wire \mode[0]_i_1_n_0 ;
  wire \mode[1]_i_1_n_0 ;
  wire \mode_reg_n_0_[0] ;
  wire \mode_reg_n_0_[1] ;
  wire p1_down_debounced;
  wire p1_paddle_n_10;
  wire p1_paddle_n_11;
  wire p1_paddle_n_12;
  wire p1_paddle_n_13;
  wire p1_paddle_n_14;
  wire p1_paddle_n_15;
  wire p1_paddle_n_16;
  wire p1_paddle_n_17;
  wire p1_paddle_n_18;
  wire p1_paddle_n_19;
  wire p1_paddle_n_7;
  wire p1_paddle_n_8;
  wire p1_paddle_n_9;
  wire [5:0]p1_paddle_y;
  wire [0:0]p1_score;
  wire p1_score_point;
  wire p1_score_point_i_1_n_0;
  wire p1_score_point_reg_n_0;
  wire [2:0]\p1_score_reg[3]_0 ;
  wire p1_up_debounced;
  wire p2_down_debounced;
  wire p2_paddle_n_10;
  wire p2_paddle_n_11;
  wire p2_paddle_n_12;
  wire p2_paddle_n_13;
  wire p2_paddle_n_14;
  wire p2_paddle_n_15;
  wire p2_paddle_n_17;
  wire p2_paddle_n_18;
  wire p2_paddle_n_19;
  wire p2_paddle_n_20;
  wire p2_paddle_n_21;
  wire p2_paddle_n_22;
  wire p2_paddle_n_6;
  wire p2_paddle_n_7;
  wire p2_paddle_n_8;
  wire p2_paddle_n_9;
  wire [5:0]p2_paddle_y;
  wire [0:0]p2_score;
  wire [2:0]\p2_score_reg[3]_0 ;
  wire p2_up_debounced;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire \p_1_out_inferred__0/i___0_carry__0_n_1 ;
  wire \p_1_out_inferred__0/i___0_carry__0_n_2 ;
  wire \p_1_out_inferred__0/i___0_carry__0_n_3 ;
  wire \p_1_out_inferred__0/i___0_carry_n_0 ;
  wire \p_1_out_inferred__0/i___0_carry_n_1 ;
  wire \p_1_out_inferred__0/i___0_carry_n_2 ;
  wire \p_1_out_inferred__0/i___0_carry_n_3 ;
  wire \p_1_out_inferred__1/i___0_carry__0_n_1 ;
  wire \p_1_out_inferred__1/i___0_carry__0_n_2 ;
  wire \p_1_out_inferred__1/i___0_carry__0_n_3 ;
  wire \p_1_out_inferred__1/i___0_carry_n_0 ;
  wire \p_1_out_inferred__1/i___0_carry_n_1 ;
  wire \p_1_out_inferred__1/i___0_carry_n_2 ;
  wire \p_1_out_inferred__1/i___0_carry_n_3 ;
  wire paddle_enable;
  wire paddle_enable_0;
  wire running;
  wire score_limit;
  wire \score_limit[1]_i_1_n_0 ;
  wire \score_limit[2]_i_1_n_0 ;
  wire \score_limit_reg_n_0_[1] ;
  wire \score_limit_reg_n_0_[2] ;
  wire [1:0]small_column_count;
  wire [5:2]small_column_count__0;
  wire [5:0]small_row_count;
  wire \ssd[7] ;
  wire [6:0]ssd_OBUF;
  wire \ssd_OBUF[5]_inst_i_1_0 ;
  wire \ssd_OBUF[5]_inst_i_1_1 ;
  wire \ssd_OBUF[7]_inst_i_2_n_0 ;
  wire \ssd_OBUF[7]_inst_i_3_n_0 ;
  wire \ssd_OBUF[7]_inst_i_4_n_0 ;
  wire \ssd_OBUF[7]_inst_i_6_n_0 ;
  wire \ssd_OBUF[7]_inst_i_7_n_0 ;
  wire \ssd_OBUF[7]_inst_i_9_n_0 ;
  wire start_debounced;
  wire start_pressed;
  wire state1;
  wire state10_out;
  wire \state1_inferred__0/i__carry__0_n_0 ;
  wire \state1_inferred__0/i__carry__0_n_1 ;
  wire \state1_inferred__0/i__carry__0_n_2 ;
  wire \state1_inferred__0/i__carry__0_n_3 ;
  wire \state1_inferred__0/i__carry__1_n_2 ;
  wire \state1_inferred__0/i__carry__1_n_3 ;
  wire \state1_inferred__0/i__carry_n_0 ;
  wire \state1_inferred__0/i__carry_n_1 ;
  wire \state1_inferred__0/i__carry_n_2 ;
  wire \state1_inferred__0/i__carry_n_3 ;
  wire \state1_inferred__1/i__carry__0_n_0 ;
  wire \state1_inferred__1/i__carry__0_n_1 ;
  wire \state1_inferred__1/i__carry__0_n_2 ;
  wire \state1_inferred__1/i__carry__0_n_3 ;
  wire \state1_inferred__1/i__carry__1_n_2 ;
  wire \state1_inferred__1/i__carry__1_n_3 ;
  wire \state1_inferred__1/i__carry_n_0 ;
  wire \state1_inferred__1/i__carry_n_1 ;
  wire \state1_inferred__1/i__carry_n_2 ;
  wire \state1_inferred__1/i__carry_n_3 ;
  wire \temp_Blue[3]_i_5_n_0 ;
  wire \temp_Blue[3]_i_6_n_0 ;
  wire \temp_Blue[3]_i_7_n_0 ;
  wire \temp_Red[3]_i_3_n_0 ;
  wire \temp_Red[3]_i_8_n_0 ;
  wire [3:0]\NLW_p_1_out_inferred__0/i___0_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_p_1_out_inferred__0/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__0/i___0_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__1/i___0_carry_O_UNCONNECTED ;
  wire [3:3]\NLW_p_1_out_inferred__1/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_p_1_out_inferred__1/i___0_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_state1_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_state1_inferred__1/i__carry__1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(start_debounced),
        .I2(start_pressed),
        .I3(init),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(init),
        .I1(start_debounced),
        .I2(start_pressed),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h2E22)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(start_debounced),
        .I2(start_pressed),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F888F8FFFF88F8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(start_debounced),
        .I2(p1_score_point),
        .I3(state10_out),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(state1),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg[6]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(p1_score_point),
        .I3(state10_out),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(state1),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p1_score_point),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(init),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(running),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(p2_paddle_n_15),
        .Q(p1_score_point),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(p2_paddle_n_14),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "MODE:0000010,IDLE:0000100,P2_SCORE:0100000,P1_SCORE:0010000,RUNNING:0001000,OVER:1000000,INIT:0000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(p2_paddle_n_13),
        .D(\FSM_onehot_state[6]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  VGA_Sync_to_Count_5 VGA_Sync_to_Count_wrap
       (.CO(\Draw_Game_wrap/draw_paddle_p11 ),
        .D({VGA_Sync_to_Count_wrap_n_13,VGA_Sync_to_Count_wrap_n_14,VGA_Sync_to_Count_wrap_n_15,VGA_Sync_to_Count_wrap_n_16}),
        .DI(VGA_Sync_to_Count_wrap_n_60),
        .Q({small_column_count__0[5:4],small_column_count__0[2],small_column_count}),
        .S(VGA_Sync_to_Count_wrap_n_61),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .\column_count_reg[4]_0 (VGA_Sync_to_Count_wrap_n_64),
        .\column_count_reg[6]_0 (VGA_Sync_to_Count_wrap_n_22),
        .\column_count_reg[6]_1 (VGA_Sync_to_Count_wrap_n_58),
        .\column_count_reg[6]_2 (VGA_Sync_to_Count_wrap_n_65),
        .\column_count_reg[6]_3 (VGA_Sync_to_Count_wrap_n_73),
        .\column_count_reg[7]_0 ({VGA_Sync_to_Count_wrap_n_17,VGA_Sync_to_Count_wrap_n_18,VGA_Sync_to_Count_wrap_n_19}),
        .\column_count_reg[7]_1 ({VGA_Sync_to_Count_wrap_n_23,VGA_Sync_to_Count_wrap_n_24,VGA_Sync_to_Count_wrap_n_25,VGA_Sync_to_Count_wrap_n_26}),
        .\column_count_reg[8]_0 ({VGA_Sync_to_Count_wrap_n_43,VGA_Sync_to_Count_wrap_n_44,VGA_Sync_to_Count_wrap_n_45,VGA_Sync_to_Count_wrap_n_46}),
        .\column_count_reg[9]_0 ({VGA_Sync_to_Count_wrap_n_37,VGA_Sync_to_Count_wrap_n_38,VGA_Sync_to_Count_wrap_n_39,VGA_Sync_to_Count_wrap_n_40,VGA_Sync_to_Count_wrap_n_41}),
        .\column_count_reg[9]_1 ({VGA_Sync_to_Count_wrap_n_48,VGA_Sync_to_Count_wrap_n_49,VGA_Sync_to_Count_wrap_n_50,VGA_Sync_to_Count_wrap_n_51}),
        .\column_count_reg[9]_2 (VGA_Sync_to_Count_wrap_n_63),
        .\counter_reg[0] (VGA_Sync_to_Count_wrap_n_66),
        .\counter_reg[0]_0 (VGA_Sync_to_Count_wrap_n_67),
        .\counter_reg[0]_1 (VGA_Sync_to_Count_wrap_n_68),
        .draw_ball0(\Draw_Game_wrap/draw_ball0 ),
        .draw_ball_reg(ball_wrap_n_11),
        .draw_ball_reg_0({ball_x__0,ball_x}),
        .draw_ball_reg_1({ball_y__0[5],ball_y[4],ball_y__0[3:1],ball_y[0]}),
        .draw_change(\Draw_Start_wrap/draw_change ),
        .draw_g_reg(counter),
        .draw_paddle_p11_carry(p1_paddle_y[1:0]),
        .draw_paddle_p21_carry(p2_paddle_y[1:0]),
        .draw_paddle_p2_reg(\Draw_Game_wrap/draw_paddle_p21 ),
        .fixed_column_count1(\Draw_Over_wrap/fixed_column_count1 ),
        .fixed_column_count14_out(\Draw_Over_wrap/Score_Display_P1/fixed_column_count14_out ),
        .fixed_column_count14_out_0(\Draw_Over_wrap/Score_Display_P2/fixed_column_count14_out ),
        .fixed_column_count14_out_1(\Draw_Mode_wrap/Score_Display_Limit/fixed_column_count14_out ),
        .\row_count_reg[4]_0 (VGA_Sync_to_Count_wrap_n_62),
        .\row_count_reg[5]_0 (VGA_Sync_to_Count_wrap_n_52),
        .\row_count_reg[7]_0 (VGA_Sync_to_Count_wrap_n_5),
        .\row_count_reg[8]_0 ({VGA_Sync_to_Count_wrap_n_28,VGA_Sync_to_Count_wrap_n_29,VGA_Sync_to_Count_wrap_n_30,VGA_Sync_to_Count_wrap_n_31,VGA_Sync_to_Count_wrap_n_32}),
        .\row_count_reg[8]_1 ({VGA_Sync_to_Count_wrap_n_33,VGA_Sync_to_Count_wrap_n_34,VGA_Sync_to_Count_wrap_n_35,VGA_Sync_to_Count_wrap_n_36}),
        .\row_count_reg[8]_2 ({VGA_Sync_to_Count_wrap_n_53,VGA_Sync_to_Count_wrap_n_54,VGA_Sync_to_Count_wrap_n_55,VGA_Sync_to_Count_wrap_n_56,VGA_Sync_to_Count_wrap_n_57}),
        .\row_count_reg[8]_3 ({VGA_Sync_to_Count_wrap_n_69,VGA_Sync_to_Count_wrap_n_70,VGA_Sync_to_Count_wrap_n_71,VGA_Sync_to_Count_wrap_n_72}),
        .\row_count_reg[9]_0 (VGA_Sync_to_Count_wrap_n_12),
        .\row_count_reg[9]_1 (VGA_Sync_to_Count_wrap_n_21),
        .small_row_count(small_row_count));
  Pong_Ball_Control ball_wrap
       (.DI({ball_wrap_n_12,ball_wrap_n_13,ball_wrap_n_14}),
        .Q(running),
        .S({ball_wrap_n_15,ball_wrap_n_16,ball_wrap_n_17}),
        .\ball_x_reg[0]_0 (ball_wrap_n_11),
        .\ball_x_reg[4]_0 (ball_wrap_n_3),
        .\ball_x_reg[5]_0 ({ball_x__0,ball_x}),
        .\ball_x_reg[5]_1 (ball_wrap_n_4),
        .\ball_y_reg[2]_0 ({ball_wrap_n_24,ball_wrap_n_25}),
        .\ball_y_reg[2]_1 ({ball_wrap_n_26,ball_wrap_n_27}),
        .\ball_y_reg[3]_0 ({ball_wrap_n_18,ball_wrap_n_19,ball_wrap_n_20}),
        .\ball_y_reg[5]_0 ({ball_y__0[5],ball_y[4],ball_y__0[3:1],ball_y[0]}),
        .\ball_y_reg[5]_1 ({ball_wrap_n_21,ball_wrap_n_22,ball_wrap_n_23}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_ball_reg({small_column_count__0[2],small_column_count}),
        .\p_1_out_inferred__0/i___0_carry__0 (p2_paddle_y),
        .\p_1_out_inferred__1/i___0_carry__0 (p1_paddle_y),
        .\previous_ball_y_reg[4]_0 (p1_score_point_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    change_mode_pressed_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(change_mode_debounced),
        .Q(change_mode_pressed),
        .R(1'b0));
  Draw draw_wrap
       (.CO(\Draw_Game_wrap/draw_paddle_p11 ),
        .D({VGA_Sync_to_Count_wrap_n_69,VGA_Sync_to_Count_wrap_n_70,VGA_Sync_to_Count_wrap_n_71,VGA_Sync_to_Count_wrap_n_72}),
        .DI({p1_paddle_n_7,p1_paddle_n_8,p1_paddle_n_9,VGA_Sync_to_Count_wrap_n_60}),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state_reg[2]_0 ),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state_reg[2]_1 ),
        .\FSM_onehot_state_reg[2]_1 (\FSM_onehot_state_reg[2]_2 ),
        .\FSM_onehot_state_reg[2]_2 (\FSM_onehot_state_reg[2]_3 ),
        .\FSM_onehot_state_reg[5] (\FSM_onehot_state_reg[5]_0 ),
        .Q({small_column_count__0[5:4],small_column_count}),
        .S({p1_paddle_n_10,p1_paddle_n_11,p1_paddle_n_12,VGA_Sync_to_Count_wrap_n_61}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .\counter_reg[1] (counter),
        .display_reg(VGA_Sync_to_Count_wrap_n_52),
        .display_reg_0(VGA_Sync_to_Count_wrap_n_73),
        .display_reg_1(VGA_Sync_to_Count_wrap_n_64),
        .display_reg_2(VGA_Sync_to_Count_wrap_n_65),
        .draw_b_reg(VGA_Sync_to_Count_wrap_n_68),
        .draw_ball0(\Draw_Game_wrap/draw_ball0 ),
        .draw_ball_reg(draw_ball_reg),
        .draw_change(\Draw_Start_wrap/draw_change ),
        .draw_g_reg(VGA_Sync_to_Count_wrap_n_66),
        .draw_paddle_p10(\Draw_Game_wrap/draw_paddle_p10 ),
        .draw_paddle_p20(\Draw_Game_wrap/draw_paddle_p20 ),
        .draw_paddle_p2_i_3({p2_paddle_n_6,p2_paddle_n_7,p2_paddle_n_8,VGA_Sync_to_Count_wrap_n_62}),
        .draw_paddle_p2_i_3_0({p2_paddle_n_9,p2_paddle_n_10,p2_paddle_n_11,p2_paddle_n_12}),
        .draw_r_reg(VGA_Sync_to_Count_wrap_n_67),
        .draw_s_reg(VGA_Sync_to_Count_wrap_n_22),
        .draw_s_reg_0(\score_limit_reg_n_0_[1] ),
        .draw_s_reg_1(\score_limit_reg_n_0_[2] ),
        .draw_s_reg_2({\p1_score_reg[3]_0 ,p1_score}),
        .draw_s_reg_3({\p2_score_reg[3]_0 ,p2_score}),
        .draw_t_reg(VGA_Sync_to_Count_wrap_n_5),
        .draw_t_reg_0(VGA_Sync_to_Count_wrap_n_12),
        .draw_t_reg_1(VGA_Sync_to_Count_wrap_n_21),
        .fixed_column_count1(\Draw_Over_wrap/fixed_column_count1 ),
        .fixed_column_count14_out(\Draw_Mode_wrap/Score_Display_Limit/fixed_column_count14_out ),
        .fixed_column_count14_out_0(\Draw_Over_wrap/Score_Display_P1/fixed_column_count14_out ),
        .fixed_column_count14_out_1(\Draw_Over_wrap/Score_Display_P2/fixed_column_count14_out ),
        .\fixed_column_count_reg[3] ({VGA_Sync_to_Count_wrap_n_17,VGA_Sync_to_Count_wrap_n_18,VGA_Sync_to_Count_wrap_n_19}),
        .\fixed_column_count_reg[3]_0 ({VGA_Sync_to_Count_wrap_n_23,VGA_Sync_to_Count_wrap_n_24,VGA_Sync_to_Count_wrap_n_25,VGA_Sync_to_Count_wrap_n_26}),
        .\fixed_column_count_reg[4] ({VGA_Sync_to_Count_wrap_n_43,VGA_Sync_to_Count_wrap_n_44,VGA_Sync_to_Count_wrap_n_45,VGA_Sync_to_Count_wrap_n_46}),
        .\fixed_column_count_reg[5] ({VGA_Sync_to_Count_wrap_n_37,VGA_Sync_to_Count_wrap_n_38,VGA_Sync_to_Count_wrap_n_39,VGA_Sync_to_Count_wrap_n_40,VGA_Sync_to_Count_wrap_n_41}),
        .\fixed_column_count_reg[5]_0 ({VGA_Sync_to_Count_wrap_n_48,VGA_Sync_to_Count_wrap_n_49,VGA_Sync_to_Count_wrap_n_50,VGA_Sync_to_Count_wrap_n_51}),
        .\fixed_row_count_reg[4] ({VGA_Sync_to_Count_wrap_n_13,VGA_Sync_to_Count_wrap_n_14,VGA_Sync_to_Count_wrap_n_15,VGA_Sync_to_Count_wrap_n_16}),
        .\fixed_row_count_reg[4]_0 ({VGA_Sync_to_Count_wrap_n_33,VGA_Sync_to_Count_wrap_n_34,VGA_Sync_to_Count_wrap_n_35,VGA_Sync_to_Count_wrap_n_36}),
        .\fixed_row_count_reg[4]_1 ({VGA_Sync_to_Count_wrap_n_53,VGA_Sync_to_Count_wrap_n_54,VGA_Sync_to_Count_wrap_n_55,VGA_Sync_to_Count_wrap_n_56,VGA_Sync_to_Count_wrap_n_57}),
        .\fixed_row_count_reg[4]_2 ({VGA_Sync_to_Count_wrap_n_28,VGA_Sync_to_Count_wrap_n_29,VGA_Sync_to_Count_wrap_n_30,VGA_Sync_to_Count_wrap_n_31,VGA_Sync_to_Count_wrap_n_32}),
        .\paddle_y_reg[4] (\Draw_Game_wrap/draw_paddle_p21 ),
        .small_row_count(small_row_count[5]),
        .\temp_Blue_reg[3] (\temp_Blue[3]_i_6_n_0 ),
        .\temp_Blue_reg[3]_0 (\temp_Blue[3]_i_5_n_0 ),
        .\temp_Red_reg[3] (\temp_Red[3]_i_3_n_0 ),
        .\temp_Red_reg[3]_0 ({\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,p1_score_point,running,\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] }),
        .\temp_Red_reg[3]_1 (\temp_Red[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_1__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_2__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__1_i_3__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry_i_3
       (.I0(\p2_score_reg[3]_0 [2]),
        .I1(\score_limit_reg_n_0_[2] ),
        .I2(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry_i_3__0
       (.I0(\p1_score_reg[3]_0 [2]),
        .I1(\score_limit_reg_n_0_[2] ),
        .I2(\score_limit_reg_n_0_[1] ),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h00822400)) 
    i__carry_i_4
       (.I0(\p2_score_reg[3]_0 [1]),
        .I1(\score_limit_reg_n_0_[1] ),
        .I2(\p2_score_reg[3]_0 [0]),
        .I3(p2_score),
        .I4(\score_limit_reg_n_0_[2] ),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h01088040)) 
    i__carry_i_4__0
       (.I0(\p1_score_reg[3]_0 [0]),
        .I1(\p1_score_reg[3]_0 [1]),
        .I2(\score_limit_reg_n_0_[2] ),
        .I3(\score_limit_reg_n_0_[1] ),
        .I4(p1_score),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h4444444444344444)) 
    \mode[0]_i_1 
       (.I0(init),
        .I1(\mode_reg_n_0_[0] ),
        .I2(change_mode_debounced),
        .I3(change_mode_pressed),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\mode_reg_n_0_[1] ),
        .O(\mode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5545555500C00000)) 
    \mode[1]_i_1 
       (.I0(init),
        .I1(\mode_reg_n_0_[0] ),
        .I2(change_mode_debounced),
        .I3(change_mode_pressed),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\mode_reg_n_0_[1] ),
        .O(\mode[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\mode[0]_i_1_n_0 ),
        .Q(\mode_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\mode[1]_i_1_n_0 ),
        .Q(\mode_reg_n_0_[1] ),
        .R(1'b0));
  Pong_Paddle_Control p1_paddle
       (.CO(\p_1_out_inferred__1/i___0_carry__0_n_1 ),
        .DI({p1_paddle_n_7,p1_paddle_n_8,p1_paddle_n_9}),
        .\FSM_onehot_state_reg[0] ({running,init}),
        .\FSM_onehot_state_reg[0]_0 ({ball_y__0[5],ball_y[4],ball_y__0[3:1],ball_y[0]}),
        .\FSM_onehot_state_reg[0]_1 (ball_wrap_n_4),
        .Q(p1_paddle_y),
        .S({p1_paddle_n_10,p1_paddle_n_11,p1_paddle_n_12}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_paddle_p10(\Draw_Game_wrap/draw_paddle_p10 ),
        .draw_paddle_p1_reg(VGA_Sync_to_Count_wrap_n_58),
        .p1_down_debounced(p1_down_debounced),
        .p1_up_debounced(p1_up_debounced),
        .paddle_enable(paddle_enable),
        .\paddle_y_reg[2]_0 (p1_paddle_n_14),
        .\paddle_y_reg[2]_1 ({p1_paddle_n_18,p1_paddle_n_19}),
        .\paddle_y_reg[5]_0 (p1_paddle_n_13),
        .\paddle_y_reg[5]_1 ({p1_paddle_n_15,p1_paddle_n_16,p1_paddle_n_17}),
        .small_row_count(small_row_count));
  LUT1 #(
    .INIT(2'h1)) 
    \p1_score[0]_i_1 
       (.I0(p1_score),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p1_score[1]_i_1 
       (.I0(p1_score),
        .I1(\p1_score_reg[3]_0 [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p1_score[2]_i_1 
       (.I0(\p1_score_reg[3]_0 [1]),
        .I1(\p1_score_reg[3]_0 [0]),
        .I2(p1_score),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p1_score[3]_i_1 
       (.I0(\p1_score_reg[3]_0 [2]),
        .I1(\p1_score_reg[3]_0 [1]),
        .I2(p1_score),
        .I3(\p1_score_reg[3]_0 [0]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'hDC)) 
    p1_score_point_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p1_score_point),
        .I2(p1_score_point_reg_n_0),
        .O(p1_score_point_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    p1_score_point_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(p1_score_point_i_1_n_0),
        .Q(p1_score_point_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p1_score_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(p1_score_point),
        .D(p_0_in__0[0]),
        .Q(p1_score),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p1_score_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(p1_score_point),
        .D(p_0_in__0[1]),
        .Q(\p1_score_reg[3]_0 [0]),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p1_score_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(p1_score_point),
        .D(p_0_in__0[2]),
        .Q(\p1_score_reg[3]_0 [1]),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p1_score_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(p1_score_point),
        .D(p_0_in__0[3]),
        .Q(\p1_score_reg[3]_0 [2]),
        .R(init));
  Pong_Paddle_Control_6 p2_paddle
       (.CO(\p_1_out_inferred__0/i___0_carry__0_n_1 ),
        .D({p2_paddle_n_14,p2_paddle_n_15}),
        .DI(p2_paddle_n_17),
        .E(p2_paddle_n_13),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[6]_i_3_n_0 ),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[6]_i_4_n_0 ),
        .\FSM_onehot_state_reg[0]_1 (p1_paddle_n_13),
        .\FSM_onehot_state_reg[5] ({running,\FSM_onehot_state_reg_n_0_[1] ,init}),
        .\FSM_onehot_state_reg[5]_0 ({ball_y__0[5],ball_y[4],ball_y__0[3:1],ball_y[0]}),
        .\FSM_onehot_state_reg[5]_1 (ball_wrap_n_3),
        .Q(p2_paddle_y),
        .S({p2_paddle_n_21,p2_paddle_n_22}),
        .clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .draw_paddle_p20(\Draw_Game_wrap/draw_paddle_p20 ),
        .draw_paddle_p2_reg(VGA_Sync_to_Count_wrap_n_63),
        .p2_down_debounced(p2_down_debounced),
        .p2_up_debounced(p2_up_debounced),
        .paddle_enable_0(paddle_enable_0),
        .\paddle_y_reg[4]_0 ({p2_paddle_n_6,p2_paddle_n_7,p2_paddle_n_8}),
        .\paddle_y_reg[5]_0 ({p2_paddle_n_9,p2_paddle_n_10,p2_paddle_n_11,p2_paddle_n_12}),
        .\paddle_y_reg[5]_1 ({p2_paddle_n_18,p2_paddle_n_19,p2_paddle_n_20}),
        .small_row_count(small_row_count));
  LUT1 #(
    .INIT(2'h1)) 
    \p2_score[0]_i_1 
       (.I0(p2_score),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p2_score[1]_i_1 
       (.I0(\p2_score_reg[3]_0 [0]),
        .I1(p2_score),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \p2_score[2]_i_1 
       (.I0(\p2_score_reg[3]_0 [1]),
        .I1(p2_score),
        .I2(\p2_score_reg[3]_0 [0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \p2_score[3]_i_1 
       (.I0(\p2_score_reg[3]_0 [2]),
        .I1(\p2_score_reg[3]_0 [1]),
        .I2(\p2_score_reg[3]_0 [0]),
        .I3(p2_score),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \p2_score_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .D(p_0_in__1[0]),
        .Q(p2_score),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p2_score_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .D(p_0_in__1[1]),
        .Q(\p2_score_reg[3]_0 [0]),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p2_score_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .D(p_0_in__1[2]),
        .Q(\p2_score_reg[3]_0 [1]),
        .R(init));
  FDRE #(
    .INIT(1'b0)) 
    \p2_score_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[5] ),
        .D(p_0_in__1[3]),
        .Q(\p2_score_reg[3]_0 [2]),
        .R(init));
  CARRY4 \p_1_out_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\p_1_out_inferred__0/i___0_carry_n_0 ,\p_1_out_inferred__0/i___0_carry_n_1 ,\p_1_out_inferred__0/i___0_carry_n_2 ,\p_1_out_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({ball_wrap_n_12,p2_paddle_n_17,ball_wrap_n_13,ball_wrap_n_14}),
        .O(\NLW_p_1_out_inferred__0/i___0_carry_O_UNCONNECTED [3:0]),
        .S({p2_paddle_n_21,ball_wrap_n_24,ball_wrap_n_25,p2_paddle_n_22}));
  CARRY4 \p_1_out_inferred__0/i___0_carry__0 
       (.CI(\p_1_out_inferred__0/i___0_carry_n_0 ),
        .CO({\NLW_p_1_out_inferred__0/i___0_carry__0_CO_UNCONNECTED [3],\p_1_out_inferred__0/i___0_carry__0_n_1 ,\p_1_out_inferred__0/i___0_carry__0_n_2 ,\p_1_out_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p2_paddle_n_18,p2_paddle_n_19,p2_paddle_n_20}),
        .O(\NLW_p_1_out_inferred__0/i___0_carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,ball_wrap_n_15,ball_wrap_n_16,ball_wrap_n_17}));
  CARRY4 \p_1_out_inferred__1/i___0_carry 
       (.CI(1'b0),
        .CO({\p_1_out_inferred__1/i___0_carry_n_0 ,\p_1_out_inferred__1/i___0_carry_n_1 ,\p_1_out_inferred__1/i___0_carry_n_2 ,\p_1_out_inferred__1/i___0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({ball_wrap_n_18,p1_paddle_n_14,ball_wrap_n_19,ball_wrap_n_20}),
        .O(\NLW_p_1_out_inferred__1/i___0_carry_O_UNCONNECTED [3:0]),
        .S({p1_paddle_n_18,ball_wrap_n_26,ball_wrap_n_27,p1_paddle_n_19}));
  CARRY4 \p_1_out_inferred__1/i___0_carry__0 
       (.CI(\p_1_out_inferred__1/i___0_carry_n_0 ),
        .CO({\NLW_p_1_out_inferred__1/i___0_carry__0_CO_UNCONNECTED [3],\p_1_out_inferred__1/i___0_carry__0_n_1 ,\p_1_out_inferred__1/i___0_carry__0_n_2 ,\p_1_out_inferred__1/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p1_paddle_n_15,p1_paddle_n_16,p1_paddle_n_17}),
        .O(\NLW_p_1_out_inferred__1/i___0_carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,ball_wrap_n_21,ball_wrap_n_22,ball_wrap_n_23}));
  LUT4 #(
    .INIT(16'h002E)) 
    \score_limit[1]_i_1 
       (.I0(\score_limit_reg_n_0_[1] ),
        .I1(score_limit),
        .I2(\mode_reg_n_0_[1] ),
        .I3(init),
        .O(\score_limit[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEE2)) 
    \score_limit[2]_i_1 
       (.I0(\score_limit_reg_n_0_[2] ),
        .I1(score_limit),
        .I2(\mode_reg_n_0_[0] ),
        .I3(\mode_reg_n_0_[1] ),
        .I4(init),
        .O(\score_limit[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000C00)) 
    \score_limit[2]_i_2 
       (.I0(\mode_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(change_mode_pressed),
        .I3(change_mode_debounced),
        .I4(\mode_reg_n_0_[0] ),
        .O(score_limit));
  FDRE #(
    .INIT(1'b0)) 
    \score_limit_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\score_limit[1]_i_1_n_0 ),
        .Q(\score_limit_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \score_limit_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\score_limit[2]_i_1_n_0 ),
        .Q(\score_limit_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hAABAAFBA)) 
    \ssd_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .I3(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .I4(\ssd[7] ),
        .O(ssd_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hAFABABAA)) 
    \ssd_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd[7] ),
        .I3(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .I4(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .O(ssd_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \ssd_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .I3(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .O(ssd_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hAAABBBAE)) 
    \ssd_OBUF[4]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd[7] ),
        .I3(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .I4(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .O(ssd_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \ssd_OBUF[5]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .I3(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .O(ssd_OBUF[4]));
  LUT4 #(
    .INIT(16'hAEAB)) 
    \ssd_OBUF[6]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .I3(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .O(ssd_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hAAAAABAE)) 
    \ssd_OBUF[7]_inst_i_1 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[7]_inst_i_2_n_0 ),
        .I2(\ssd_OBUF[7]_inst_i_3_n_0 ),
        .I3(\ssd_OBUF[7]_inst_i_4_n_0 ),
        .I4(\ssd[7] ),
        .O(ssd_OBUF[6]));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \ssd_OBUF[7]_inst_i_2 
       (.I0(\ssd_OBUF[7]_inst_i_6_n_0 ),
        .I1(p1_score),
        .I2(p2_score),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\ssd_OBUF[7]_inst_i_7_n_0 ),
        .O(\ssd_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01001010)) 
    \ssd_OBUF[7]_inst_i_3 
       (.I0(Q[1]),
        .I1(\ssd_OBUF[5]_inst_i_1_0 ),
        .I2(\p1_score_reg[3]_0 [0]),
        .I3(\p1_score_reg[3]_0 [1]),
        .I4(\p1_score_reg[3]_0 [2]),
        .I5(\ssd_OBUF[7]_inst_i_9_n_0 ),
        .O(\ssd_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFF4F)) 
    \ssd_OBUF[7]_inst_i_4 
       (.I0(\p2_score_reg[3]_0 [0]),
        .I1(\p2_score_reg[3]_0 [2]),
        .I2(\p2_score_reg[3]_0 [1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\ssd_OBUF[5]_inst_i_1_1 ),
        .O(\ssd_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ssd_OBUF[7]_inst_i_6 
       (.I0(\p1_score_reg[3]_0 [2]),
        .I1(\p1_score_reg[3]_0 [1]),
        .I2(\p1_score_reg[3]_0 [0]),
        .O(\ssd_OBUF[7]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ssd_OBUF[7]_inst_i_7 
       (.I0(\p2_score_reg[3]_0 [2]),
        .I1(\p2_score_reg[3]_0 [1]),
        .I2(\p2_score_reg[3]_0 [0]),
        .O(\ssd_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000058)) 
    \ssd_OBUF[7]_inst_i_9 
       (.I0(\p2_score_reg[3]_0 [2]),
        .I1(\p2_score_reg[3]_0 [1]),
        .I2(\p2_score_reg[3]_0 [0]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\ssd_OBUF[7]_inst_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    start_pressed_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(start_debounced),
        .Q(start_pressed),
        .R(1'b0));
  CARRY4 \state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__0/i__carry_n_0 ,\state1_inferred__0/i__carry_n_1 ,\state1_inferred__0/i__carry_n_2 ,\state1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \state1_inferred__0/i__carry__0 
       (.CI(\state1_inferred__0/i__carry_n_0 ),
        .CO({\state1_inferred__0/i__carry__0_n_0 ,\state1_inferred__0/i__carry__0_n_1 ,\state1_inferred__0/i__carry__0_n_2 ,\state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \state1_inferred__0/i__carry__1 
       (.CI(\state1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_state1_inferred__0/i__carry__1_CO_UNCONNECTED [3],state10_out,\state1_inferred__0/i__carry__1_n_2 ,\state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  CARRY4 \state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\state1_inferred__1/i__carry_n_0 ,\state1_inferred__1/i__carry_n_1 ,\state1_inferred__1/i__carry_n_2 ,\state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \state1_inferred__1/i__carry__0 
       (.CI(\state1_inferred__1/i__carry_n_0 ),
        .CO({\state1_inferred__1/i__carry__0_n_0 ,\state1_inferred__1/i__carry__0_n_1 ,\state1_inferred__1/i__carry__0_n_2 ,\state1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \state1_inferred__1/i__carry__1 
       (.CI(\state1_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_state1_inferred__1/i__carry__1_CO_UNCONNECTED [3],state1,\state1_inferred__1/i__carry__1_n_2 ,\state1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_state1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h0000000E)) 
    \temp_Blue[3]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(running),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\temp_Blue[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \temp_Blue[3]_i_6 
       (.I0(\p2_score_reg[3]_0 [2]),
        .I1(\p1_score_reg[3]_0 [2]),
        .I2(\p2_score_reg[3]_0 [1]),
        .I3(\p1_score_reg[3]_0 [1]),
        .I4(\temp_Blue[3]_i_7_n_0 ),
        .O(\temp_Blue[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBF0BFFFFBF0BBF0B)) 
    \temp_Blue[3]_i_7 
       (.I0(p2_score),
        .I1(p1_score),
        .I2(\p1_score_reg[3]_0 [0]),
        .I3(\p2_score_reg[3]_0 [0]),
        .I4(\p1_score_reg[3]_0 [1]),
        .I5(\p2_score_reg[3]_0 [1]),
        .O(\temp_Blue[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \temp_Red[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(p1_score_point),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\temp_Red[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \temp_Red[3]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(running),
        .O(\temp_Red[3]_i_8_n_0 ));
endmodule

module Pong_Paddle_Control
   (draw_paddle_p10,
    Q,
    DI,
    S,
    \paddle_y_reg[5]_0 ,
    \paddle_y_reg[2]_0 ,
    \paddle_y_reg[5]_1 ,
    \paddle_y_reg[2]_1 ,
    small_row_count,
    draw_paddle_p1_reg,
    \FSM_onehot_state_reg[0] ,
    p1_up_debounced,
    CO,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    p1_down_debounced,
    paddle_enable,
    clock_25Mhz_BUFG);
  output draw_paddle_p10;
  output [5:0]Q;
  output [2:0]DI;
  output [2:0]S;
  output \paddle_y_reg[5]_0 ;
  output [0:0]\paddle_y_reg[2]_0 ;
  output [2:0]\paddle_y_reg[5]_1 ;
  output [1:0]\paddle_y_reg[2]_1 ;
  input [5:0]small_row_count;
  input draw_paddle_p1_reg;
  input [1:0]\FSM_onehot_state_reg[0] ;
  input p1_up_debounced;
  input [0:0]CO;
  input [5:0]\FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input p1_down_debounced;
  input paddle_enable;
  input clock_25Mhz_BUFG;

  wire [0:0]CO;
  wire [2:0]DI;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state[6]_i_9_n_0 ;
  wire [1:0]\FSM_onehot_state_reg[0] ;
  wire [5:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [5:0]Q;
  wire [2:0]S;
  wire clock_25Mhz_BUFG;
  wire [31:1]data0;
  wire draw_paddle_p10;
  wire draw_paddle_p11_carry_i_9_n_0;
  wire draw_paddle_p1_i_2_n_0;
  wire draw_paddle_p1_i_4_n_0;
  wire draw_paddle_p1_i_5_n_0;
  wire draw_paddle_p1_reg;
  wire p1_down_debounced;
  wire p1_up_debounced;
  wire [31:0]paddle_count;
  wire \paddle_count[0]_i_1_n_0 ;
  wire \paddle_count[31]_i_10_n_0 ;
  wire \paddle_count[31]_i_11_n_0 ;
  wire \paddle_count[31]_i_12_n_0 ;
  wire \paddle_count[31]_i_1_n_0 ;
  wire \paddle_count[31]_i_4_n_0 ;
  wire \paddle_count[31]_i_5_n_0 ;
  wire \paddle_count[31]_i_6_n_0 ;
  wire \paddle_count[31]_i_7_n_0 ;
  wire \paddle_count[31]_i_8_n_0 ;
  wire \paddle_count[31]_i_9_n_0 ;
  wire \paddle_count_reg[12]_i_1_n_0 ;
  wire \paddle_count_reg[12]_i_1_n_1 ;
  wire \paddle_count_reg[12]_i_1_n_2 ;
  wire \paddle_count_reg[12]_i_1_n_3 ;
  wire \paddle_count_reg[16]_i_1_n_0 ;
  wire \paddle_count_reg[16]_i_1_n_1 ;
  wire \paddle_count_reg[16]_i_1_n_2 ;
  wire \paddle_count_reg[16]_i_1_n_3 ;
  wire \paddle_count_reg[20]_i_1_n_0 ;
  wire \paddle_count_reg[20]_i_1_n_1 ;
  wire \paddle_count_reg[20]_i_1_n_2 ;
  wire \paddle_count_reg[20]_i_1_n_3 ;
  wire \paddle_count_reg[24]_i_1_n_0 ;
  wire \paddle_count_reg[24]_i_1_n_1 ;
  wire \paddle_count_reg[24]_i_1_n_2 ;
  wire \paddle_count_reg[24]_i_1_n_3 ;
  wire \paddle_count_reg[28]_i_1_n_0 ;
  wire \paddle_count_reg[28]_i_1_n_1 ;
  wire \paddle_count_reg[28]_i_1_n_2 ;
  wire \paddle_count_reg[28]_i_1_n_3 ;
  wire \paddle_count_reg[31]_i_3_n_2 ;
  wire \paddle_count_reg[31]_i_3_n_3 ;
  wire \paddle_count_reg[4]_i_1_n_0 ;
  wire \paddle_count_reg[4]_i_1_n_1 ;
  wire \paddle_count_reg[4]_i_1_n_2 ;
  wire \paddle_count_reg[4]_i_1_n_3 ;
  wire \paddle_count_reg[8]_i_1_n_0 ;
  wire \paddle_count_reg[8]_i_1_n_1 ;
  wire \paddle_count_reg[8]_i_1_n_2 ;
  wire \paddle_count_reg[8]_i_1_n_3 ;
  wire paddle_enable;
  wire [5:0]paddle_y;
  wire paddle_y0_carry__0_i_2_n_0;
  wire paddle_y0_carry__0_i_3_n_0;
  wire paddle_y0_carry__0_n_3;
  wire paddle_y0_carry_i_10_n_0;
  wire paddle_y0_carry_i_1_n_0;
  wire paddle_y0_carry_i_2_n_0;
  wire paddle_y0_carry_i_4_n_0;
  wire paddle_y0_carry_i_5_n_0;
  wire paddle_y0_carry_i_6_n_0;
  wire paddle_y0_carry_i_7_n_0;
  wire paddle_y0_carry_i_8_n_0;
  wire paddle_y0_carry_i_9_n_0;
  wire paddle_y0_carry_n_0;
  wire paddle_y0_carry_n_1;
  wire paddle_y0_carry_n_2;
  wire paddle_y0_carry_n_3;
  wire [3:2]paddle_y0_out;
  wire paddle_y1;
  wire [0:0]\paddle_y_reg[2]_0 ;
  wire [1:0]\paddle_y_reg[2]_1 ;
  wire \paddle_y_reg[5]_0 ;
  wire [2:0]\paddle_y_reg[5]_1 ;
  wire [5:0]small_row_count;
  wire [3:2]\NLW_paddle_count_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_paddle_count_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:1]NLW_paddle_y0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_paddle_y0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000075F70000)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(CO),
        .I1(\FSM_onehot_state[6]_i_7_n_0 ),
        .I2(Q[5]),
        .I3(\FSM_onehot_state_reg[0]_0 [5]),
        .I4(\FSM_onehot_state_reg[0] [1]),
        .I5(\FSM_onehot_state_reg[0]_1 ),
        .O(\paddle_y_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(\FSM_onehot_state[6]_i_9_n_0 ),
        .I1(\FSM_onehot_state_reg[0]_0 [3]),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[0]_0 [4]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hDD4D4444DDDDDD4D)) 
    \FSM_onehot_state[6]_i_9 
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0]_0 [2]),
        .I2(Q[0]),
        .I3(\FSM_onehot_state_reg[0]_0 [0]),
        .I4(\FSM_onehot_state_reg[0]_0 [1]),
        .I5(Q[1]),
        .O(\FSM_onehot_state[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h88800000)) 
    draw_paddle_p11_carry_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h15403D54)) 
    draw_paddle_p11_carry_i_2
       (.I0(small_row_count[5]),
        .I1(draw_paddle_p11_carry_i_9_n_0),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(small_row_count[4]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h1114711D)) 
    draw_paddle_p11_carry_i_3
       (.I0(small_row_count[3]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(small_row_count[2]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    draw_paddle_p11_carry_i_5
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h09906009)) 
    draw_paddle_p11_carry_i_6
       (.I0(Q[5]),
        .I1(small_row_count[5]),
        .I2(Q[4]),
        .I3(draw_paddle_p11_carry_i_9_n_0),
        .I4(small_row_count[4]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h60090660)) 
    draw_paddle_p11_carry_i_7
       (.I0(Q[3]),
        .I1(small_row_count[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(small_row_count[2]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    draw_paddle_p11_carry_i_9
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(draw_paddle_p11_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000B2B230B2)) 
    draw_paddle_p1_i_1
       (.I0(draw_paddle_p1_i_2_n_0),
        .I1(Q[5]),
        .I2(small_row_count[5]),
        .I3(Q[4]),
        .I4(small_row_count[4]),
        .I5(draw_paddle_p1_reg),
        .O(draw_paddle_p10));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    draw_paddle_p1_i_2
       (.I0(small_row_count[2]),
        .I1(Q[2]),
        .I2(small_row_count[3]),
        .I3(Q[3]),
        .I4(draw_paddle_p1_i_4_n_0),
        .I5(draw_paddle_p1_i_5_n_0),
        .O(draw_paddle_p1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF4F4444FFFFFF4F)) 
    draw_paddle_p1_i_4
       (.I0(Q[2]),
        .I1(small_row_count[2]),
        .I2(Q[0]),
        .I3(small_row_count[0]),
        .I4(small_row_count[1]),
        .I5(Q[1]),
        .O(draw_paddle_p1_i_4_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    draw_paddle_p1_i_5
       (.I0(Q[4]),
        .I1(small_row_count[4]),
        .I2(Q[3]),
        .I3(small_row_count[3]),
        .O(draw_paddle_p1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_1__0
       (.I0(Q[5]),
        .I1(\FSM_onehot_state_reg[0]_0 [5]),
        .O(\paddle_y_reg[5]_1 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_2
       (.I0(Q[4]),
        .I1(\FSM_onehot_state_reg[0]_0 [4]),
        .O(\paddle_y_reg[5]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_3
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[0]_0 [3]),
        .O(\paddle_y_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_2__0
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0]_0 [2]),
        .O(\paddle_y_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    i___0_carry_i_5__0
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0]_0 [2]),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[0]_0 [3]),
        .O(\paddle_y_reg[2]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_8
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[0]_0 [0]),
        .O(\paddle_y_reg[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \paddle_count[0]_i_1 
       (.I0(paddle_count[0]),
        .O(\paddle_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \paddle_count[31]_i_1 
       (.I0(\paddle_count[31]_i_4_n_0 ),
        .I1(p1_down_debounced),
        .I2(p1_up_debounced),
        .O(\paddle_count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \paddle_count[31]_i_10 
       (.I0(paddle_count[21]),
        .I1(paddle_count[25]),
        .I2(paddle_count[15]),
        .I3(paddle_count[2]),
        .O(\paddle_count[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \paddle_count[31]_i_11 
       (.I0(paddle_count[30]),
        .I1(paddle_count[11]),
        .I2(paddle_count[20]),
        .I3(paddle_count[29]),
        .O(\paddle_count[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \paddle_count[31]_i_12 
       (.I0(paddle_count[16]),
        .I1(paddle_count[7]),
        .I2(paddle_count[28]),
        .I3(paddle_count[13]),
        .O(\paddle_count[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \paddle_count[31]_i_4 
       (.I0(\paddle_count[31]_i_5_n_0 ),
        .I1(\paddle_count[31]_i_6_n_0 ),
        .I2(\paddle_count[31]_i_7_n_0 ),
        .I3(\paddle_count[31]_i_8_n_0 ),
        .O(\paddle_count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \paddle_count[31]_i_5 
       (.I0(paddle_count[3]),
        .I1(paddle_count[12]),
        .I2(paddle_count[10]),
        .I3(paddle_count[19]),
        .I4(\paddle_count[31]_i_9_n_0 ),
        .O(\paddle_count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \paddle_count[31]_i_6 
       (.I0(paddle_count[1]),
        .I1(paddle_count[14]),
        .I2(paddle_count[4]),
        .I3(paddle_count[5]),
        .I4(\paddle_count[31]_i_10_n_0 ),
        .O(\paddle_count[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \paddle_count[31]_i_7 
       (.I0(paddle_count[24]),
        .I1(paddle_count[9]),
        .I2(paddle_count[26]),
        .I3(paddle_count[23]),
        .I4(\paddle_count[31]_i_11_n_0 ),
        .O(\paddle_count[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \paddle_count[31]_i_8 
       (.I0(paddle_count[6]),
        .I1(paddle_count[18]),
        .I2(paddle_count[8]),
        .I3(paddle_count[22]),
        .I4(\paddle_count[31]_i_12_n_0 ),
        .O(\paddle_count[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \paddle_count[31]_i_9 
       (.I0(paddle_count[27]),
        .I1(paddle_count[31]),
        .I2(paddle_count[17]),
        .I3(paddle_count[0]),
        .O(\paddle_count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(\paddle_count[0]_i_1_n_0 ),
        .Q(paddle_count[0]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[10] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[10]),
        .Q(paddle_count[10]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[11] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[11]),
        .Q(paddle_count[11]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[12] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[12]),
        .Q(paddle_count[12]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[12]_i_1 
       (.CI(\paddle_count_reg[8]_i_1_n_0 ),
        .CO({\paddle_count_reg[12]_i_1_n_0 ,\paddle_count_reg[12]_i_1_n_1 ,\paddle_count_reg[12]_i_1_n_2 ,\paddle_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(paddle_count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[13] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[13]),
        .Q(paddle_count[13]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[14] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[14]),
        .Q(paddle_count[14]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[15] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[15]),
        .Q(paddle_count[15]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[16] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[16]),
        .Q(paddle_count[16]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[16]_i_1 
       (.CI(\paddle_count_reg[12]_i_1_n_0 ),
        .CO({\paddle_count_reg[16]_i_1_n_0 ,\paddle_count_reg[16]_i_1_n_1 ,\paddle_count_reg[16]_i_1_n_2 ,\paddle_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(paddle_count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[17] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[17]),
        .Q(paddle_count[17]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[18] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[18]),
        .Q(paddle_count[18]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[19] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[19]),
        .Q(paddle_count[19]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[1]),
        .Q(paddle_count[1]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[20] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[20]),
        .Q(paddle_count[20]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[20]_i_1 
       (.CI(\paddle_count_reg[16]_i_1_n_0 ),
        .CO({\paddle_count_reg[20]_i_1_n_0 ,\paddle_count_reg[20]_i_1_n_1 ,\paddle_count_reg[20]_i_1_n_2 ,\paddle_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(paddle_count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[21] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[21]),
        .Q(paddle_count[21]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[22] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[22]),
        .Q(paddle_count[22]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[23] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[23]),
        .Q(paddle_count[23]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[24] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[24]),
        .Q(paddle_count[24]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[24]_i_1 
       (.CI(\paddle_count_reg[20]_i_1_n_0 ),
        .CO({\paddle_count_reg[24]_i_1_n_0 ,\paddle_count_reg[24]_i_1_n_1 ,\paddle_count_reg[24]_i_1_n_2 ,\paddle_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(paddle_count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[25] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[25]),
        .Q(paddle_count[25]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[26] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[26]),
        .Q(paddle_count[26]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[27] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[27]),
        .Q(paddle_count[27]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[28] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[28]),
        .Q(paddle_count[28]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[28]_i_1 
       (.CI(\paddle_count_reg[24]_i_1_n_0 ),
        .CO({\paddle_count_reg[28]_i_1_n_0 ,\paddle_count_reg[28]_i_1_n_1 ,\paddle_count_reg[28]_i_1_n_2 ,\paddle_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(paddle_count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[29] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[29]),
        .Q(paddle_count[29]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[2]),
        .Q(paddle_count[2]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[30] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[30]),
        .Q(paddle_count[30]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[31] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[31]),
        .Q(paddle_count[31]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[31]_i_3 
       (.CI(\paddle_count_reg[28]_i_1_n_0 ),
        .CO({\NLW_paddle_count_reg[31]_i_3_CO_UNCONNECTED [3:2],\paddle_count_reg[31]_i_3_n_2 ,\paddle_count_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_paddle_count_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,paddle_count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[3]),
        .Q(paddle_count[3]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[4]),
        .Q(paddle_count[4]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\paddle_count_reg[4]_i_1_n_0 ,\paddle_count_reg[4]_i_1_n_1 ,\paddle_count_reg[4]_i_1_n_2 ,\paddle_count_reg[4]_i_1_n_3 }),
        .CYINIT(paddle_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(paddle_count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[5]),
        .Q(paddle_count[5]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[6]),
        .Q(paddle_count[6]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[7]),
        .Q(paddle_count[7]),
        .R(\paddle_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[8]),
        .Q(paddle_count[8]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[8]_i_1 
       (.CI(\paddle_count_reg[4]_i_1_n_0 ),
        .CO({\paddle_count_reg[8]_i_1_n_0 ,\paddle_count_reg[8]_i_1_n_1 ,\paddle_count_reg[8]_i_1_n_2 ,\paddle_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(paddle_count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable),
        .D(data0[9]),
        .Q(paddle_count[9]),
        .R(\paddle_count[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 paddle_y0_carry
       (.CI(1'b0),
        .CO({paddle_y0_carry_n_0,paddle_y0_carry_n_1,paddle_y0_carry_n_2,paddle_y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({paddle_y0_carry_i_1_n_0,paddle_y0_carry_i_2_n_0,paddle_y1,paddle_y0_carry_i_4_n_0}),
        .O(paddle_y[3:0]),
        .S({paddle_y0_carry_i_5_n_0,paddle_y0_carry_i_6_n_0,paddle_y0_carry_i_7_n_0,paddle_y0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 paddle_y0_carry__0
       (.CI(paddle_y0_carry_n_0),
        .CO({NLW_paddle_y0_carry__0_CO_UNCONNECTED[3:1],paddle_y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,paddle_y0_out[3]}),
        .O({NLW_paddle_y0_carry__0_O_UNCONNECTED[3:2],paddle_y[5:4]}),
        .S({1'b0,1'b0,paddle_y0_carry__0_i_2_n_0,paddle_y0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    paddle_y0_carry__0_i_1
       (.I0(\FSM_onehot_state_reg[0] [0]),
        .I1(Q[3]),
        .O(paddle_y0_out[3]));
  LUT3 #(
    .INIT(8'hED)) 
    paddle_y0_carry__0_i_2
       (.I0(Q[5]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(Q[4]),
        .O(paddle_y0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    paddle_y0_carry__0_i_3
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(Q[4]),
        .O(paddle_y0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    paddle_y0_carry_i_1
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .O(paddle_y0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    paddle_y0_carry_i_10
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(paddle_y0_out[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(paddle_y0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    paddle_y0_carry_i_11
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .O(paddle_y0_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    paddle_y0_carry_i_2
       (.I0(paddle_y1),
        .O(paddle_y0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA00000000)) 
    paddle_y0_carry_i_3
       (.I0(\paddle_count[31]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(paddle_y0_carry_i_4_n_0),
        .I4(paddle_y0_carry_i_9_n_0),
        .I5(p1_up_debounced),
        .O(paddle_y1));
  LUT2 #(
    .INIT(4'hE)) 
    paddle_y0_carry_i_4
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .O(paddle_y0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    paddle_y0_carry_i_5
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(Q[3]),
        .O(paddle_y0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    paddle_y0_carry_i_6
       (.I0(paddle_y1),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(Q[2]),
        .O(paddle_y0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    paddle_y0_carry_i_7
       (.I0(paddle_y1),
        .I1(\FSM_onehot_state_reg[0] [0]),
        .I2(Q[1]),
        .O(paddle_y0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h111111111EEEEEEE)) 
    paddle_y0_carry_i_8
       (.I0(\FSM_onehot_state_reg[0] [0]),
        .I1(Q[0]),
        .I2(\paddle_count[31]_i_4_n_0 ),
        .I3(paddle_y0_carry_i_10_n_0),
        .I4(p1_down_debounced),
        .I5(paddle_y1),
        .O(paddle_y0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h01)) 
    paddle_y0_carry_i_9
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(paddle_y0_carry_i_9_n_0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y[5]),
        .Q(Q[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Pong_Paddle_Control" *) 
module Pong_Paddle_Control_6
   (Q,
    \paddle_y_reg[4]_0 ,
    \paddle_y_reg[5]_0 ,
    E,
    D,
    draw_paddle_p20,
    DI,
    \paddle_y_reg[5]_1 ,
    S,
    \FSM_onehot_state_reg[5] ,
    p2_up_debounced,
    small_row_count,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    draw_paddle_p2_reg,
    \FSM_onehot_state_reg[5]_0 ,
    p2_down_debounced,
    \FSM_onehot_state_reg[5]_1 ,
    CO,
    paddle_enable_0,
    clock_25Mhz_BUFG);
  output [5:0]Q;
  output [2:0]\paddle_y_reg[4]_0 ;
  output [3:0]\paddle_y_reg[5]_0 ;
  output [0:0]E;
  output [1:0]D;
  output draw_paddle_p20;
  output [0:0]DI;
  output [2:0]\paddle_y_reg[5]_1 ;
  output [1:0]S;
  input [2:0]\FSM_onehot_state_reg[5] ;
  input p2_up_debounced;
  input [5:0]small_row_count;
  input \FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_1 ;
  input draw_paddle_p2_reg;
  input [5:0]\FSM_onehot_state_reg[5]_0 ;
  input p2_down_debounced;
  input \FSM_onehot_state_reg[5]_1 ;
  input [0:0]CO;
  input paddle_enable_0;
  input clock_25Mhz_BUFG;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [2:0]\FSM_onehot_state_reg[5] ;
  wire [5:0]\FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[5]_1 ;
  wire [5:0]Q;
  wire [1:0]S;
  wire clock_25Mhz_BUFG;
  wire [31:1]data0;
  wire draw_paddle_p20;
  wire draw_paddle_p21_carry_i_9_n_0;
  wire draw_paddle_p2_i_2_n_0;
  wire draw_paddle_p2_i_4_n_0;
  wire draw_paddle_p2_i_5_n_0;
  wire draw_paddle_p2_reg;
  wire p2_down_debounced;
  wire p2_up_debounced;
  wire [31:0]paddle_count;
  wire \paddle_count[0]_i_1__0_n_0 ;
  wire \paddle_count[31]_i_10__0_n_0 ;
  wire \paddle_count[31]_i_11__0_n_0 ;
  wire \paddle_count[31]_i_12__0_n_0 ;
  wire \paddle_count[31]_i_1__0_n_0 ;
  wire \paddle_count[31]_i_4__0_n_0 ;
  wire \paddle_count[31]_i_5__0_n_0 ;
  wire \paddle_count[31]_i_6__0_n_0 ;
  wire \paddle_count[31]_i_7__0_n_0 ;
  wire \paddle_count[31]_i_8__0_n_0 ;
  wire \paddle_count[31]_i_9__0_n_0 ;
  wire \paddle_count_reg[12]_i_1__0_n_0 ;
  wire \paddle_count_reg[12]_i_1__0_n_1 ;
  wire \paddle_count_reg[12]_i_1__0_n_2 ;
  wire \paddle_count_reg[12]_i_1__0_n_3 ;
  wire \paddle_count_reg[16]_i_1__0_n_0 ;
  wire \paddle_count_reg[16]_i_1__0_n_1 ;
  wire \paddle_count_reg[16]_i_1__0_n_2 ;
  wire \paddle_count_reg[16]_i_1__0_n_3 ;
  wire \paddle_count_reg[20]_i_1__0_n_0 ;
  wire \paddle_count_reg[20]_i_1__0_n_1 ;
  wire \paddle_count_reg[20]_i_1__0_n_2 ;
  wire \paddle_count_reg[20]_i_1__0_n_3 ;
  wire \paddle_count_reg[24]_i_1__0_n_0 ;
  wire \paddle_count_reg[24]_i_1__0_n_1 ;
  wire \paddle_count_reg[24]_i_1__0_n_2 ;
  wire \paddle_count_reg[24]_i_1__0_n_3 ;
  wire \paddle_count_reg[28]_i_1__0_n_0 ;
  wire \paddle_count_reg[28]_i_1__0_n_1 ;
  wire \paddle_count_reg[28]_i_1__0_n_2 ;
  wire \paddle_count_reg[28]_i_1__0_n_3 ;
  wire \paddle_count_reg[31]_i_3__0_n_2 ;
  wire \paddle_count_reg[31]_i_3__0_n_3 ;
  wire \paddle_count_reg[4]_i_1__0_n_0 ;
  wire \paddle_count_reg[4]_i_1__0_n_1 ;
  wire \paddle_count_reg[4]_i_1__0_n_2 ;
  wire \paddle_count_reg[4]_i_1__0_n_3 ;
  wire \paddle_count_reg[8]_i_1__0_n_0 ;
  wire \paddle_count_reg[8]_i_1__0_n_1 ;
  wire \paddle_count_reg[8]_i_1__0_n_2 ;
  wire \paddle_count_reg[8]_i_1__0_n_3 ;
  wire paddle_enable_0;
  wire paddle_y0_carry__0_i_2__0_n_0;
  wire paddle_y0_carry__0_i_3__0_n_0;
  wire paddle_y0_carry__0_n_3;
  wire paddle_y0_carry_i_10__0_n_0;
  wire paddle_y0_carry_i_1__0_n_0;
  wire paddle_y0_carry_i_2__0_n_0;
  wire paddle_y0_carry_i_4__0_n_0;
  wire paddle_y0_carry_i_5__0_n_0;
  wire paddle_y0_carry_i_6__0_n_0;
  wire paddle_y0_carry_i_7__0_n_0;
  wire paddle_y0_carry_i_8__0_n_0;
  wire paddle_y0_carry_i_9__0_n_0;
  wire paddle_y0_carry_n_0;
  wire paddle_y0_carry_n_1;
  wire paddle_y0_carry_n_2;
  wire paddle_y0_carry_n_3;
  wire [3:2]paddle_y0_out__0;
  wire paddle_y1;
  wire [5:0]paddle_y__0;
  wire [2:0]\paddle_y_reg[4]_0 ;
  wire [3:0]\paddle_y_reg[5]_0 ;
  wire [2:0]\paddle_y_reg[5]_1 ;
  wire [5:0]small_row_count;
  wire [3:2]\NLW_paddle_count_reg[31]_i_3__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_paddle_count_reg[31]_i_3__0_O_UNCONNECTED ;
  wire [3:1]NLW_paddle_y0_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_paddle_y0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h20A2AAAA00000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_1 ),
        .I1(\FSM_onehot_state[5]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\FSM_onehot_state_reg[5]_0 [5]),
        .I4(CO),
        .I5(\FSM_onehot_state_reg[5] [2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hDF5D555500000000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_1 ),
        .I1(\FSM_onehot_state[5]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\FSM_onehot_state_reg[5]_0 [5]),
        .I4(CO),
        .I5(\FSM_onehot_state_reg[5] [2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_state[5]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg[5]_0 [3]),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[5]_0 [4]),
        .I4(Q[4]),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0FD0000FFFFD0FD)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[5]_0 [0]),
        .I2(\FSM_onehot_state_reg[5]_0 [1]),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg[5]_0 [2]),
        .I5(Q[2]),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(D[0]),
        .I1(\FSM_onehot_state_reg[0] ),
        .I2(\FSM_onehot_state_reg[5] [0]),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(\FSM_onehot_state_reg[5] [1]),
        .I5(\FSM_onehot_state_reg[0]_1 ),
        .O(E));
  LUT5 #(
    .INIT(32'h88800000)) 
    draw_paddle_p21_carry_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\paddle_y_reg[4]_0 [2]));
  LUT5 #(
    .INIT(32'h15403D54)) 
    draw_paddle_p21_carry_i_2
       (.I0(small_row_count[5]),
        .I1(draw_paddle_p21_carry_i_9_n_0),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(small_row_count[4]),
        .O(\paddle_y_reg[4]_0 [1]));
  LUT5 #(
    .INIT(32'h1114711D)) 
    draw_paddle_p21_carry_i_3
       (.I0(small_row_count[3]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(small_row_count[2]),
        .O(\paddle_y_reg[4]_0 [0]));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    draw_paddle_p21_carry_i_5
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\paddle_y_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'h09906009)) 
    draw_paddle_p21_carry_i_6
       (.I0(Q[5]),
        .I1(small_row_count[5]),
        .I2(Q[4]),
        .I3(draw_paddle_p21_carry_i_9_n_0),
        .I4(small_row_count[4]),
        .O(\paddle_y_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'h60090660)) 
    draw_paddle_p21_carry_i_7
       (.I0(Q[3]),
        .I1(small_row_count[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(small_row_count[2]),
        .O(\paddle_y_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h6006)) 
    draw_paddle_p21_carry_i_8
       (.I0(Q[1]),
        .I1(small_row_count[1]),
        .I2(Q[0]),
        .I3(small_row_count[0]),
        .O(\paddle_y_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    draw_paddle_p21_carry_i_9
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(draw_paddle_p21_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000B2B230B2)) 
    draw_paddle_p2_i_1
       (.I0(draw_paddle_p2_i_2_n_0),
        .I1(Q[5]),
        .I2(small_row_count[5]),
        .I3(Q[4]),
        .I4(small_row_count[4]),
        .I5(draw_paddle_p2_reg),
        .O(draw_paddle_p20));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BB0000)) 
    draw_paddle_p2_i_2
       (.I0(small_row_count[2]),
        .I1(Q[2]),
        .I2(small_row_count[3]),
        .I3(Q[3]),
        .I4(draw_paddle_p2_i_4_n_0),
        .I5(draw_paddle_p2_i_5_n_0),
        .O(draw_paddle_p2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF4FFFFF4444FF4F)) 
    draw_paddle_p2_i_4
       (.I0(Q[2]),
        .I1(small_row_count[2]),
        .I2(Q[0]),
        .I3(small_row_count[0]),
        .I4(Q[1]),
        .I5(small_row_count[1]),
        .O(draw_paddle_p2_i_4_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    draw_paddle_p2_i_5
       (.I0(Q[4]),
        .I1(small_row_count[4]),
        .I2(Q[3]),
        .I3(small_row_count[3]),
        .O(draw_paddle_p2_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_1
       (.I0(Q[5]),
        .I1(\FSM_onehot_state_reg[5]_0 [5]),
        .O(\paddle_y_reg[5]_1 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_2__0
       (.I0(Q[4]),
        .I1(\FSM_onehot_state_reg[5]_0 [4]),
        .O(\paddle_y_reg[5]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___0_carry__0_i_3__0
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[5]_0 [3]),
        .O(\paddle_y_reg[5]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_2
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[5]_0 [2]),
        .O(DI));
  LUT4 #(
    .INIT(16'h4BB4)) 
    i___0_carry_i_5
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[5]_0 [2]),
        .I2(Q[3]),
        .I3(\FSM_onehot_state_reg[5]_0 [3]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___0_carry_i_8__0
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[5]_0 [0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \paddle_count[0]_i_1__0 
       (.I0(paddle_count[0]),
        .O(\paddle_count[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \paddle_count[31]_i_10__0 
       (.I0(paddle_count[20]),
        .I1(paddle_count[15]),
        .I2(paddle_count[4]),
        .I3(paddle_count[2]),
        .O(\paddle_count[31]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \paddle_count[31]_i_11__0 
       (.I0(paddle_count[30]),
        .I1(paddle_count[11]),
        .I2(paddle_count[25]),
        .I3(paddle_count[29]),
        .O(\paddle_count[31]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \paddle_count[31]_i_12__0 
       (.I0(paddle_count[16]),
        .I1(paddle_count[7]),
        .I2(paddle_count[28]),
        .I3(paddle_count[13]),
        .O(\paddle_count[31]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \paddle_count[31]_i_1__0 
       (.I0(\paddle_count[31]_i_4__0_n_0 ),
        .I1(p2_down_debounced),
        .I2(p2_up_debounced),
        .O(\paddle_count[31]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \paddle_count[31]_i_4__0 
       (.I0(\paddle_count[31]_i_5__0_n_0 ),
        .I1(\paddle_count[31]_i_6__0_n_0 ),
        .I2(\paddle_count[31]_i_7__0_n_0 ),
        .I3(\paddle_count[31]_i_8__0_n_0 ),
        .O(\paddle_count[31]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \paddle_count[31]_i_5__0 
       (.I0(paddle_count[3]),
        .I1(paddle_count[12]),
        .I2(paddle_count[10]),
        .I3(paddle_count[19]),
        .I4(\paddle_count[31]_i_9__0_n_0 ),
        .O(\paddle_count[31]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \paddle_count[31]_i_6__0 
       (.I0(paddle_count[22]),
        .I1(paddle_count[23]),
        .I2(paddle_count[9]),
        .I3(paddle_count[26]),
        .I4(\paddle_count[31]_i_10__0_n_0 ),
        .O(\paddle_count[31]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \paddle_count[31]_i_7__0 
       (.I0(paddle_count[1]),
        .I1(paddle_count[5]),
        .I2(paddle_count[21]),
        .I3(paddle_count[14]),
        .I4(\paddle_count[31]_i_11__0_n_0 ),
        .O(\paddle_count[31]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \paddle_count[31]_i_8__0 
       (.I0(paddle_count[6]),
        .I1(paddle_count[18]),
        .I2(paddle_count[8]),
        .I3(paddle_count[24]),
        .I4(\paddle_count[31]_i_12__0_n_0 ),
        .O(\paddle_count[31]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \paddle_count[31]_i_9__0 
       (.I0(paddle_count[27]),
        .I1(paddle_count[31]),
        .I2(paddle_count[17]),
        .I3(paddle_count[0]),
        .O(\paddle_count[31]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(\paddle_count[0]_i_1__0_n_0 ),
        .Q(paddle_count[0]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[10] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[10]),
        .Q(paddle_count[10]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[11] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[11]),
        .Q(paddle_count[11]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[12] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[12]),
        .Q(paddle_count[12]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[12]_i_1__0 
       (.CI(\paddle_count_reg[8]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[12]_i_1__0_n_0 ,\paddle_count_reg[12]_i_1__0_n_1 ,\paddle_count_reg[12]_i_1__0_n_2 ,\paddle_count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(paddle_count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[13] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[13]),
        .Q(paddle_count[13]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[14] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[14]),
        .Q(paddle_count[14]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[15] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[15]),
        .Q(paddle_count[15]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[16] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[16]),
        .Q(paddle_count[16]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[16]_i_1__0 
       (.CI(\paddle_count_reg[12]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[16]_i_1__0_n_0 ,\paddle_count_reg[16]_i_1__0_n_1 ,\paddle_count_reg[16]_i_1__0_n_2 ,\paddle_count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(paddle_count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[17] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[17]),
        .Q(paddle_count[17]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[18] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[18]),
        .Q(paddle_count[18]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[19] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[19]),
        .Q(paddle_count[19]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[1]),
        .Q(paddle_count[1]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[20] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[20]),
        .Q(paddle_count[20]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[20]_i_1__0 
       (.CI(\paddle_count_reg[16]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[20]_i_1__0_n_0 ,\paddle_count_reg[20]_i_1__0_n_1 ,\paddle_count_reg[20]_i_1__0_n_2 ,\paddle_count_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(paddle_count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[21] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[21]),
        .Q(paddle_count[21]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[22] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[22]),
        .Q(paddle_count[22]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[23] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[23]),
        .Q(paddle_count[23]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[24] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[24]),
        .Q(paddle_count[24]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[24]_i_1__0 
       (.CI(\paddle_count_reg[20]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[24]_i_1__0_n_0 ,\paddle_count_reg[24]_i_1__0_n_1 ,\paddle_count_reg[24]_i_1__0_n_2 ,\paddle_count_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(paddle_count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[25] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[25]),
        .Q(paddle_count[25]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[26] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[26]),
        .Q(paddle_count[26]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[27] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[27]),
        .Q(paddle_count[27]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[28] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[28]),
        .Q(paddle_count[28]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[28]_i_1__0 
       (.CI(\paddle_count_reg[24]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[28]_i_1__0_n_0 ,\paddle_count_reg[28]_i_1__0_n_1 ,\paddle_count_reg[28]_i_1__0_n_2 ,\paddle_count_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(paddle_count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[29] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[29]),
        .Q(paddle_count[29]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[2]),
        .Q(paddle_count[2]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[30] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[30]),
        .Q(paddle_count[30]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[31] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[31]),
        .Q(paddle_count[31]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[31]_i_3__0 
       (.CI(\paddle_count_reg[28]_i_1__0_n_0 ),
        .CO({\NLW_paddle_count_reg[31]_i_3__0_CO_UNCONNECTED [3:2],\paddle_count_reg[31]_i_3__0_n_2 ,\paddle_count_reg[31]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_paddle_count_reg[31]_i_3__0_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,paddle_count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[3]),
        .Q(paddle_count[3]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[4]),
        .Q(paddle_count[4]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\paddle_count_reg[4]_i_1__0_n_0 ,\paddle_count_reg[4]_i_1__0_n_1 ,\paddle_count_reg[4]_i_1__0_n_2 ,\paddle_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(paddle_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(paddle_count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[5]),
        .Q(paddle_count[5]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[6]),
        .Q(paddle_count[6]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[7]),
        .Q(paddle_count[7]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[8]),
        .Q(paddle_count[8]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \paddle_count_reg[8]_i_1__0 
       (.CI(\paddle_count_reg[4]_i_1__0_n_0 ),
        .CO({\paddle_count_reg[8]_i_1__0_n_0 ,\paddle_count_reg[8]_i_1__0_n_1 ,\paddle_count_reg[8]_i_1__0_n_2 ,\paddle_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(paddle_count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(paddle_enable_0),
        .D(data0[9]),
        .Q(paddle_count[9]),
        .R(\paddle_count[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 paddle_y0_carry
       (.CI(1'b0),
        .CO({paddle_y0_carry_n_0,paddle_y0_carry_n_1,paddle_y0_carry_n_2,paddle_y0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({paddle_y0_carry_i_1__0_n_0,paddle_y0_carry_i_2__0_n_0,paddle_y1,paddle_y0_carry_i_4__0_n_0}),
        .O(paddle_y__0[3:0]),
        .S({paddle_y0_carry_i_5__0_n_0,paddle_y0_carry_i_6__0_n_0,paddle_y0_carry_i_7__0_n_0,paddle_y0_carry_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 paddle_y0_carry__0
       (.CI(paddle_y0_carry_n_0),
        .CO({NLW_paddle_y0_carry__0_CO_UNCONNECTED[3:1],paddle_y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,paddle_y0_out__0[3]}),
        .O({NLW_paddle_y0_carry__0_O_UNCONNECTED[3:2],paddle_y__0[5:4]}),
        .S({1'b0,1'b0,paddle_y0_carry__0_i_2__0_n_0,paddle_y0_carry__0_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    paddle_y0_carry__0_i_1__0
       (.I0(\FSM_onehot_state_reg[5] [0]),
        .I1(Q[3]),
        .O(paddle_y0_out__0[3]));
  LUT3 #(
    .INIT(8'hED)) 
    paddle_y0_carry__0_i_2__0
       (.I0(Q[5]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .I2(Q[4]),
        .O(paddle_y0_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    paddle_y0_carry__0_i_3__0
       (.I0(Q[3]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .I2(Q[4]),
        .O(paddle_y0_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    paddle_y0_carry_i_10__0
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(paddle_y0_out__0[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(paddle_y0_carry_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    paddle_y0_carry_i_11__0
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .O(paddle_y0_out__0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    paddle_y0_carry_i_1__0
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .O(paddle_y0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    paddle_y0_carry_i_2__0
       (.I0(paddle_y1),
        .O(paddle_y0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA00000000)) 
    paddle_y0_carry_i_3__0
       (.I0(\paddle_count[31]_i_4__0_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(paddle_y0_carry_i_4__0_n_0),
        .I4(paddle_y0_carry_i_9__0_n_0),
        .I5(p2_up_debounced),
        .O(paddle_y1));
  LUT2 #(
    .INIT(4'hE)) 
    paddle_y0_carry_i_4__0
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .O(paddle_y0_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    paddle_y0_carry_i_5__0
       (.I0(Q[2]),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .I2(Q[3]),
        .O(paddle_y0_carry_i_5__0_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    paddle_y0_carry_i_6__0
       (.I0(paddle_y1),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .I2(Q[2]),
        .O(paddle_y0_carry_i_6__0_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    paddle_y0_carry_i_7__0
       (.I0(paddle_y1),
        .I1(\FSM_onehot_state_reg[5] [0]),
        .I2(Q[1]),
        .O(paddle_y0_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h111111111EEEEEEE)) 
    paddle_y0_carry_i_8__0
       (.I0(\FSM_onehot_state_reg[5] [0]),
        .I1(Q[0]),
        .I2(\paddle_count[31]_i_4__0_n_0 ),
        .I3(paddle_y0_carry_i_10__0_n_0),
        .I4(p2_down_debounced),
        .I5(paddle_y1),
        .O(paddle_y0_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h01)) 
    paddle_y0_carry_i_9__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(paddle_y0_carry_i_9__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \paddle_y_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \paddle_y_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(paddle_y__0[5]),
        .Q(Q[5]),
        .R(1'b0));
endmodule

module Score_Display
   (draw_s,
    fixed_column_count14_out,
    clock_25Mhz_BUFG,
    display_reg_0,
    draw_s_reg_0,
    draw_s_reg_1,
    draw_s_i_2_0,
    draw_s_reg_2,
    D,
    \fixed_column_count_reg[4]_0 );
  output draw_s;
  input fixed_column_count14_out;
  input clock_25Mhz_BUFG;
  input display_reg_0;
  input draw_s_reg_0;
  input draw_s_reg_1;
  input draw_s_i_2_0;
  input draw_s_reg_2;
  input [3:0]D;
  input [3:0]\fixed_column_count_reg[4]_0 ;

  wire [3:0]D;
  wire clock_25Mhz_BUFG;
  wire display;
  wire display_reg_0;
  wire draw_s;
  wire draw_s0_out;
  wire draw_s_i_2_0;
  wire draw_s_i_2_n_0;
  wire draw_s_i_3__0_n_0;
  wire draw_s_i_4_n_0;
  wire draw_s_i_5_n_0;
  wire draw_s_i_6__0_n_0;
  wire draw_s_i_7__0_n_0;
  wire draw_s_i_8__0_n_0;
  wire draw_s_reg_0;
  wire draw_s_reg_1;
  wire draw_s_reg_2;
  wire [4:1]fixed_column_count;
  wire fixed_column_count14_out;
  wire [3:0]\fixed_column_count_reg[4]_0 ;
  wire \fixed_row_count_reg_n_0_[1] ;
  wire \fixed_row_count_reg_n_0_[2] ;
  wire \fixed_row_count_reg_n_0_[3] ;
  wire \fixed_row_count_reg_n_0_[4] ;
  wire ten;

  FDRE #(
    .INIT(1'b0)) 
    display_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(display_reg_0),
        .Q(display),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    draw_s_i_1__0
       (.I0(display),
        .I1(draw_s_i_2_n_0),
        .I2(fixed_column_count[1]),
        .I3(draw_s_i_3__0_n_0),
        .I4(draw_s_reg_0),
        .I5(ten),
        .O(draw_s0_out));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFEFFFFF)) 
    draw_s_i_2
       (.I0(draw_s_i_4_n_0),
        .I1(draw_s_i_5_n_0),
        .I2(draw_s_reg_1),
        .I3(ten),
        .I4(\fixed_row_count_reg_n_0_[3] ),
        .I5(draw_s_i_6__0_n_0),
        .O(draw_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    draw_s_i_3__0
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(draw_s_reg_2),
        .I2(\fixed_row_count_reg_n_0_[1] ),
        .I3(\fixed_row_count_reg_n_0_[3] ),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(fixed_column_count[2]),
        .O(draw_s_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FF474747)) 
    draw_s_i_4
       (.I0(draw_s_i_7__0_n_0),
        .I1(draw_s_reg_1),
        .I2(fixed_column_count[1]),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .I4(fixed_column_count[2]),
        .I5(ten),
        .O(draw_s_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    draw_s_i_5
       (.I0(draw_s_i_2_0),
        .I1(fixed_column_count[4]),
        .I2(fixed_column_count[3]),
        .I3(draw_s_i_8__0_n_0),
        .O(draw_s_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFF)) 
    draw_s_i_6__0
       (.I0(draw_s_reg_2),
        .I1(\fixed_row_count_reg_n_0_[4] ),
        .I2(\fixed_row_count_reg_n_0_[1] ),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .I4(fixed_column_count[1]),
        .I5(\fixed_row_count_reg_n_0_[3] ),
        .O(draw_s_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    draw_s_i_7__0
       (.I0(\fixed_row_count_reg_n_0_[3] ),
        .I1(\fixed_row_count_reg_n_0_[1] ),
        .I2(draw_s_reg_2),
        .I3(\fixed_row_count_reg_n_0_[4] ),
        .O(draw_s_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hA888)) 
    draw_s_i_8__0
       (.I0(fixed_column_count[1]),
        .I1(fixed_column_count[2]),
        .I2(draw_s_reg_0),
        .I3(ten),
        .O(draw_s_i_8__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_s_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_s0_out),
        .Q(draw_s),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[4]_0 [0]),
        .Q(fixed_column_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[4]_0 [1]),
        .Q(fixed_column_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[4]_0 [2]),
        .Q(fixed_column_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[4]_0 [3]),
        .Q(fixed_column_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\fixed_row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\fixed_row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\fixed_row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\fixed_row_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ten_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(fixed_column_count14_out),
        .Q(ten),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Score_Display" *) 
module Score_Display__parameterized0
   (draw_sP1,
    \FSM_onehot_state_reg[5] ,
    \FSM_onehot_state_reg[5]_0 ,
    fixed_column_count14_out_0,
    clock_25Mhz_BUFG,
    display_reg_0,
    draw_s_reg_0,
    draw_s_i_8__1_0,
    draw_s_i_8__1_1,
    draw_s_i_20_0,
    \temp_Red_reg[3] ,
    \temp_Red_reg[3]_0 ,
    draw_sP2,
    \temp_Red[3]_i_6_0 ,
    \temp_Red[3]_i_6_1 ,
    \temp_Red[3]_i_6_2 ,
    draw_f,
    \fixed_row_count_reg[4]_0 ,
    \fixed_column_count_reg[3]_0 );
  output draw_sP1;
  output \FSM_onehot_state_reg[5] ;
  output \FSM_onehot_state_reg[5]_0 ;
  input fixed_column_count14_out_0;
  input clock_25Mhz_BUFG;
  input display_reg_0;
  input [3:0]draw_s_reg_0;
  input draw_s_i_8__1_0;
  input draw_s_i_8__1_1;
  input draw_s_i_20_0;
  input \temp_Red_reg[3] ;
  input [4:0]\temp_Red_reg[3]_0 ;
  input draw_sP2;
  input \temp_Red[3]_i_6_0 ;
  input \temp_Red[3]_i_6_1 ;
  input \temp_Red[3]_i_6_2 ;
  input draw_f;
  input [3:0]\fixed_row_count_reg[4]_0 ;
  input [2:0]\fixed_column_count_reg[3]_0 ;

  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire clock_25Mhz_BUFG;
  wire display;
  wire display_reg_0;
  wire draw_f;
  wire draw_s0_out;
  wire draw_sP1;
  wire draw_sP2;
  wire draw_s_i_11_n_0;
  wire draw_s_i_12__1_n_0;
  wire draw_s_i_13__0_n_0;
  wire draw_s_i_14__1_n_0;
  wire draw_s_i_15__0_n_0;
  wire draw_s_i_16__0_n_0;
  wire draw_s_i_17__0_n_0;
  wire draw_s_i_18_n_0;
  wire draw_s_i_19_n_0;
  wire draw_s_i_20_0;
  wire draw_s_i_20_n_0;
  wire draw_s_i_21_n_0;
  wire draw_s_i_22_n_0;
  wire draw_s_i_2__0_n_0;
  wire draw_s_i_3__1_n_0;
  wire draw_s_i_4__0_n_0;
  wire draw_s_i_5__0_n_0;
  wire draw_s_i_6__1_n_0;
  wire draw_s_i_7__1_n_0;
  wire draw_s_i_8__1_0;
  wire draw_s_i_8__1_1;
  wire draw_s_i_8__1_n_0;
  wire draw_s_i_9__0_n_0;
  wire [3:0]draw_s_reg_0;
  wire draw_s_reg_i_10_n_0;
  wire [3:1]fixed_column_count;
  wire fixed_column_count14_out_0;
  wire [2:0]\fixed_column_count_reg[3]_0 ;
  wire [3:0]\fixed_row_count_reg[4]_0 ;
  wire \fixed_row_count_reg_n_0_[1] ;
  wire \fixed_row_count_reg_n_0_[2] ;
  wire \fixed_row_count_reg_n_0_[3] ;
  wire \fixed_row_count_reg_n_0_[4] ;
  wire \temp_Red[3]_i_6_0 ;
  wire \temp_Red[3]_i_6_1 ;
  wire \temp_Red[3]_i_6_2 ;
  wire \temp_Red[3]_i_9_n_0 ;
  wire \temp_Red_reg[3] ;
  wire [4:0]\temp_Red_reg[3]_0 ;
  wire ten;

  FDRE #(
    .INIT(1'b0)) 
    display_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(display_reg_0),
        .Q(display),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    draw_s_i_11
       (.I0(draw_s_reg_0[1]),
        .I1(draw_s_reg_0[3]),
        .O(draw_s_i_11_n_0));
  LUT6 #(
    .INIT(64'h5544554555455545)) 
    draw_s_i_12__1
       (.I0(draw_s_reg_0[2]),
        .I1(draw_s_i_13__0_n_0),
        .I2(fixed_column_count[1]),
        .I3(draw_s_i_17__0_n_0),
        .I4(draw_s_reg_0[0]),
        .I5(\fixed_row_count_reg_n_0_[2] ),
        .O(draw_s_i_12__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    draw_s_i_13__0
       (.I0(fixed_column_count[2]),
        .I1(fixed_column_count[3]),
        .I2(draw_s_i_8__1_1),
        .I3(draw_s_i_20_0),
        .O(draw_s_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    draw_s_i_14__1
       (.I0(fixed_column_count[1]),
        .I1(draw_s_i_20_0),
        .I2(draw_s_i_8__1_1),
        .I3(fixed_column_count[3]),
        .I4(fixed_column_count[2]),
        .O(draw_s_i_14__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    draw_s_i_15__0
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(draw_s_i_8__1_0),
        .O(draw_s_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    draw_s_i_16__0
       (.I0(fixed_column_count[3]),
        .I1(draw_s_i_8__1_1),
        .I2(draw_s_i_20_0),
        .I3(fixed_column_count[2]),
        .I4(fixed_column_count[1]),
        .O(draw_s_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    draw_s_i_17__0
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(draw_s_i_8__1_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .O(draw_s_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    draw_s_i_18
       (.I0(\fixed_row_count_reg_n_0_[2] ),
        .I1(\fixed_row_count_reg_n_0_[1] ),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(draw_s_i_8__1_0),
        .I4(\fixed_row_count_reg_n_0_[4] ),
        .O(draw_s_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    draw_s_i_19
       (.I0(\fixed_row_count_reg_n_0_[1] ),
        .I1(\fixed_row_count_reg_n_0_[3] ),
        .I2(draw_s_i_8__1_0),
        .I3(\fixed_row_count_reg_n_0_[4] ),
        .I4(fixed_column_count[1]),
        .I5(draw_s_i_13__0_n_0),
        .O(draw_s_i_19_n_0));
  LUT4 #(
    .INIT(16'h888A)) 
    draw_s_i_1__1
       (.I0(display),
        .I1(draw_s_i_2__0_n_0),
        .I2(draw_s_i_3__1_n_0),
        .I3(draw_s_i_4__0_n_0),
        .O(draw_s0_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    draw_s_i_20
       (.I0(draw_s_i_8__1_0),
        .I1(\fixed_row_count_reg_n_0_[4] ),
        .I2(\fixed_row_count_reg_n_0_[2] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .I4(\fixed_row_count_reg_n_0_[3] ),
        .I5(draw_s_i_13__0_n_0),
        .O(draw_s_i_20_n_0));
  LUT6 #(
    .INIT(64'h2223222222202232)) 
    draw_s_i_21
       (.I0(fixed_column_count[1]),
        .I1(draw_s_i_13__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(draw_s_i_15__0_n_0),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(\fixed_row_count_reg_n_0_[1] ),
        .O(draw_s_i_21_n_0));
  LUT5 #(
    .INIT(32'h02330232)) 
    draw_s_i_22
       (.I0(draw_s_i_16__0_n_0),
        .I1(draw_s_i_17__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[2] ),
        .I3(draw_s_i_13__0_n_0),
        .I4(fixed_column_count[1]),
        .O(draw_s_i_22_n_0));
  LUT6 #(
    .INIT(64'hAAA8888800088888)) 
    draw_s_i_2__0
       (.I0(ten),
        .I1(draw_s_i_5__0_n_0),
        .I2(draw_s_reg_0[1]),
        .I3(draw_s_reg_0[2]),
        .I4(draw_s_reg_0[3]),
        .I5(draw_s_i_6__1_n_0),
        .O(draw_s_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFABAAAA)) 
    draw_s_i_3__1
       (.I0(ten),
        .I1(draw_s_i_7__1_n_0),
        .I2(draw_s_reg_0[2]),
        .I3(draw_s_i_8__1_n_0),
        .I4(draw_s_reg_0[1]),
        .I5(draw_s_reg_0[3]),
        .O(draw_s_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h4444555F444F555F)) 
    draw_s_i_4__0
       (.I0(draw_s_i_9__0_n_0),
        .I1(draw_s_reg_i_10_n_0),
        .I2(draw_s_i_11_n_0),
        .I3(draw_s_i_12__1_n_0),
        .I4(draw_s_reg_0[2]),
        .I5(draw_s_i_7__1_n_0),
        .O(draw_s_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDDF)) 
    draw_s_i_5__0
       (.I0(fixed_column_count[1]),
        .I1(draw_s_i_13__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[1] ),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .I4(\fixed_row_count_reg_n_0_[4] ),
        .I5(draw_s_i_8__1_0),
        .O(draw_s_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000003055555775)) 
    draw_s_i_6__1
       (.I0(draw_s_i_14__1_n_0),
        .I1(draw_s_i_15__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(draw_s_i_16__0_n_0),
        .O(draw_s_i_6__1_n_0));
  LUT6 #(
    .INIT(64'hFF88FFCDFFCCFFCC)) 
    draw_s_i_7__1
       (.I0(draw_s_reg_0[0]),
        .I1(draw_s_i_13__0_n_0),
        .I2(fixed_column_count[1]),
        .I3(draw_s_i_17__0_n_0),
        .I4(draw_s_i_16__0_n_0),
        .I5(\fixed_row_count_reg_n_0_[2] ),
        .O(draw_s_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h00D000D000C0F0C0)) 
    draw_s_i_8__1
       (.I0(draw_s_i_18_n_0),
        .I1(draw_s_i_19_n_0),
        .I2(draw_s_reg_0[2]),
        .I3(draw_s_reg_0[0]),
        .I4(draw_s_i_20_n_0),
        .I5(draw_s_i_16__0_n_0),
        .O(draw_s_i_8__1_n_0));
  LUT6 #(
    .INIT(64'h6F6F6F6666666F66)) 
    draw_s_i_9__0
       (.I0(draw_s_reg_0[3]),
        .I1(draw_s_reg_0[1]),
        .I2(draw_s_reg_0[2]),
        .I3(draw_s_i_5__0_n_0),
        .I4(draw_s_reg_0[0]),
        .I5(draw_s_i_6__1_n_0),
        .O(draw_s_i_9__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_s_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_s0_out),
        .Q(draw_sP1),
        .R(1'b0));
  MUXF7 draw_s_reg_i_10
       (.I0(draw_s_i_21_n_0),
        .I1(draw_s_i_22_n_0),
        .O(draw_s_reg_i_10_n_0),
        .S(draw_s_reg_0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [0]),
        .Q(fixed_column_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [1]),
        .Q(fixed_column_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[3]_0 [2]),
        .Q(fixed_column_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [0]),
        .Q(\fixed_row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [1]),
        .Q(\fixed_row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [2]),
        .Q(\fixed_row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [3]),
        .Q(\fixed_row_count_reg_n_0_[4] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    \temp_Red[3]_i_2 
       (.I0(\FSM_onehot_state_reg[5]_0 ),
        .I1(\temp_Red_reg[3] ),
        .O(\FSM_onehot_state_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \temp_Red[3]_i_6 
       (.I0(\temp_Red_reg[3]_0 [3]),
        .I1(\temp_Red_reg[3]_0 [0]),
        .I2(\temp_Red_reg[3]_0 [2]),
        .I3(\temp_Red_reg[3]_0 [1]),
        .I4(\temp_Red_reg[3]_0 [4]),
        .I5(\temp_Red[3]_i_9_n_0 ),
        .O(\FSM_onehot_state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h000000FFFFFE00FE)) 
    \temp_Red[3]_i_9 
       (.I0(draw_sP1),
        .I1(draw_sP2),
        .I2(\temp_Red[3]_i_6_0 ),
        .I3(\temp_Red[3]_i_6_1 ),
        .I4(\temp_Red[3]_i_6_2 ),
        .I5(draw_f),
        .O(\temp_Red[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ten_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(fixed_column_count14_out_0),
        .Q(ten),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Score_Display" *) 
module Score_Display__parameterized1
   (draw_sP2,
    draw_s_reg_0,
    fixed_column_count14_out_1,
    clock_25Mhz_BUFG,
    display_reg_0,
    draw_s_reg_1,
    draw_s_i_4__1_0,
    draw_sP1,
    \temp_Blue_reg[3] ,
    \temp_Blue_reg[3]_0 ,
    \temp_Blue_reg[3]_1 ,
    draw_f,
    \fixed_row_count_reg[4]_0 ,
    \fixed_column_count_reg[5]_0 );
  output draw_sP2;
  output draw_s_reg_0;
  input fixed_column_count14_out_1;
  input clock_25Mhz_BUFG;
  input display_reg_0;
  input [3:0]draw_s_reg_1;
  input draw_s_i_4__1_0;
  input draw_sP1;
  input \temp_Blue_reg[3] ;
  input \temp_Blue_reg[3]_0 ;
  input \temp_Blue_reg[3]_1 ;
  input draw_f;
  input [3:0]\fixed_row_count_reg[4]_0 ;
  input [4:0]\fixed_column_count_reg[5]_0 ;

  wire clock_25Mhz_BUFG;
  wire display;
  wire display_reg_0;
  wire draw_f;
  wire draw_s0_out;
  wire draw_sP1;
  wire draw_sP2;
  wire draw_s_i_10_n_0;
  wire draw_s_i_11__0_n_0;
  wire draw_s_i_12__0_n_0;
  wire draw_s_i_13__1_n_0;
  wire draw_s_i_14__0_n_0;
  wire draw_s_i_15__1_n_0;
  wire draw_s_i_16__1_n_0;
  wire draw_s_i_17__1_n_0;
  wire draw_s_i_18__0_n_0;
  wire draw_s_i_19__0_n_0;
  wire draw_s_i_20__1_n_0;
  wire draw_s_i_21__0_n_0;
  wire draw_s_i_2__1_n_0;
  wire draw_s_i_3__2_n_0;
  wire draw_s_i_4__1_0;
  wire draw_s_i_4__1_n_0;
  wire draw_s_i_5__1_n_0;
  wire draw_s_i_7__2_n_0;
  wire draw_s_i_8__2_n_0;
  wire draw_s_i_9__1_n_0;
  wire draw_s_reg_0;
  wire [3:0]draw_s_reg_1;
  wire draw_s_reg_i_6_n_0;
  wire fixed_column_count14_out_1;
  wire [4:0]\fixed_column_count_reg[5]_0 ;
  wire \fixed_column_count_reg_n_0_[1] ;
  wire \fixed_column_count_reg_n_0_[2] ;
  wire \fixed_column_count_reg_n_0_[3] ;
  wire \fixed_column_count_reg_n_0_[4] ;
  wire \fixed_column_count_reg_n_0_[5] ;
  wire [3:0]\fixed_row_count_reg[4]_0 ;
  wire \fixed_row_count_reg_n_0_[1] ;
  wire \fixed_row_count_reg_n_0_[2] ;
  wire \fixed_row_count_reg_n_0_[3] ;
  wire \fixed_row_count_reg_n_0_[4] ;
  wire \temp_Blue_reg[3] ;
  wire \temp_Blue_reg[3]_0 ;
  wire \temp_Blue_reg[3]_1 ;
  wire ten;

  FDRE #(
    .INIT(1'b0)) 
    display_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(display_reg_0),
        .Q(display),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDDF)) 
    draw_s_i_10
       (.I0(\fixed_column_count_reg_n_0_[1] ),
        .I1(draw_s_i_18__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[1] ),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .I4(\fixed_row_count_reg_n_0_[4] ),
        .I5(draw_s_i_4__1_0),
        .O(draw_s_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000003055555775)) 
    draw_s_i_11__0
       (.I0(draw_s_i_20__1_n_0),
        .I1(draw_s_i_21__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(draw_s_i_14__0_n_0),
        .O(draw_s_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    draw_s_i_12__0
       (.I0(draw_s_i_4__1_0),
        .I1(\fixed_row_count_reg_n_0_[4] ),
        .I2(\fixed_row_count_reg_n_0_[2] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .I4(\fixed_row_count_reg_n_0_[3] ),
        .I5(draw_s_i_18__0_n_0),
        .O(draw_s_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    draw_s_i_13__1
       (.I0(\fixed_column_count_reg_n_0_[4] ),
        .I1(\fixed_column_count_reg_n_0_[5] ),
        .I2(\fixed_column_count_reg_n_0_[3] ),
        .I3(\fixed_column_count_reg_n_0_[2] ),
        .I4(\fixed_column_count_reg_n_0_[1] ),
        .O(draw_s_i_13__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    draw_s_i_14__0
       (.I0(\fixed_column_count_reg_n_0_[3] ),
        .I1(\fixed_column_count_reg_n_0_[5] ),
        .I2(\fixed_column_count_reg_n_0_[4] ),
        .I3(\fixed_column_count_reg_n_0_[2] ),
        .I4(\fixed_column_count_reg_n_0_[1] ),
        .O(draw_s_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    draw_s_i_15__1
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(draw_s_i_4__1_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .O(draw_s_i_15__1_n_0));
  LUT6 #(
    .INIT(64'h2223222222202232)) 
    draw_s_i_16__1
       (.I0(\fixed_column_count_reg_n_0_[1] ),
        .I1(draw_s_i_18__0_n_0),
        .I2(\fixed_row_count_reg_n_0_[3] ),
        .I3(draw_s_i_21__0_n_0),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(\fixed_row_count_reg_n_0_[1] ),
        .O(draw_s_i_16__1_n_0));
  LUT5 #(
    .INIT(32'h000033BA)) 
    draw_s_i_17__1
       (.I0(draw_s_i_14__0_n_0),
        .I1(draw_s_i_18__0_n_0),
        .I2(\fixed_column_count_reg_n_0_[1] ),
        .I3(\fixed_row_count_reg_n_0_[2] ),
        .I4(draw_s_i_15__1_n_0),
        .O(draw_s_i_17__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    draw_s_i_18__0
       (.I0(\fixed_column_count_reg_n_0_[2] ),
        .I1(\fixed_column_count_reg_n_0_[3] ),
        .I2(\fixed_column_count_reg_n_0_[5] ),
        .I3(\fixed_column_count_reg_n_0_[4] ),
        .O(draw_s_i_18__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    draw_s_i_19__0
       (.I0(draw_s_i_4__1_0),
        .I1(\fixed_row_count_reg_n_0_[4] ),
        .I2(\fixed_row_count_reg_n_0_[2] ),
        .I3(\fixed_row_count_reg_n_0_[1] ),
        .O(draw_s_i_19__0_n_0));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    draw_s_i_1__2
       (.I0(display),
        .I1(draw_s_i_2__1_n_0),
        .I2(draw_s_reg_1[3]),
        .I3(draw_s_i_3__2_n_0),
        .I4(ten),
        .I5(draw_s_i_4__1_n_0),
        .O(draw_s0_out));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    draw_s_i_20__1
       (.I0(\fixed_column_count_reg_n_0_[1] ),
        .I1(\fixed_column_count_reg_n_0_[4] ),
        .I2(\fixed_column_count_reg_n_0_[5] ),
        .I3(\fixed_column_count_reg_n_0_[3] ),
        .I4(\fixed_column_count_reg_n_0_[2] ),
        .O(draw_s_i_20__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    draw_s_i_21__0
       (.I0(\fixed_row_count_reg_n_0_[4] ),
        .I1(draw_s_i_4__1_0),
        .O(draw_s_i_21__0_n_0));
  LUT6 #(
    .INIT(64'hAFAFA0A0C0CFC0CF)) 
    draw_s_i_2__1
       (.I0(draw_s_i_5__1_n_0),
        .I1(draw_s_reg_i_6_n_0),
        .I2(draw_s_reg_1[2]),
        .I3(draw_s_i_7__2_n_0),
        .I4(draw_s_i_8__2_n_0),
        .I5(draw_s_reg_1[1]),
        .O(draw_s_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hF0FFF00055335533)) 
    draw_s_i_3__2
       (.I0(draw_s_i_7__2_n_0),
        .I1(draw_s_i_9__1_n_0),
        .I2(draw_s_reg_i_6_n_0),
        .I3(draw_s_reg_1[1]),
        .I4(draw_s_i_8__2_n_0),
        .I5(draw_s_reg_1[2]),
        .O(draw_s_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h35353555)) 
    draw_s_i_4__1
       (.I0(draw_s_i_10_n_0),
        .I1(draw_s_i_11__0_n_0),
        .I2(draw_s_reg_1[3]),
        .I3(draw_s_reg_1[2]),
        .I4(draw_s_reg_1[1]),
        .O(draw_s_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h0044004403473347)) 
    draw_s_i_5__1
       (.I0(draw_s_i_12__0_n_0),
        .I1(draw_s_reg_1[0]),
        .I2(draw_s_i_13__1_n_0),
        .I3(draw_s_i_14__0_n_0),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(draw_s_i_15__1_n_0),
        .O(draw_s_i_5__1_n_0));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    draw_s_i_7__2
       (.I0(draw_s_i_11__0_n_0),
        .I1(draw_s_reg_1[0]),
        .I2(\fixed_column_count_reg_n_0_[1] ),
        .I3(draw_s_i_18__0_n_0),
        .I4(draw_s_i_19__0_n_0),
        .O(draw_s_i_7__2_n_0));
  LUT6 #(
    .INIT(64'h0033003300F20033)) 
    draw_s_i_8__2
       (.I0(\fixed_column_count_reg_n_0_[1] ),
        .I1(draw_s_i_18__0_n_0),
        .I2(draw_s_i_14__0_n_0),
        .I3(draw_s_i_15__1_n_0),
        .I4(\fixed_row_count_reg_n_0_[2] ),
        .I5(draw_s_reg_1[0]),
        .O(draw_s_i_8__2_n_0));
  LUT5 #(
    .INIT(32'hFFFFCCDF)) 
    draw_s_i_9__1
       (.I0(draw_s_reg_1[0]),
        .I1(draw_s_i_15__1_n_0),
        .I2(\fixed_row_count_reg_n_0_[2] ),
        .I3(\fixed_column_count_reg_n_0_[1] ),
        .I4(draw_s_i_18__0_n_0),
        .O(draw_s_i_9__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    draw_s_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(draw_s0_out),
        .Q(draw_sP2),
        .R(1'b0));
  MUXF7 draw_s_reg_i_6
       (.I0(draw_s_i_16__1_n_0),
        .I1(draw_s_i_17__1_n_0),
        .O(draw_s_reg_i_6_n_0),
        .S(draw_s_reg_1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[5]_0 [0]),
        .Q(\fixed_column_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[5]_0 [1]),
        .Q(\fixed_column_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[5]_0 [2]),
        .Q(\fixed_column_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[5]_0 [3]),
        .Q(\fixed_column_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_column_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_column_count_reg[5]_0 [4]),
        .Q(\fixed_column_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [0]),
        .Q(\fixed_row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [1]),
        .Q(\fixed_row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [2]),
        .Q(\fixed_row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fixed_row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\fixed_row_count_reg[4]_0 [3]),
        .Q(\fixed_row_count_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000FFFFFA00FC)) 
    \temp_Blue[3]_i_4 
       (.I0(draw_sP2),
        .I1(draw_sP1),
        .I2(\temp_Blue_reg[3] ),
        .I3(\temp_Blue_reg[3]_0 ),
        .I4(\temp_Blue_reg[3]_1 ),
        .I5(draw_f),
        .O(draw_s_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ten_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(fixed_column_count14_out_1),
        .Q(ten),
        .R(1'b0));
endmodule

module VGA_Sync_Porch
   (out_Hsync_OBUF,
    out_Vsync_OBUF,
    out_Green_OBUF,
    out_Blue_OBUF,
    Q,
    clock_25Mhz_BUFG,
    \temp_Green_reg[3]_0 ,
    \temp_Red_reg[2]_0 ,
    \temp_Blue_reg[3]_0 ,
    \temp_Blue_reg[3]_1 ,
    temp1_Hsync,
    temp1_Vsync,
    \temp_Red_reg[3]_0 ,
    \temp_Red_reg[3]_1 );
  output out_Hsync_OBUF;
  output out_Vsync_OBUF;
  output [0:0]out_Green_OBUF;
  output [0:0]out_Blue_OBUF;
  output [1:0]Q;
  input clock_25Mhz_BUFG;
  input \temp_Green_reg[3]_0 ;
  input \temp_Red_reg[2]_0 ;
  input \temp_Blue_reg[3]_0 ;
  input \temp_Blue_reg[3]_1 ;
  input temp1_Hsync;
  input temp1_Vsync;
  input \temp_Red_reg[3]_0 ;
  input \temp_Red_reg[3]_1 ;

  wire [1:0]Q;
  wire Sync_to_Count_wrap_n_0;
  wire Sync_to_Count_wrap_n_1;
  wire clock_25Mhz_BUFG;
  wire [0:0]out_Blue_OBUF;
  wire [0:0]out_Green_OBUF;
  wire out_Hsync0;
  wire out_Hsync_OBUF;
  wire out_Vsync0;
  wire out_Vsync_OBUF;
  wire temp1_Hsync;
  wire temp1_Vsync;
  wire [3:3]temp_Blue__0;
  wire \temp_Blue_reg[3]_0 ;
  wire \temp_Blue_reg[3]_1 ;
  wire [3:3]temp_Green__0;
  wire \temp_Green_reg[3]_0 ;
  wire [3:2]temp_Red__0;
  wire \temp_Red_reg[2]_0 ;
  wire \temp_Red_reg[3]_0 ;
  wire \temp_Red_reg[3]_1 ;

  VGA_Sync_to_Count Sync_to_Count_wrap
       (.clock_25Mhz_BUFG(clock_25Mhz_BUFG),
        .\column_count_reg[8]_0 (Sync_to_Count_wrap_n_0),
        .out_Hsync0(out_Hsync0),
        .out_Vsync0(out_Vsync0),
        .\row_count_reg[6]_0 (Sync_to_Count_wrap_n_1),
        .temp1_Hsync(temp1_Hsync),
        .temp1_Vsync(temp1_Vsync));
  FDRE #(
    .INIT(1'b0)) 
    \out_Blue_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(temp_Blue__0),
        .Q(out_Blue_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_Green_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(temp_Green__0),
        .Q(out_Green_OBUF),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    out_Hsync_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(Sync_to_Count_wrap_n_0),
        .Q(out_Hsync_OBUF),
        .S(out_Hsync0));
  FDRE #(
    .INIT(1'b0)) 
    \out_Red_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(temp_Red__0[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_Red_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(temp_Red__0[3]),
        .Q(Q[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    out_Vsync_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(Sync_to_Count_wrap_n_1),
        .Q(out_Vsync_OBUF),
        .S(out_Vsync0));
  FDSE #(
    .INIT(1'b0)) 
    \temp_Blue_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\temp_Blue_reg[3]_1 ),
        .Q(temp_Blue__0),
        .S(\temp_Blue_reg[3]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_Green_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\temp_Red_reg[2]_0 ),
        .Q(temp_Green__0),
        .S(\temp_Green_reg[3]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_Red_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\temp_Red_reg[2]_0 ),
        .Q(temp_Red__0[2]),
        .S(\temp_Red_reg[3]_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \temp_Red_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\temp_Red_reg[3]_1 ),
        .Q(temp_Red__0[3]),
        .S(\temp_Red_reg[3]_0 ));
endmodule

module VGA_Sync_Pulse_Generator
   (temp1_Hsync,
    temp1_Vsync,
    CLK);
  output temp1_Hsync;
  output temp1_Vsync;
  input CLK;

  wire CLK;
  wire [9:0]column_count;
  wire \column_count[9]_i_3_n_0 ;
  wire p_0_in;
  wire [9:0]p_1_in;
  wire [9:0]row_count;
  wire \row_count[0]_i_1__1_n_0 ;
  wire \row_count[1]_i_1__1_n_0 ;
  wire \row_count[2]_i_1__1_n_0 ;
  wire \row_count[3]_i_1__1_n_0 ;
  wire \row_count[3]_i_2__0_n_0 ;
  wire \row_count[4]_i_1__1_n_0 ;
  wire \row_count[5]_i_1__1_n_0 ;
  wire \row_count[6]_i_1__1_n_0 ;
  wire \row_count[7]_i_1__1_n_0 ;
  wire \row_count[8]_i_1__1_n_0 ;
  wire \row_count[8]_i_2__0_n_0 ;
  wire \row_count[9]_i_1__1_n_0 ;
  wire \row_count[9]_i_2__1_n_0 ;
  wire \row_count[9]_i_3__0_n_0 ;
  wire \row_count[9]_i_4__1_n_0 ;
  wire temp1_Hsync;
  wire temp1_Vsync;

  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \column_count[0]_i_1__1 
       (.I0(column_count[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \column_count[1]_i_1__1 
       (.I0(column_count[0]),
        .I1(column_count[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \column_count[2]_i_1__1 
       (.I0(column_count[1]),
        .I1(column_count[0]),
        .I2(column_count[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \column_count[3]_i_1__1 
       (.I0(column_count[2]),
        .I1(column_count[0]),
        .I2(column_count[1]),
        .I3(column_count[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \column_count[4]_i_1__1 
       (.I0(column_count[3]),
        .I1(column_count[1]),
        .I2(column_count[0]),
        .I3(column_count[2]),
        .I4(column_count[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \column_count[5]_i_1__1 
       (.I0(column_count[4]),
        .I1(column_count[2]),
        .I2(column_count[0]),
        .I3(column_count[1]),
        .I4(column_count[3]),
        .I5(column_count[5]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \column_count[6]_i_1__1 
       (.I0(column_count[5]),
        .I1(\column_count[9]_i_3_n_0 ),
        .I2(column_count[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \column_count[7]_i_1__0 
       (.I0(column_count[6]),
        .I1(\column_count[9]_i_3_n_0 ),
        .I2(column_count[5]),
        .I3(column_count[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \column_count[8]_i_1__1 
       (.I0(column_count[7]),
        .I1(column_count[5]),
        .I2(\column_count[9]_i_3_n_0 ),
        .I3(column_count[6]),
        .I4(column_count[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \column_count[9]_i_1__1 
       (.I0(column_count[8]),
        .I1(column_count[9]),
        .I2(column_count[7]),
        .I3(column_count[6]),
        .I4(column_count[5]),
        .I5(\column_count[9]_i_3_n_0 ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \column_count[9]_i_2__1 
       (.I0(column_count[8]),
        .I1(column_count[6]),
        .I2(\column_count[9]_i_3_n_0 ),
        .I3(column_count[5]),
        .I4(column_count[7]),
        .I5(column_count[9]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \column_count[9]_i_3 
       (.I0(column_count[3]),
        .I1(column_count[1]),
        .I2(column_count[0]),
        .I3(column_count[2]),
        .I4(column_count[4]),
        .O(\column_count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(column_count[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(column_count[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(column_count[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(column_count[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(column_count[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(column_count[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(column_count[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(column_count[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(column_count[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(column_count[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h1F)) 
    out_Hsync_reg_srl3_i_1
       (.I0(column_count[8]),
        .I1(column_count[7]),
        .I2(column_count[9]),
        .O(temp1_Hsync));
  LUT5 #(
    .INIT(32'h007F00FF)) 
    out_Vsync_reg_srl3_i_1
       (.I0(row_count[6]),
        .I1(row_count[5]),
        .I2(row_count[8]),
        .I3(row_count[9]),
        .I4(row_count[7]),
        .O(temp1_Vsync));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00FF00BF)) 
    \row_count[0]_i_1__1 
       (.I0(\row_count[3]_i_2__0_n_0 ),
        .I1(row_count[3]),
        .I2(row_count[2]),
        .I3(row_count[0]),
        .I4(row_count[1]),
        .O(\row_count[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \row_count[1]_i_1__1 
       (.I0(row_count[0]),
        .I1(row_count[1]),
        .O(\row_count[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h33CCCCC4)) 
    \row_count[2]_i_1__1 
       (.I0(row_count[3]),
        .I1(row_count[2]),
        .I2(\row_count[3]_i_2__0_n_0 ),
        .I3(row_count[1]),
        .I4(row_count[0]),
        .O(\row_count[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h66CCCCC4)) 
    \row_count[3]_i_1__1 
       (.I0(row_count[2]),
        .I1(row_count[3]),
        .I2(\row_count[3]_i_2__0_n_0 ),
        .I3(row_count[1]),
        .I4(row_count[0]),
        .O(\row_count[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \row_count[3]_i_2__0 
       (.I0(row_count[5]),
        .I1(row_count[6]),
        .I2(row_count[8]),
        .I3(row_count[7]),
        .I4(row_count[4]),
        .I5(row_count[9]),
        .O(\row_count[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_count[4]_i_1__1 
       (.I0(row_count[2]),
        .I1(row_count[3]),
        .I2(row_count[0]),
        .I3(row_count[1]),
        .I4(row_count[4]),
        .O(\row_count[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_count[5]_i_1__1 
       (.I0(row_count[4]),
        .I1(row_count[1]),
        .I2(row_count[0]),
        .I3(row_count[3]),
        .I4(row_count[2]),
        .I5(row_count[5]),
        .O(\row_count[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \row_count[6]_i_1__1 
       (.I0(\row_count[8]_i_2__0_n_0 ),
        .I1(row_count[4]),
        .I2(row_count[5]),
        .I3(row_count[6]),
        .O(\row_count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \row_count[7]_i_1__1 
       (.I0(\row_count[8]_i_2__0_n_0 ),
        .I1(row_count[5]),
        .I2(row_count[4]),
        .I3(row_count[6]),
        .I4(row_count[7]),
        .O(\row_count[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \row_count[8]_i_1__1 
       (.I0(\row_count[8]_i_2__0_n_0 ),
        .I1(row_count[6]),
        .I2(row_count[4]),
        .I3(row_count[5]),
        .I4(row_count[7]),
        .I5(row_count[8]),
        .O(\row_count[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_count[8]_i_2__0 
       (.I0(row_count[1]),
        .I1(row_count[0]),
        .I2(row_count[3]),
        .I3(row_count[2]),
        .O(\row_count[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFFF1000EFFC1000)) 
    \row_count[9]_i_1__1 
       (.I0(\row_count[9]_i_2__1_n_0 ),
        .I1(\row_count[9]_i_3__0_n_0 ),
        .I2(row_count[0]),
        .I3(row_count[1]),
        .I4(row_count[9]),
        .I5(\row_count[9]_i_4__1_n_0 ),
        .O(\row_count[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_count[9]_i_2__1 
       (.I0(row_count[7]),
        .I1(row_count[5]),
        .I2(row_count[4]),
        .I3(row_count[6]),
        .I4(row_count[8]),
        .O(\row_count[9]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \row_count[9]_i_3__0 
       (.I0(row_count[2]),
        .I1(row_count[3]),
        .O(\row_count[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_count[9]_i_4__1 
       (.I0(row_count[4]),
        .I1(row_count[7]),
        .I2(row_count[8]),
        .I3(row_count[6]),
        .I4(row_count[5]),
        .O(\row_count[9]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[0] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[0]_i_1__1_n_0 ),
        .Q(row_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[1] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[1]_i_1__1_n_0 ),
        .Q(row_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[2] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[2]_i_1__1_n_0 ),
        .Q(row_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[3] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[3]_i_1__1_n_0 ),
        .Q(row_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[4] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[4]_i_1__1_n_0 ),
        .Q(row_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[5] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[5]_i_1__1_n_0 ),
        .Q(row_count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[6] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[6]_i_1__1_n_0 ),
        .Q(row_count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[7] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[7]_i_1__1_n_0 ),
        .Q(row_count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[8] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[8]_i_1__1_n_0 ),
        .Q(row_count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[9] 
       (.C(CLK),
        .CE(p_0_in),
        .D(\row_count[9]_i_1__1_n_0 ),
        .Q(row_count[9]),
        .R(1'b0));
endmodule

module VGA_Sync_to_Count
   (\column_count_reg[8]_0 ,
    \row_count_reg[6]_0 ,
    out_Hsync0,
    out_Vsync0,
    temp1_Hsync,
    clock_25Mhz_BUFG,
    temp1_Vsync);
  output \column_count_reg[8]_0 ;
  output \row_count_reg[6]_0 ;
  output out_Hsync0;
  output out_Vsync0;
  input temp1_Hsync;
  input clock_25Mhz_BUFG;
  input temp1_Vsync;

  wire clock_25Mhz_BUFG;
  wire [9:0]column_count;
  wire \column_count[0]_i_1__0_n_0 ;
  wire \column_count[1]_i_1__0_n_0 ;
  wire \column_count[2]_i_1__0_n_0 ;
  wire \column_count[3]_i_1__0_n_0 ;
  wire \column_count[4]_i_1__0_n_0 ;
  wire \column_count[5]_i_1__0_n_0 ;
  wire \column_count[6]_i_1__0_n_0 ;
  wire \column_count[7]_i_1__1_n_0 ;
  wire \column_count[8]_i_1__0_n_0 ;
  wire \column_count[9]_i_1__0_n_0 ;
  wire \column_count[9]_i_2__0_n_0 ;
  wire \column_count_reg[8]_0 ;
  wire out_Hsync0;
  wire out_Hsync_i_2_n_0;
  wire out_Hsync_i_3_n_0;
  wire out_Vsync0;
  wire out_Vsync_i_2_n_0;
  wire row_count;
  wire \row_count[0]_i_1__0_n_0 ;
  wire \row_count[1]_i_1__0_n_0 ;
  wire \row_count[2]_i_1__0_n_0 ;
  wire \row_count[3]_i_1__0_n_0 ;
  wire \row_count[3]_i_2_n_0 ;
  wire \row_count[4]_i_1__0_n_0 ;
  wire \row_count[5]_i_1__0_n_0 ;
  wire \row_count[6]_i_1__0_n_0 ;
  wire \row_count[7]_i_1__0_n_0 ;
  wire \row_count[8]_i_1__0_n_0 ;
  wire \row_count[8]_i_2_n_0 ;
  wire \row_count[9]_i_2__0_n_0 ;
  wire \row_count[9]_i_3__1_n_0 ;
  wire \row_count[9]_i_4__0_n_0 ;
  wire \row_count[9]_i_5__0_n_0 ;
  wire \row_count[9]_i_6__0_n_0 ;
  wire \row_count_reg[6]_0 ;
  wire \row_count_reg_n_0_[0] ;
  wire \row_count_reg_n_0_[1] ;
  wire \row_count_reg_n_0_[2] ;
  wire \row_count_reg_n_0_[3] ;
  wire \row_count_reg_n_0_[4] ;
  wire \row_count_reg_n_0_[5] ;
  wire \row_count_reg_n_0_[6] ;
  wire \row_count_reg_n_0_[7] ;
  wire \row_count_reg_n_0_[8] ;
  wire \row_count_reg_n_0_[9] ;
  wire temp1_Hsync;
  wire temp1_Vsync;

  LUT1 #(
    .INIT(2'h1)) 
    \column_count[0]_i_1__0 
       (.I0(column_count[0]),
        .O(\column_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \column_count[1]_i_1__0 
       (.I0(column_count[0]),
        .I1(column_count[1]),
        .O(\column_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \column_count[2]_i_1__0 
       (.I0(column_count[2]),
        .I1(column_count[1]),
        .I2(column_count[0]),
        .O(\column_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \column_count[3]_i_1__0 
       (.I0(column_count[3]),
        .I1(column_count[0]),
        .I2(column_count[1]),
        .I3(column_count[2]),
        .O(\column_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \column_count[4]_i_1__0 
       (.I0(column_count[4]),
        .I1(column_count[2]),
        .I2(column_count[1]),
        .I3(column_count[0]),
        .I4(column_count[3]),
        .O(\column_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \column_count[5]_i_1__0 
       (.I0(column_count[5]),
        .I1(column_count[4]),
        .I2(column_count[3]),
        .I3(column_count[0]),
        .I4(column_count[1]),
        .I5(column_count[2]),
        .O(\column_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \column_count[6]_i_1__0 
       (.I0(column_count[6]),
        .I1(column_count[4]),
        .I2(column_count[5]),
        .I3(out_Hsync_i_2_n_0),
        .O(\column_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \column_count[7]_i_1__1 
       (.I0(column_count[7]),
        .I1(column_count[6]),
        .I2(column_count[5]),
        .I3(column_count[4]),
        .I4(out_Hsync_i_2_n_0),
        .O(\column_count[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \column_count[8]_i_1__0 
       (.I0(column_count[8]),
        .I1(out_Hsync_i_2_n_0),
        .I2(column_count[4]),
        .I3(column_count[5]),
        .I4(column_count[6]),
        .I5(column_count[7]),
        .O(\column_count[8]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \column_count[9]_i_1__0 
       (.I0(column_count[9]),
        .I1(\column_count[9]_i_2__0_n_0 ),
        .I2(column_count[8]),
        .O(\column_count[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \column_count[9]_i_2__0 
       (.I0(column_count[7]),
        .I1(column_count[6]),
        .I2(column_count[5]),
        .I3(column_count[4]),
        .I4(out_Hsync_i_2_n_0),
        .O(\column_count[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[0]_i_1__0_n_0 ),
        .Q(column_count[0]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[1]_i_1__0_n_0 ),
        .Q(column_count[1]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[2]_i_1__0_n_0 ),
        .Q(column_count[2]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[3]_i_1__0_n_0 ),
        .Q(column_count[3]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[4]_i_1__0_n_0 ),
        .Q(column_count[4]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[5]_i_1__0_n_0 ),
        .Q(column_count[5]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[6]_i_1__0_n_0 ),
        .Q(column_count[6]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[7]_i_1__1_n_0 ),
        .Q(column_count[7]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[8]_i_1__0_n_0 ),
        .Q(column_count[8]),
        .R(row_count));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[9]_i_1__0_n_0 ),
        .Q(column_count[9]),
        .R(row_count));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    out_Hsync_i_1
       (.I0(out_Hsync_i_2_n_0),
        .I1(column_count[4]),
        .I2(column_count[6]),
        .I3(column_count[5]),
        .I4(out_Hsync_i_3_n_0),
        .O(out_Hsync0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    out_Hsync_i_2
       (.I0(column_count[3]),
        .I1(column_count[0]),
        .I2(column_count[1]),
        .I3(column_count[2]),
        .O(out_Hsync_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF80FFFFFFFFFF)) 
    out_Hsync_i_3
       (.I0(column_count[4]),
        .I1(column_count[5]),
        .I2(column_count[6]),
        .I3(column_count[7]),
        .I4(column_count[8]),
        .I5(column_count[9]),
        .O(out_Hsync_i_3_n_0));
  (* srl_name = "\\sync_porch/Sync_to_Count_wrap/out_Hsync_reg_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    out_Hsync_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock_25Mhz_BUFG),
        .D(temp1_Hsync),
        .Q(\column_count_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    out_Vsync_i_1
       (.I0(out_Vsync_i_2_n_0),
        .I1(\row_count_reg_n_0_[4] ),
        .I2(\row_count_reg_n_0_[5] ),
        .I3(\row_count_reg_n_0_[3] ),
        .I4(\row_count_reg_n_0_[2] ),
        .O(out_Vsync0));
  LUT6 #(
    .INIT(64'hF1FFFFFFFFFFFFFF)) 
    out_Vsync_i_2
       (.I0(\row_count_reg_n_0_[0] ),
        .I1(\row_count_reg_n_0_[1] ),
        .I2(\row_count_reg_n_0_[9] ),
        .I3(\row_count_reg_n_0_[8] ),
        .I4(\row_count_reg_n_0_[7] ),
        .I5(\row_count_reg_n_0_[6] ),
        .O(out_Vsync_i_2_n_0));
  (* srl_name = "\\sync_porch/Sync_to_Count_wrap/out_Vsync_reg_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    out_Vsync_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clock_25Mhz_BUFG),
        .D(temp1_Vsync),
        .Q(\row_count_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00FF00BF)) 
    \row_count[0]_i_1__0 
       (.I0(\row_count[3]_i_2_n_0 ),
        .I1(\row_count_reg_n_0_[3] ),
        .I2(\row_count_reg_n_0_[2] ),
        .I3(\row_count_reg_n_0_[0] ),
        .I4(\row_count_reg_n_0_[1] ),
        .O(\row_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \row_count[1]_i_1__0 
       (.I0(\row_count_reg_n_0_[0] ),
        .I1(\row_count_reg_n_0_[1] ),
        .O(\row_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h33CCCCC4)) 
    \row_count[2]_i_1__0 
       (.I0(\row_count_reg_n_0_[3] ),
        .I1(\row_count_reg_n_0_[2] ),
        .I2(\row_count[3]_i_2_n_0 ),
        .I3(\row_count_reg_n_0_[1] ),
        .I4(\row_count_reg_n_0_[0] ),
        .O(\row_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h66CCCCC4)) 
    \row_count[3]_i_1__0 
       (.I0(\row_count_reg_n_0_[2] ),
        .I1(\row_count_reg_n_0_[3] ),
        .I2(\row_count[3]_i_2_n_0 ),
        .I3(\row_count_reg_n_0_[1] ),
        .I4(\row_count_reg_n_0_[0] ),
        .O(\row_count[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \row_count[3]_i_2 
       (.I0(\row_count_reg_n_0_[5] ),
        .I1(\row_count_reg_n_0_[6] ),
        .I2(\row_count_reg_n_0_[8] ),
        .I3(\row_count_reg_n_0_[7] ),
        .I4(\row_count_reg_n_0_[4] ),
        .I5(\row_count_reg_n_0_[9] ),
        .O(\row_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_count[4]_i_1__0 
       (.I0(\row_count_reg_n_0_[2] ),
        .I1(\row_count_reg_n_0_[3] ),
        .I2(\row_count_reg_n_0_[0] ),
        .I3(\row_count_reg_n_0_[1] ),
        .I4(\row_count_reg_n_0_[4] ),
        .O(\row_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_count[5]_i_1__0 
       (.I0(\row_count_reg_n_0_[4] ),
        .I1(\row_count_reg_n_0_[1] ),
        .I2(\row_count_reg_n_0_[0] ),
        .I3(\row_count_reg_n_0_[3] ),
        .I4(\row_count_reg_n_0_[2] ),
        .I5(\row_count_reg_n_0_[5] ),
        .O(\row_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \row_count[6]_i_1__0 
       (.I0(\row_count[8]_i_2_n_0 ),
        .I1(\row_count_reg_n_0_[4] ),
        .I2(\row_count_reg_n_0_[5] ),
        .I3(\row_count_reg_n_0_[6] ),
        .O(\row_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \row_count[7]_i_1__0 
       (.I0(\row_count[8]_i_2_n_0 ),
        .I1(\row_count_reg_n_0_[5] ),
        .I2(\row_count_reg_n_0_[4] ),
        .I3(\row_count_reg_n_0_[6] ),
        .I4(\row_count_reg_n_0_[7] ),
        .O(\row_count[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \row_count[8]_i_1__0 
       (.I0(\row_count[8]_i_2_n_0 ),
        .I1(\row_count_reg_n_0_[6] ),
        .I2(\row_count_reg_n_0_[4] ),
        .I3(\row_count_reg_n_0_[5] ),
        .I4(\row_count_reg_n_0_[7] ),
        .I5(\row_count_reg_n_0_[8] ),
        .O(\row_count[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_count[8]_i_2 
       (.I0(\row_count_reg_n_0_[1] ),
        .I1(\row_count_reg_n_0_[0] ),
        .I2(\row_count_reg_n_0_[3] ),
        .I3(\row_count_reg_n_0_[2] ),
        .O(\row_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \row_count[9]_i_1__0 
       (.I0(\row_count[9]_i_3__1_n_0 ),
        .I1(column_count[7]),
        .I2(column_count[9]),
        .I3(column_count[8]),
        .I4(column_count[5]),
        .I5(column_count[6]),
        .O(row_count));
  LUT6 #(
    .INIT(64'hEFFF1000EFFC1000)) 
    \row_count[9]_i_2__0 
       (.I0(\row_count[9]_i_4__0_n_0 ),
        .I1(\row_count[9]_i_5__0_n_0 ),
        .I2(\row_count_reg_n_0_[0] ),
        .I3(\row_count_reg_n_0_[1] ),
        .I4(\row_count_reg_n_0_[9] ),
        .I5(\row_count[9]_i_6__0_n_0 ),
        .O(\row_count[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \row_count[9]_i_3__1 
       (.I0(column_count[2]),
        .I1(column_count[1]),
        .I2(column_count[0]),
        .I3(column_count[3]),
        .I4(column_count[4]),
        .O(\row_count[9]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_count[9]_i_4__0 
       (.I0(\row_count_reg_n_0_[7] ),
        .I1(\row_count_reg_n_0_[5] ),
        .I2(\row_count_reg_n_0_[4] ),
        .I3(\row_count_reg_n_0_[6] ),
        .I4(\row_count_reg_n_0_[8] ),
        .O(\row_count[9]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \row_count[9]_i_5__0 
       (.I0(\row_count_reg_n_0_[2] ),
        .I1(\row_count_reg_n_0_[3] ),
        .O(\row_count[9]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_count[9]_i_6__0 
       (.I0(\row_count_reg_n_0_[4] ),
        .I1(\row_count_reg_n_0_[7] ),
        .I2(\row_count_reg_n_0_[8] ),
        .I3(\row_count_reg_n_0_[6] ),
        .I4(\row_count_reg_n_0_[5] ),
        .O(\row_count[9]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[0]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[1]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[2]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[3]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[4]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[5]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[6]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[7]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[8]_i_1__0_n_0 ),
        .Q(\row_count_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(row_count),
        .D(\row_count[9]_i_2__0_n_0 ),
        .Q(\row_count_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "VGA_Sync_to_Count" *) 
module VGA_Sync_to_Count_5
   (Q,
    \row_count_reg[7]_0 ,
    small_row_count,
    \row_count_reg[9]_0 ,
    D,
    \column_count_reg[7]_0 ,
    fixed_column_count14_out,
    \row_count_reg[9]_1 ,
    \column_count_reg[6]_0 ,
    \column_count_reg[7]_1 ,
    fixed_column_count1,
    \row_count_reg[8]_0 ,
    \row_count_reg[8]_1 ,
    \column_count_reg[9]_0 ,
    fixed_column_count14_out_0,
    \column_count_reg[8]_0 ,
    fixed_column_count14_out_1,
    \column_count_reg[9]_1 ,
    \row_count_reg[5]_0 ,
    \row_count_reg[8]_2 ,
    \column_count_reg[6]_1 ,
    draw_ball0,
    DI,
    S,
    \row_count_reg[4]_0 ,
    \column_count_reg[9]_2 ,
    \column_count_reg[4]_0 ,
    \column_count_reg[6]_2 ,
    \counter_reg[0] ,
    \counter_reg[0]_0 ,
    \counter_reg[0]_1 ,
    \row_count_reg[8]_3 ,
    \column_count_reg[6]_3 ,
    draw_change,
    CO,
    draw_ball_reg,
    draw_ball_reg_0,
    draw_ball_reg_1,
    draw_paddle_p11_carry,
    draw_paddle_p21_carry,
    draw_paddle_p2_reg,
    draw_g_reg,
    clock_25Mhz_BUFG);
  output [4:0]Q;
  output \row_count_reg[7]_0 ;
  output [5:0]small_row_count;
  output \row_count_reg[9]_0 ;
  output [3:0]D;
  output [2:0]\column_count_reg[7]_0 ;
  output fixed_column_count14_out;
  output \row_count_reg[9]_1 ;
  output \column_count_reg[6]_0 ;
  output [3:0]\column_count_reg[7]_1 ;
  output fixed_column_count1;
  output [4:0]\row_count_reg[8]_0 ;
  output [3:0]\row_count_reg[8]_1 ;
  output [4:0]\column_count_reg[9]_0 ;
  output fixed_column_count14_out_0;
  output [3:0]\column_count_reg[8]_0 ;
  output fixed_column_count14_out_1;
  output [3:0]\column_count_reg[9]_1 ;
  output \row_count_reg[5]_0 ;
  output [4:0]\row_count_reg[8]_2 ;
  output \column_count_reg[6]_1 ;
  output draw_ball0;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\row_count_reg[4]_0 ;
  output \column_count_reg[9]_2 ;
  output \column_count_reg[4]_0 ;
  output \column_count_reg[6]_2 ;
  output \counter_reg[0] ;
  output \counter_reg[0]_0 ;
  output \counter_reg[0]_1 ;
  output [3:0]\row_count_reg[8]_3 ;
  output \column_count_reg[6]_3 ;
  input draw_change;
  input [0:0]CO;
  input draw_ball_reg;
  input [2:0]draw_ball_reg_0;
  input [5:0]draw_ball_reg_1;
  input [1:0]draw_paddle_p11_carry;
  input [1:0]draw_paddle_p21_carry;
  input [0:0]draw_paddle_p2_reg;
  input [1:0]draw_g_reg;
  input clock_25Mhz_BUFG;

  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]DI;
  wire [4:0]Q;
  wire [0:0]S;
  wire clock_25Mhz_BUFG;
  wire \column_count[0]_i_1_n_0 ;
  wire \column_count[1]_i_1_n_0 ;
  wire \column_count[2]_i_1_n_0 ;
  wire \column_count[3]_i_1_n_0 ;
  wire \column_count[4]_i_1_n_0 ;
  wire \column_count[5]_i_1_n_0 ;
  wire \column_count[6]_i_1_n_0 ;
  wire \column_count[7]_i_1_n_0 ;
  wire \column_count[8]_i_1_n_0 ;
  wire \column_count[9]_i_1_n_0 ;
  wire \column_count[9]_i_2_n_0 ;
  wire \column_count_reg[4]_0 ;
  wire \column_count_reg[6]_0 ;
  wire \column_count_reg[6]_1 ;
  wire \column_count_reg[6]_2 ;
  wire \column_count_reg[6]_3 ;
  wire [2:0]\column_count_reg[7]_0 ;
  wire [3:0]\column_count_reg[7]_1 ;
  wire [3:0]\column_count_reg[8]_0 ;
  wire [4:0]\column_count_reg[9]_0 ;
  wire [3:0]\column_count_reg[9]_1 ;
  wire \column_count_reg[9]_2 ;
  wire \column_count_reg_n_0_[0] ;
  wire \column_count_reg_n_0_[1] ;
  wire \column_count_reg_n_0_[2] ;
  wire \column_count_reg_n_0_[3] ;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire display_i_2__0_n_0;
  wire display_i_2_n_0;
  wire display_i_3__0_n_0;
  wire display_i_3_n_0;
  wire draw_ball0;
  wire draw_ball_i_2_n_0;
  wire draw_ball_i_3_n_0;
  wire draw_ball_i_5_n_0;
  wire draw_ball_reg;
  wire [2:0]draw_ball_reg_0;
  wire [5:0]draw_ball_reg_1;
  wire draw_change;
  wire draw_g_i_2_n_0;
  wire draw_g_i_3_n_0;
  wire [1:0]draw_g_reg;
  wire [1:0]draw_paddle_p11_carry;
  wire [1:0]draw_paddle_p21_carry;
  wire draw_paddle_p2_i_6_n_0;
  wire [0:0]draw_paddle_p2_reg;
  wire draw_r_i_2_n_0;
  wire draw_r_i_3_n_0;
  wire draw_r_i_5_n_0;
  wire draw_r_i_6_n_0;
  wire draw_s_i_10__0_n_0;
  wire draw_s_i_11__1_n_0;
  wire draw_s_i_12_n_0;
  wire draw_s_i_13_n_0;
  wire draw_s_i_14_n_0;
  wire draw_s_i_15_n_0;
  wire draw_s_i_16_n_0;
  wire draw_s_i_17_n_0;
  wire draw_s_i_18__1_n_0;
  wire draw_s_i_19__1_n_0;
  wire draw_s_i_20__0_n_0;
  wire draw_s_i_21__1_n_0;
  wire draw_s_i_22__0_n_0;
  wire draw_s_i_23_n_0;
  wire draw_s_i_24_n_0;
  wire draw_s_i_2__2_n_0;
  wire draw_s_i_3_n_0;
  wire draw_s_i_4__2_n_0;
  wire draw_s_i_5__2_n_0;
  wire draw_s_i_6_n_0;
  wire draw_s_i_7_n_0;
  wire draw_s_i_8_n_0;
  wire draw_s_i_9_n_0;
  wire draw_t_i_10__0_n_0;
  wire draw_t_i_10__1_n_0;
  wire draw_t_i_10_n_0;
  wire draw_t_i_11__0_n_0;
  wire draw_t_i_11__1_n_0;
  wire draw_t_i_11_n_0;
  wire draw_t_i_12__0_n_0;
  wire draw_t_i_12__1_n_0;
  wire draw_t_i_12_n_0;
  wire draw_t_i_13__0_n_0;
  wire draw_t_i_13__1_n_0;
  wire draw_t_i_13_n_0;
  wire draw_t_i_14_n_0;
  wire draw_t_i_15__0_n_0;
  wire draw_t_i_15_n_0;
  wire draw_t_i_16__0_n_0;
  wire draw_t_i_16_n_0;
  wire draw_t_i_17_n_0;
  wire draw_t_i_2__0_n_0;
  wire draw_t_i_2__1_n_0;
  wire draw_t_i_2_n_0;
  wire draw_t_i_3__0_n_0;
  wire draw_t_i_3__1_n_0;
  wire draw_t_i_3_n_0;
  wire draw_t_i_4__0_n_0;
  wire draw_t_i_4__1_n_0;
  wire draw_t_i_4_n_0;
  wire draw_t_i_5__0_n_0;
  wire draw_t_i_5__1_n_0;
  wire draw_t_i_5_n_0;
  wire draw_t_i_6__0_n_0;
  wire draw_t_i_6__1_n_0;
  wire draw_t_i_6_n_0;
  wire draw_t_i_7__0_n_0;
  wire draw_t_i_7__1_n_0;
  wire draw_t_i_7_n_0;
  wire draw_t_i_8__0_n_0;
  wire draw_t_i_8__1_n_0;
  wire draw_t_i_8_n_0;
  wire draw_t_i_9__0_n_0;
  wire draw_t_i_9__1_n_0;
  wire draw_t_i_9_n_0;
  wire draw_t_reg_i_14_n_0;
  wire \draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ;
  wire \draw_wrap/Draw_Start_wrap/draw_r2_out ;
  wire fixed_column_count1;
  wire fixed_column_count14_out;
  wire fixed_column_count14_out_0;
  wire fixed_column_count14_out_1;
  wire \fixed_column_count[2]_i_2_n_0 ;
  wire \fixed_column_count[5]_i_2_n_0 ;
  wire \fixed_row_count[4]_i_2__1_n_0 ;
  wire \fixed_row_count[4]_i_2_n_0 ;
  wire \fixed_row_count[4]_i_3_n_0 ;
  wire \fixed_row_count[4]_i_4_n_0 ;
  wire \fixed_row_count[4]_i_5_n_0 ;
  wire \row_count[0]_i_1_n_0 ;
  wire \row_count[1]_i_1_n_0 ;
  wire \row_count[2]_i_1_n_0 ;
  wire \row_count[3]_i_1_n_0 ;
  wire \row_count[4]_i_1_n_0 ;
  wire \row_count[5]_i_1_n_0 ;
  wire \row_count[6]_i_1_n_0 ;
  wire \row_count[7]_i_1_n_0 ;
  wire \row_count[8]_i_1_n_0 ;
  wire \row_count[8]_i_2__1_n_0 ;
  wire \row_count[9]_i_1_n_0 ;
  wire \row_count[9]_i_2_n_0 ;
  wire \row_count[9]_i_3_n_0 ;
  wire \row_count[9]_i_4_n_0 ;
  wire \row_count[9]_i_5_n_0 ;
  wire \row_count[9]_i_6_n_0 ;
  wire [0:0]\row_count_reg[4]_0 ;
  wire \row_count_reg[5]_0 ;
  wire \row_count_reg[7]_0 ;
  wire [4:0]\row_count_reg[8]_0 ;
  wire [3:0]\row_count_reg[8]_1 ;
  wire [4:0]\row_count_reg[8]_2 ;
  wire [3:0]\row_count_reg[8]_3 ;
  wire \row_count_reg[9]_0 ;
  wire \row_count_reg[9]_1 ;
  wire \row_count_reg_n_0_[0] ;
  wire \row_count_reg_n_0_[1] ;
  wire \row_count_reg_n_0_[2] ;
  wire \row_count_reg_n_0_[3] ;
  wire [3:3]small_column_count__0;
  wire [5:0]small_row_count;
  wire ten_i_2_n_0;
  wire ten_i_3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \column_count[0]_i_1 
       (.I0(\column_count_reg_n_0_[0] ),
        .O(\column_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \column_count[1]_i_1 
       (.I0(\column_count_reg_n_0_[0] ),
        .I1(\column_count_reg_n_0_[1] ),
        .O(\column_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \column_count[2]_i_1 
       (.I0(\column_count_reg_n_0_[2] ),
        .I1(\column_count_reg_n_0_[1] ),
        .I2(\column_count_reg_n_0_[0] ),
        .O(\column_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \column_count[3]_i_1 
       (.I0(\column_count_reg_n_0_[3] ),
        .I1(\column_count_reg_n_0_[0] ),
        .I2(\column_count_reg_n_0_[1] ),
        .I3(\column_count_reg_n_0_[2] ),
        .O(\column_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \column_count[4]_i_1 
       (.I0(Q[0]),
        .I1(\column_count_reg_n_0_[2] ),
        .I2(\column_count_reg_n_0_[1] ),
        .I3(\column_count_reg_n_0_[0] ),
        .I4(\column_count_reg_n_0_[3] ),
        .O(\column_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \column_count[5]_i_1 
       (.I0(\column_count_reg_n_0_[2] ),
        .I1(\column_count_reg_n_0_[1] ),
        .I2(\column_count_reg_n_0_[0] ),
        .I3(\column_count_reg_n_0_[3] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\column_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \column_count[6]_i_1 
       (.I0(Q[2]),
        .I1(display_i_3_n_0),
        .I2(\column_count_reg_n_0_[3] ),
        .I3(\column_count_reg_n_0_[0] ),
        .I4(\column_count_reg_n_0_[1] ),
        .I5(\column_count_reg_n_0_[2] ),
        .O(\column_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \column_count[7]_i_1 
       (.I0(small_column_count__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\row_count[9]_i_3_n_0 ),
        .O(\column_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \column_count[8]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(small_column_count__0),
        .I3(\row_count[9]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\column_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \column_count[9]_i_1 
       (.I0(Q[4]),
        .I1(\column_count[9]_i_2_n_0 ),
        .I2(\column_count_reg_n_0_[3] ),
        .I3(\column_count_reg_n_0_[0] ),
        .I4(\column_count_reg_n_0_[1] ),
        .I5(\column_count_reg_n_0_[2] ),
        .O(\column_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \column_count[9]_i_2 
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\column_count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[0]_i_1_n_0 ),
        .Q(\column_count_reg_n_0_[0] ),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[1]_i_1_n_0 ),
        .Q(\column_count_reg_n_0_[1] ),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[2]_i_1_n_0 ),
        .Q(\column_count_reg_n_0_[2] ),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[3]_i_1_n_0 ),
        .Q(\column_count_reg_n_0_[3] ),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[4]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[5]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[6]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[7]_i_1_n_0 ),
        .Q(small_column_count__0),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[8]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\row_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\column_count[9]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\row_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000014)) 
    display_i_1
       (.I0(display_i_2__0_n_0),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(display_i_3_n_0),
        .O(fixed_column_count1));
  LUT6 #(
    .INIT(64'h000000000A280000)) 
    display_i_1__0
       (.I0(display_i_2_n_0),
        .I1(small_row_count[1]),
        .I2(small_row_count[2]),
        .I3(small_row_count[0]),
        .I4(small_row_count[3]),
        .I5(display_i_3__0_n_0),
        .O(\row_count_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    display_i_1__1
       (.I0(\fixed_row_count[4]_i_2_n_0 ),
        .O(\column_count_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    display_i_1__2
       (.I0(\fixed_row_count[4]_i_2__1_n_0 ),
        .O(\column_count_reg[6]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    display_i_1__3
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .O(\column_count_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h0F00000000000010)) 
    display_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(small_column_count__0),
        .O(display_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFDFDFFFDFDFFF)) 
    display_i_2__0
       (.I0(small_row_count[4]),
        .I1(small_row_count[5]),
        .I2(small_row_count[3]),
        .I3(small_row_count[0]),
        .I4(small_row_count[2]),
        .I5(small_row_count[1]),
        .O(display_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    display_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(display_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hB)) 
    display_i_3__0
       (.I0(small_row_count[5]),
        .I1(small_row_count[4]),
        .O(display_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000006660000)) 
    draw_b_i_1
       (.I0(draw_r_i_2_n_0),
        .I1(draw_g_reg[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(draw_g_i_2_n_0),
        .O(\counter_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0004)) 
    draw_ball_i_1
       (.I0(draw_ball_i_2_n_0),
        .I1(draw_ball_i_3_n_0),
        .I2(draw_ball_reg),
        .I3(draw_ball_i_5_n_0),
        .O(draw_ball0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    draw_ball_i_2
       (.I0(small_row_count[0]),
        .I1(draw_ball_reg_1[0]),
        .I2(draw_ball_reg_1[1]),
        .I3(small_row_count[1]),
        .I4(draw_ball_reg_1[2]),
        .I5(small_row_count[2]),
        .O(draw_ball_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    draw_ball_i_3
       (.I0(small_row_count[3]),
        .I1(draw_ball_reg_1[3]),
        .I2(draw_ball_reg_1[4]),
        .I3(small_row_count[4]),
        .I4(small_row_count[5]),
        .I5(draw_ball_reg_1[5]),
        .O(draw_ball_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    draw_ball_i_5
       (.I0(Q[3]),
        .I1(draw_ball_reg_0[1]),
        .I2(Q[4]),
        .I3(draw_ball_reg_0[2]),
        .I4(draw_ball_reg_0[0]),
        .I5(small_column_count__0),
        .O(draw_ball_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000093C0000)) 
    draw_g_i_1
       (.I0(draw_g_reg[0]),
        .I1(draw_g_reg[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(draw_g_i_2_n_0),
        .O(\counter_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    draw_g_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(draw_g_i_3_n_0),
        .O(draw_g_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    draw_g_i_3
       (.I0(small_row_count[0]),
        .I1(small_row_count[1]),
        .I2(small_row_count[3]),
        .I3(small_row_count[2]),
        .I4(small_row_count[5]),
        .I5(small_row_count[4]),
        .O(draw_g_i_3_n_0));
  LUT4 #(
    .INIT(16'h044F)) 
    draw_paddle_p11_carry_i_4
       (.I0(small_row_count[0]),
        .I1(draw_paddle_p11_carry[0]),
        .I2(draw_paddle_p11_carry[1]),
        .I3(small_row_count[1]),
        .O(DI));
  LUT4 #(
    .INIT(16'h6006)) 
    draw_paddle_p11_carry_i_8
       (.I0(small_row_count[1]),
        .I1(draw_paddle_p11_carry[1]),
        .I2(small_row_count[0]),
        .I3(draw_paddle_p11_carry[0]),
        .O(S));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    draw_paddle_p1_i_3
       (.I0(Q[2]),
        .I1(small_column_count__0),
        .I2(\fixed_column_count[2]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(CO),
        .O(\column_count_reg[6]_1 ));
  LUT4 #(
    .INIT(16'h044F)) 
    draw_paddle_p21_carry_i_4
       (.I0(small_row_count[0]),
        .I1(draw_paddle_p21_carry[0]),
        .I2(small_row_count[1]),
        .I3(draw_paddle_p21_carry[1]),
        .O(\row_count_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    draw_paddle_p2_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(draw_paddle_p2_i_6_n_0),
        .I4(draw_paddle_p2_reg),
        .O(\column_count_reg[9]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    draw_paddle_p2_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(draw_paddle_p2_i_6_n_0));
  LUT5 #(
    .INIT(32'h00009936)) 
    draw_r_i_1
       (.I0(draw_g_reg[0]),
        .I1(draw_g_reg[1]),
        .I2(draw_r_i_2_n_0),
        .I3(draw_r_i_3_n_0),
        .I4(\draw_wrap/Draw_Start_wrap/draw_r2_out ),
        .O(\counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    draw_r_i_2
       (.I0(display_i_3__0_n_0),
        .I1(draw_r_i_5_n_0),
        .I2(small_row_count[1]),
        .I3(small_row_count[0]),
        .I4(draw_r_i_6_n_0),
        .I5(Q[1]),
        .O(draw_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    draw_r_i_3
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(draw_g_i_2_n_0),
        .O(draw_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    draw_r_i_4
       (.I0(draw_g_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\draw_wrap/Draw_Start_wrap/draw_r2_out ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    draw_r_i_5
       (.I0(small_row_count[3]),
        .I1(small_row_count[2]),
        .O(draw_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    draw_r_i_6
       (.I0(Q[2]),
        .I1(small_column_count__0),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(draw_r_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000055555540)) 
    draw_s_i_1
       (.I0(draw_s_i_2__2_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\fixed_column_count[2]_i_2_n_0 ),
        .I4(small_column_count__0),
        .I5(draw_s_i_3_n_0),
        .O(\column_count_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h000000F800000000)) 
    draw_s_i_10__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(small_column_count__0),
        .O(draw_s_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hDDDDFDDDDDDDDDDF)) 
    draw_s_i_11__1
       (.I0(draw_s_i_4__2_n_0),
        .I1(draw_s_i_19__1_n_0),
        .I2(Q[2]),
        .I3(\fixed_row_count[4]_i_3_n_0 ),
        .I4(\fixed_row_count[4]_i_4_n_0 ),
        .I5(small_column_count__0),
        .O(draw_s_i_11__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA0A8AAAAAAA8)) 
    draw_s_i_12
       (.I0(small_row_count[0]),
        .I1(draw_s_i_20__0_n_0),
        .I2(Q[4]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(\row_count[9]_i_4_n_0 ),
        .O(draw_s_i_12_n_0));
  LUT6 #(
    .INIT(64'h0333332333333323)) 
    draw_s_i_13
       (.I0(draw_s_i_21__1_n_0),
        .I1(small_row_count[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(draw_t_i_17_n_0),
        .O(draw_s_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000040C0C080)) 
    draw_s_i_14
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(draw_s_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFA99FFFFEFAF)) 
    draw_s_i_15
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(small_column_count__0),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(draw_s_i_15_n_0));
  LUT6 #(
    .INIT(64'hFEFFFFCFFFFFFFEF)) 
    draw_s_i_16
       (.I0(small_column_count__0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(draw_s_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAEAA)) 
    draw_s_i_17
       (.I0(draw_s_i_19__1_n_0),
        .I1(small_row_count[0]),
        .I2(small_row_count[1]),
        .I3(draw_s_i_22__0_n_0),
        .I4(draw_s_i_23_n_0),
        .I5(draw_t_i_13__0_n_0),
        .O(draw_s_i_17_n_0));
  LUT6 #(
    .INIT(64'hE000E0F0E000E000)) 
    draw_s_i_18__1
       (.I0(draw_t_i_3__1_n_0),
        .I1(draw_s_i_24_n_0),
        .I2(small_row_count[1]),
        .I3(small_row_count[0]),
        .I4(draw_s_i_21__1_n_0),
        .I5(\row_count[9]_i_4_n_0 ),
        .O(draw_s_i_18__1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    draw_s_i_19__1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(small_column_count__0),
        .O(draw_s_i_19__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    draw_s_i_20__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(draw_s_i_20__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    draw_s_i_21__1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .O(draw_s_i_21__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    draw_s_i_22__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(draw_s_i_22__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    draw_s_i_23
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(small_column_count__0),
        .O(draw_s_i_23_n_0));
  LUT6 #(
    .INIT(64'h0000000002000400)) 
    draw_s_i_24
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(draw_s_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4FF)) 
    draw_s_i_2__2
       (.I0(draw_s_i_4__2_n_0),
        .I1(small_row_count[3]),
        .I2(Q[4]),
        .I3(small_row_count[4]),
        .I4(small_row_count[5]),
        .I5(draw_s_i_5__2_n_0),
        .O(draw_s_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hAAAA9A99AAAA9695)) 
    draw_s_i_3
       (.I0(draw_change),
        .I1(small_row_count[2]),
        .I2(small_row_count[3]),
        .I3(draw_s_i_6_n_0),
        .I4(draw_s_i_7_n_0),
        .I5(draw_s_i_8_n_0),
        .O(draw_s_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h15)) 
    draw_s_i_4__2
       (.I0(small_row_count[2]),
        .I1(small_row_count[1]),
        .I2(small_row_count[0]),
        .O(draw_s_i_4__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    draw_s_i_5__2
       (.I0(small_row_count[1]),
        .I1(small_row_count[0]),
        .I2(small_row_count[3]),
        .I3(small_row_count[2]),
        .O(draw_s_i_5__2_n_0));
  LUT6 #(
    .INIT(64'h1110FFFFFFFFFFFF)) 
    draw_s_i_6
       (.I0(draw_s_i_9_n_0),
        .I1(draw_s_i_10__0_n_0),
        .I2(small_row_count[0]),
        .I3(small_row_count[2]),
        .I4(draw_s_i_11__1_n_0),
        .I5(small_row_count[1]),
        .O(draw_s_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFF0000)) 
    draw_s_i_7
       (.I0(draw_s_i_12_n_0),
        .I1(small_row_count[1]),
        .I2(draw_s_i_13_n_0),
        .I3(draw_s_i_14_n_0),
        .I4(display_i_3__0_n_0),
        .I5(small_row_count[3]),
        .O(draw_s_i_7_n_0));
  LUT6 #(
    .INIT(64'h000000000000FCCA)) 
    draw_s_i_8
       (.I0(draw_s_i_15_n_0),
        .I1(draw_s_i_16_n_0),
        .I2(small_row_count[0]),
        .I3(small_row_count[1]),
        .I4(draw_s_i_17_n_0),
        .I5(draw_s_i_18__1_n_0),
        .O(draw_s_i_8_n_0));
  LUT6 #(
    .INIT(64'h1544010000000000)) 
    draw_s_i_9
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(small_column_count__0),
        .I5(Q[3]),
        .O(draw_s_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000000404000FF)) 
    draw_t_i_1
       (.I0(small_row_count[3]),
        .I1(draw_t_i_2__1_n_0),
        .I2(draw_t_i_3__1_n_0),
        .I3(draw_t_i_4_n_0),
        .I4(small_row_count[4]),
        .I5(small_row_count[5]),
        .O(\row_count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFCEEFEDAECFFFFDF)) 
    draw_t_i_10
       (.I0(small_column_count__0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(draw_t_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000400000000840)) 
    draw_t_i_10__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(small_column_count__0),
        .O(draw_t_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hFEF7FFFFF7FBFFF7)) 
    draw_t_i_10__1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(small_column_count__0),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(draw_t_i_10__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFD0FFFFFEF7)) 
    draw_t_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(small_column_count__0),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(draw_t_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFF5415FFFCBF15)) 
    draw_t_i_11__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(small_column_count__0),
        .O(draw_t_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFBEFEFFFFF)) 
    draw_t_i_11__1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(draw_t_i_11__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFBFDFF)) 
    draw_t_i_12
       (.I0(small_column_count__0),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(draw_t_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFDBFFF)) 
    draw_t_i_12__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(small_column_count__0),
        .O(draw_t_i_12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3FF7)) 
    draw_t_i_12__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(draw_t_i_12__1_n_0));
  LUT6 #(
    .INIT(64'h0402000400024000)) 
    draw_t_i_13
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(draw_t_i_13_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    draw_t_i_13__0
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(draw_t_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h01)) 
    draw_t_i_13__1
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .O(draw_t_i_13__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFEFFF7F)) 
    draw_t_i_14
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(small_column_count__0),
        .O(draw_t_i_14_n_0));
  LUT6 #(
    .INIT(64'h000000200001C400)) 
    draw_t_i_15
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(small_column_count__0),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(draw_t_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFBF7FFF7FFFD37)) 
    draw_t_i_15__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(small_column_count__0),
        .I5(Q[2]),
        .O(draw_t_i_15__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF5EF7B9FF7)) 
    draw_t_i_16
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(draw_t_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    draw_t_i_16__0
       (.I0(small_column_count__0),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(draw_t_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    draw_t_i_17
       (.I0(small_column_count__0),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(draw_t_i_17_n_0));
  LUT6 #(
    .INIT(64'h0010000000101100)) 
    draw_t_i_1__0
       (.I0(small_row_count[5]),
        .I1(small_row_count[4]),
        .I2(draw_t_i_2_n_0),
        .I3(small_row_count[2]),
        .I4(small_row_count[3]),
        .I5(draw_t_i_3_n_0),
        .O(\row_count_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h1010101110101010)) 
    draw_t_i_1__1
       (.I0(small_row_count[5]),
        .I1(small_row_count[4]),
        .I2(draw_t_i_2__0_n_0),
        .I3(draw_t_i_3__0_n_0),
        .I4(small_row_count[2]),
        .I5(small_row_count[3]),
        .O(\row_count_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hD4D7D4D7D4D71417)) 
    draw_t_i_2
       (.I0(draw_t_i_4__0_n_0),
        .I1(small_row_count[1]),
        .I2(small_row_count[0]),
        .I3(draw_t_i_5_n_0),
        .I4(draw_t_i_6__0_n_0),
        .I5(draw_t_i_7__1_n_0),
        .O(draw_t_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F0F0B0B0F0F000F)) 
    draw_t_i_2__0
       (.I0(draw_t_i_4__1_n_0),
        .I1(draw_t_i_5__0_n_0),
        .I2(draw_t_i_6__1_n_0),
        .I3(draw_t_i_7__0_n_0),
        .I4(small_row_count[1]),
        .I5(small_row_count[0]),
        .O(draw_t_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00004540CFC04540)) 
    draw_t_i_2__1
       (.I0(small_row_count[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(small_row_count[0]),
        .I5(small_row_count[2]),
        .O(draw_t_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hF22F022FF2200220)) 
    draw_t_i_3
       (.I0(draw_t_i_8__0_n_0),
        .I1(draw_t_i_9__0_n_0),
        .I2(small_row_count[1]),
        .I3(small_row_count[0]),
        .I4(draw_t_i_10_n_0),
        .I5(draw_t_i_11__0_n_0),
        .O(draw_t_i_3_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    draw_t_i_3__0
       (.I0(draw_t_i_7__0_n_0),
        .I1(small_row_count[0]),
        .I2(draw_t_i_5__0_n_0),
        .I3(small_row_count[1]),
        .I4(draw_t_i_8__1_n_0),
        .O(draw_t_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00040404)) 
    draw_t_i_3__1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(small_column_count__0),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(draw_t_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF0F0FF00DDDD)) 
    draw_t_i_4
       (.I0(draw_t_i_5__1_n_0),
        .I1(draw_t_i_6_n_0),
        .I2(draw_t_i_7_n_0),
        .I3(draw_t_i_8_n_0),
        .I4(small_row_count[2]),
        .I5(small_row_count[3]),
        .O(draw_t_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000F2F2F222)) 
    draw_t_i_4__0
       (.I0(draw_t_i_12__0_n_0),
        .I1(draw_t_i_13__0_n_0),
        .I2(small_row_count[1]),
        .I3(draw_t_i_14_n_0),
        .I4(Q[2]),
        .I5(draw_t_i_15_n_0),
        .O(draw_t_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000010010)) 
    draw_t_i_4__1
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(small_column_count__0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(draw_t_i_4__1_n_0));
  LUT6 #(
    .INIT(64'hFFFF2D75FFEEBBFF)) 
    draw_t_i_5
       (.I0(Q[0]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(draw_t_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BF3CFBF)) 
    draw_t_i_5__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(draw_t_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    draw_t_i_5__1
       (.I0(small_row_count[0]),
        .I1(small_row_count[1]),
        .O(draw_t_i_5__1_n_0));
  LUT6 #(
    .INIT(64'hFFFBF7F0F8FEFD37)) 
    draw_t_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(small_column_count__0),
        .I5(Q[2]),
        .O(draw_t_i_6_n_0));
  LUT6 #(
    .INIT(64'h2222222612000024)) 
    draw_t_i_6__0
       (.I0(small_column_count__0),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(draw_t_i_6__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF0400FFFFFFFF)) 
    draw_t_i_6__1
       (.I0(draw_t_i_9__1_n_0),
        .I1(small_row_count[1]),
        .I2(draw_t_i_10__0_n_0),
        .I3(draw_t_i_11__1_n_0),
        .I4(small_row_count[3]),
        .I5(small_row_count[2]),
        .O(draw_t_i_6__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFECEF2C2)) 
    draw_t_i_7
       (.I0(draw_t_i_9_n_0),
        .I1(small_row_count[1]),
        .I2(small_row_count[0]),
        .I3(draw_t_i_10__1_n_0),
        .I4(draw_t_i_6_n_0),
        .O(draw_t_i_7_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEEE1E9DB1F5)) 
    draw_t_i_7__0
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(draw_t_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    draw_t_i_7__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(small_column_count__0),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(draw_t_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    draw_t_i_8
       (.I0(draw_t_i_11_n_0),
        .I1(small_row_count[0]),
        .I2(draw_t_i_12__1_n_0),
        .I3(draw_t_i_13_n_0),
        .I4(small_row_count[1]),
        .I5(draw_t_reg_i_14_n_0),
        .O(draw_t_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFC3FFFFDBFBF)) 
    draw_t_i_8__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(small_column_count__0),
        .O(draw_t_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h000000008A028A8A)) 
    draw_t_i_8__1
       (.I0(draw_t_i_12_n_0),
        .I1(Q[4]),
        .I2(\column_count[9]_i_2_n_0 ),
        .I3(small_row_count[0]),
        .I4(draw_t_i_13__1_n_0),
        .I5(draw_t_i_10__0_n_0),
        .O(draw_t_i_8__1_n_0));
  LUT6 #(
    .INIT(64'hFFDAFFEFFDEBDFFF)) 
    draw_t_i_9
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(small_column_count__0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(draw_t_i_9_n_0));
  LUT6 #(
    .INIT(64'h5050000003000000)) 
    draw_t_i_9__0
       (.I0(draw_t_i_16__0_n_0),
        .I1(small_row_count[0]),
        .I2(Q[0]),
        .I3(draw_t_i_17_n_0),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(draw_t_i_9__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000003080)) 
    draw_t_i_9__1
       (.I0(Q[1]),
        .I1(small_row_count[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(small_column_count__0),
        .I5(\fixed_column_count[2]_i_2_n_0 ),
        .O(draw_t_i_9__1_n_0));
  MUXF7 draw_t_reg_i_14
       (.I0(draw_t_i_15__0_n_0),
        .I1(draw_t_i_16_n_0),
        .O(draw_t_reg_i_14_n_0),
        .S(small_row_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fixed_column_count[0]_i_1 
       (.I0(Q[0]),
        .I1(fixed_column_count1),
        .O(\column_count_reg[7]_1 [0]));
  LUT6 #(
    .INIT(64'hF10EF100FF00FF00)) 
    \fixed_column_count[1]_i_1 
       (.I0(Q[0]),
        .I1(small_column_count__0),
        .I2(\fixed_column_count[2]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(ten_i_2_n_0),
        .O(\column_count_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fixed_column_count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(fixed_column_count1),
        .I2(Q[1]),
        .O(\column_count_reg[7]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hD2F0)) 
    \fixed_column_count[1]_i_1__1 
       (.I0(ten_i_2_n_0),
        .I1(\fixed_column_count[5]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\column_count_reg[9]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF10E)) 
    \fixed_column_count[1]_i_1__2 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\column_count_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'hF0F0C0F0E0F0C2F0)) 
    \fixed_column_count[2]_i_1 
       (.I0(small_column_count__0),
        .I1(\fixed_column_count[2]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(ten_i_2_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\column_count_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fixed_column_count[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(fixed_column_count1),
        .I3(Q[2]),
        .O(\column_count_reg[7]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fixed_column_count[2]_i_1__1 
       (.I0(Q[2]),
        .I1(\row_count_reg[5]_0 ),
        .O(\column_count_reg[9]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hD2F0F0F0)) 
    \fixed_column_count[2]_i_1__2 
       (.I0(ten_i_2_n_0),
        .I1(\fixed_column_count[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\column_count_reg[9]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h1E1E1EF0)) 
    \fixed_column_count[2]_i_1__3 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\column_count_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fixed_column_count[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\fixed_column_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hA2222222)) 
    \fixed_column_count[3]_i_1 
       (.I0(small_column_count__0),
        .I1(fixed_column_count1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\column_count_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h888A8A8A8A8A8A8A)) 
    \fixed_column_count[3]_i_1__0 
       (.I0(small_column_count__0),
        .I1(\fixed_row_count[4]_i_2__1_n_0 ),
        .I2(fixed_column_count14_out_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\column_count_reg[9]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \fixed_column_count[3]_i_1__1 
       (.I0(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I1(small_column_count__0),
        .I2(fixed_column_count14_out_1),
        .O(\column_count_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    \fixed_column_count[3]_i_1__2 
       (.I0(Q[2]),
        .I1(small_column_count__0),
        .I2(\row_count_reg[5]_0 ),
        .O(\column_count_reg[9]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fixed_column_count[3]_i_1__3 
       (.I0(\fixed_row_count[4]_i_2_n_0 ),
        .I1(small_column_count__0),
        .O(\column_count_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h888A8A8A8A8A8A8A)) 
    \fixed_column_count[4]_i_1 
       (.I0(Q[3]),
        .I1(\fixed_row_count[4]_i_2__1_n_0 ),
        .I2(fixed_column_count14_out_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\column_count_reg[9]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \fixed_column_count[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(small_column_count__0),
        .I3(\row_count_reg[5]_0 ),
        .O(\column_count_reg[9]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \fixed_column_count[4]_i_1__1 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(Q[3]),
        .O(\column_count_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    \fixed_column_count[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(small_column_count__0),
        .I3(\row_count_reg[5]_0 ),
        .O(\column_count_reg[9]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \fixed_column_count[5]_i_1__0 
       (.I0(ten_i_2_n_0),
        .I1(\fixed_column_count[5]_i_2_n_0 ),
        .I2(Q[4]),
        .O(\column_count_reg[9]_0 [4]));
  LUT6 #(
    .INIT(64'hFEFEFEEE7FFFFFFF)) 
    \fixed_column_count[5]_i_2 
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\fixed_column_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fixed_row_count[0]_i_1 
       (.I0(small_row_count[0]),
        .I1(fixed_column_count1),
        .O(\row_count_reg[8]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \fixed_row_count[0]_i_1__0 
       (.I0(small_row_count[0]),
        .I1(\row_count_reg[5]_0 ),
        .O(\row_count_reg[8]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \fixed_row_count[1]_i_1 
       (.I0(\fixed_row_count[4]_i_2_n_0 ),
        .I1(small_row_count[0]),
        .I2(small_row_count[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \fixed_row_count[1]_i_1__0 
       (.I0(small_row_count[0]),
        .I1(fixed_column_count1),
        .I2(small_row_count[1]),
        .O(\row_count_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \fixed_row_count[1]_i_1__1 
       (.I0(\fixed_row_count[4]_i_2__1_n_0 ),
        .I1(small_row_count[0]),
        .I2(small_row_count[1]),
        .O(\row_count_reg[8]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \fixed_row_count[1]_i_1__2 
       (.I0(small_row_count[0]),
        .I1(\row_count_reg[5]_0 ),
        .I2(small_row_count[1]),
        .O(\row_count_reg[8]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF10E)) 
    \fixed_row_count[1]_i_1__3 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(small_row_count[0]),
        .I3(small_row_count[1]),
        .O(\row_count_reg[8]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[2]_i_1 
       (.I0(small_row_count[2]),
        .I1(fixed_column_count1),
        .O(\row_count_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[2]_i_1__0 
       (.I0(small_row_count[2]),
        .I1(\row_count_reg[5]_0 ),
        .O(\row_count_reg[8]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h999A)) 
    \fixed_row_count[2]_i_1__1 
       (.I0(small_row_count[2]),
        .I1(\fixed_row_count[4]_i_2_n_0 ),
        .I2(small_row_count[0]),
        .I3(small_row_count[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h999A)) 
    \fixed_row_count[2]_i_1__2 
       (.I0(small_row_count[2]),
        .I1(\fixed_row_count[4]_i_2__1_n_0 ),
        .I2(small_row_count[0]),
        .I3(small_row_count[1]),
        .O(\row_count_reg[8]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h1E1E1EF0)) 
    \fixed_row_count[2]_i_1__3 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(small_row_count[2]),
        .I3(small_row_count[0]),
        .I4(small_row_count[1]),
        .O(\row_count_reg[8]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h9A9A9AAA)) 
    \fixed_row_count[3]_i_1 
       (.I0(small_row_count[3]),
        .I1(\fixed_row_count[4]_i_2_n_0 ),
        .I2(small_row_count[2]),
        .I3(small_row_count[1]),
        .I4(small_row_count[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[3]_i_1__0 
       (.I0(small_row_count[3]),
        .I1(fixed_column_count1),
        .O(\row_count_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h9A9A9AAA)) 
    \fixed_row_count[3]_i_1__1 
       (.I0(small_row_count[3]),
        .I1(\fixed_row_count[4]_i_2__1_n_0 ),
        .I2(small_row_count[2]),
        .I3(small_row_count[1]),
        .I4(small_row_count[0]),
        .O(\row_count_reg[8]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[3]_i_1__2 
       (.I0(small_row_count[3]),
        .I1(\row_count_reg[5]_0 ),
        .O(\row_count_reg[8]_2 [3]));
  LUT6 #(
    .INIT(64'h1EF01EF01EF0F0F0)) 
    \fixed_row_count[3]_i_1__3 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(small_row_count[3]),
        .I3(small_row_count[2]),
        .I4(small_row_count[1]),
        .I5(small_row_count[0]),
        .O(\row_count_reg[8]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[4]_i_1 
       (.I0(small_row_count[4]),
        .I1(fixed_column_count1),
        .O(\row_count_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fixed_row_count[4]_i_1__0 
       (.I0(small_row_count[4]),
        .I1(\row_count_reg[5]_0 ),
        .O(\row_count_reg[8]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fixed_row_count[4]_i_1__1 
       (.I0(\fixed_row_count[4]_i_2_n_0 ),
        .I1(small_row_count[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fixed_row_count[4]_i_1__2 
       (.I0(\fixed_row_count[4]_i_2__1_n_0 ),
        .I1(small_row_count[4]),
        .O(\row_count_reg[8]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \fixed_row_count[4]_i_1__3 
       (.I0(fixed_column_count14_out_1),
        .I1(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ),
        .I2(small_row_count[4]),
        .O(\row_count_reg[8]_3 [3]));
  LUT6 #(
    .INIT(64'hF0F1F0FBFFFFFFFF)) 
    \fixed_row_count[4]_i_2 
       (.I0(Q[0]),
        .I1(small_column_count__0),
        .I2(\fixed_column_count[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(ten_i_2_n_0),
        .O(\fixed_row_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AA08)) 
    \fixed_row_count[4]_i_2__0 
       (.I0(ten_i_2_n_0),
        .I1(Q[2]),
        .I2(\fixed_row_count[4]_i_3_n_0 ),
        .I3(small_column_count__0),
        .I4(\fixed_row_count[4]_i_4_n_0 ),
        .I5(\fixed_row_count[4]_i_5_n_0 ),
        .O(\draw_wrap/Draw_Mode_wrap/Score_Display_Limit/fixed_column_count1 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDD555DDDD)) 
    \fixed_row_count[4]_i_2__1 
       (.I0(ten_i_2_n_0),
        .I1(\fixed_column_count[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(small_column_count__0),
        .I5(\fixed_row_count[4]_i_4_n_0 ),
        .O(\fixed_row_count[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fixed_row_count[4]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\fixed_row_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \fixed_row_count[4]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\fixed_row_count[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h88808800)) 
    \fixed_row_count[4]_i_5 
       (.I0(Q[3]),
        .I1(small_column_count__0),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\fixed_row_count[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0000F7FF)) 
    \row_count[0]_i_1 
       (.I0(\row_count[9]_i_6_n_0 ),
        .I1(\row_count_reg_n_0_[2] ),
        .I2(\row_count_reg_n_0_[1] ),
        .I3(small_row_count[5]),
        .I4(\row_count_reg_n_0_[0] ),
        .O(\row_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \row_count[1]_i_1 
       (.I0(\row_count_reg_n_0_[0] ),
        .I1(\row_count_reg_n_0_[1] ),
        .O(\row_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0FF7F000)) 
    \row_count[2]_i_1 
       (.I0(\row_count[9]_i_6_n_0 ),
        .I1(small_row_count[5]),
        .I2(\row_count_reg_n_0_[0] ),
        .I3(\row_count_reg_n_0_[1] ),
        .I4(\row_count_reg_n_0_[2] ),
        .O(\row_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF7FFFFF0000000)) 
    \row_count[3]_i_1 
       (.I0(\row_count[9]_i_6_n_0 ),
        .I1(small_row_count[5]),
        .I2(\row_count_reg_n_0_[1] ),
        .I3(\row_count_reg_n_0_[0] ),
        .I4(\row_count_reg_n_0_[2] ),
        .I5(\row_count_reg_n_0_[3] ),
        .O(\row_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \row_count[4]_i_1 
       (.I0(small_row_count[0]),
        .I1(\row_count_reg_n_0_[3] ),
        .I2(\row_count_reg_n_0_[1] ),
        .I3(\row_count_reg_n_0_[0] ),
        .I4(\row_count_reg_n_0_[2] ),
        .O(\row_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \row_count[5]_i_1 
       (.I0(small_row_count[1]),
        .I1(small_row_count[0]),
        .I2(\row_count_reg_n_0_[2] ),
        .I3(\row_count_reg_n_0_[0] ),
        .I4(\row_count_reg_n_0_[1] ),
        .I5(\row_count_reg_n_0_[3] ),
        .O(\row_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \row_count[6]_i_1 
       (.I0(small_row_count[2]),
        .I1(small_row_count[1]),
        .I2(\row_count[8]_i_2__1_n_0 ),
        .I3(small_row_count[0]),
        .O(\row_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \row_count[7]_i_1 
       (.I0(small_row_count[3]),
        .I1(\row_count[8]_i_2__1_n_0 ),
        .I2(small_row_count[2]),
        .I3(small_row_count[0]),
        .I4(small_row_count[1]),
        .O(\row_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    \row_count[8]_i_1 
       (.I0(small_row_count[1]),
        .I1(small_row_count[0]),
        .I2(small_row_count[2]),
        .I3(\row_count[8]_i_2__1_n_0 ),
        .I4(small_row_count[4]),
        .I5(small_row_count[3]),
        .O(\row_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \row_count[8]_i_2__1 
       (.I0(\row_count_reg_n_0_[2] ),
        .I1(\row_count_reg_n_0_[0] ),
        .I2(\row_count_reg_n_0_[1] ),
        .I3(\row_count_reg_n_0_[3] ),
        .O(\row_count[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \row_count[9]_i_1 
       (.I0(\row_count[9]_i_3_n_0 ),
        .I1(\row_count[9]_i_4_n_0 ),
        .I2(small_column_count__0),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\row_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666626666666666)) 
    \row_count[9]_i_2 
       (.I0(\row_count[9]_i_5_n_0 ),
        .I1(small_row_count[5]),
        .I2(\row_count_reg_n_0_[0] ),
        .I3(\row_count_reg_n_0_[2] ),
        .I4(\row_count_reg_n_0_[1] ),
        .I5(\row_count[9]_i_6_n_0 ),
        .O(\row_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \row_count[9]_i_3 
       (.I0(\column_count_reg_n_0_[3] ),
        .I1(\column_count_reg_n_0_[0] ),
        .I2(\column_count_reg_n_0_[1] ),
        .I3(\column_count_reg_n_0_[2] ),
        .O(\row_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \row_count[9]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\row_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \row_count[9]_i_5 
       (.I0(small_row_count[3]),
        .I1(small_row_count[4]),
        .I2(\row_count[8]_i_2__1_n_0 ),
        .I3(small_row_count[2]),
        .I4(small_row_count[0]),
        .I5(small_row_count[1]),
        .O(\row_count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \row_count[9]_i_6 
       (.I0(small_row_count[2]),
        .I1(small_row_count[3]),
        .I2(small_row_count[0]),
        .I3(small_row_count[1]),
        .I4(\row_count_reg_n_0_[3] ),
        .I5(small_row_count[4]),
        .O(\row_count[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[0]_i_1_n_0 ),
        .Q(\row_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[1]_i_1_n_0 ),
        .Q(\row_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[2]_i_1_n_0 ),
        .Q(\row_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[3]_i_1_n_0 ),
        .Q(\row_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[4]_i_1_n_0 ),
        .Q(small_row_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[5]_i_1_n_0 ),
        .Q(small_row_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[6]_i_1_n_0 ),
        .Q(small_row_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[7]_i_1_n_0 ),
        .Q(small_row_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[8]_i_1_n_0 ),
        .Q(small_row_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \row_count_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(\row_count[9]_i_1_n_0 ),
        .D(\row_count[9]_i_2_n_0 ),
        .Q(small_row_count[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000A800020088)) 
    ten_i_1
       (.I0(ten_i_2_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\fixed_column_count[2]_i_2_n_0 ),
        .I4(small_column_count__0),
        .I5(Q[0]),
        .O(fixed_column_count14_out));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ten_i_1__0
       (.I0(ten_i_2_n_0),
        .I1(ten_i_3_n_0),
        .O(fixed_column_count14_out_1));
  LUT6 #(
    .INIT(64'h0000080008000800)) 
    ten_i_1__1
       (.I0(ten_i_2_n_0),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(small_column_count__0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(fixed_column_count14_out_0));
  LUT6 #(
    .INIT(64'h00000000007FE000)) 
    ten_i_2
       (.I0(small_row_count[0]),
        .I1(small_row_count[1]),
        .I2(small_row_count[2]),
        .I3(small_row_count[3]),
        .I4(small_row_count[4]),
        .I5(small_row_count[5]),
        .O(ten_i_2_n_0));
  LUT6 #(
    .INIT(64'hEEEFFFFFFFFFFDDD)) 
    ten_i_3
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(small_column_count__0),
        .I5(Q[2]),
        .O(ten_i_3_n_0));
endmodule

module button_debouncer
   (change_mode_debounced,
    CLK,
    change_mode_IBUF);
  output change_mode_debounced;
  input CLK;
  input change_mode_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire change_mode_IBUF;
  wire change_mode_debounced;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1__0_n_0 ;
  wire \debounce_counter[1]_i_1__0_n_0 ;
  wire \debounce_counter[2]_i_1__0_n_0 ;
  wire \debounce_counter[3]_i_2__0_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1__0_n_0;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(change_mode_IBUF),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(change_mode_IBUF),
        .I3(\FSM_sequential_state[1]_i_2__0_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1__0 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1__0 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1__0 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1__0 
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2__0 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2__0_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1__0
       (.I0(change_mode_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1__0_n_0),
        .Q(change_mode_debounced),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "button_debouncer" *) 
module button_debouncer_0
   (p1_down_debounced,
    CLK,
    p1_down_IBUF);
  output p1_down_debounced;
  input CLK;
  input p1_down_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__2_n_0 ;
  wire \FSM_sequential_state[0]_i_2__2_n_0 ;
  wire \FSM_sequential_state[1]_i_1__2_n_0 ;
  wire \FSM_sequential_state[1]_i_2__2_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1__2_n_0 ;
  wire \debounce_counter[1]_i_1__2_n_0 ;
  wire \debounce_counter[2]_i_1__2_n_0 ;
  wire \debounce_counter[3]_i_2__2_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1__2_n_0;
  wire p1_down_IBUF;
  wire p1_down_debounced;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2__2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2__2 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(p1_down_IBUF),
        .O(\FSM_sequential_state[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(p1_down_IBUF),
        .I3(\FSM_sequential_state[1]_i_2__2_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2__2 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__2_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__2_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__2_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1__2 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1__2 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1__2 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1__2 
       (.I0(\FSM_sequential_state[0]_i_2__2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2__2 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2__2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1__2
       (.I0(p1_down_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1__2_n_0),
        .Q(p1_down_debounced),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "button_debouncer" *) 
module button_debouncer_1
   (p1_up_debounced,
    paddle_enable,
    CLK,
    p1_down_debounced,
    p1_up_IBUF);
  output p1_up_debounced;
  output paddle_enable;
  input CLK;
  input p1_down_debounced;
  input p1_up_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_state[1]_i_2__1_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1__1_n_0 ;
  wire \debounce_counter[1]_i_1__1_n_0 ;
  wire \debounce_counter[2]_i_1__1_n_0 ;
  wire \debounce_counter[3]_i_2__1_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1__1_n_0;
  wire p1_down_debounced;
  wire p1_up_IBUF;
  wire p1_up_debounced;
  wire paddle_enable;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2__1_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2__1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(p1_up_IBUF),
        .O(\FSM_sequential_state[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(p1_up_IBUF),
        .I3(\FSM_sequential_state[1]_i_2__1_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2__1 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__1_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__1_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1__1 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1__1 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1__1 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1__1 
       (.I0(\FSM_sequential_state[0]_i_2__1_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2__1 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2__1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1__1
       (.I0(p1_up_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1__1_n_0),
        .Q(p1_up_debounced),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \paddle_count[31]_i_2 
       (.I0(p1_up_debounced),
        .I1(p1_down_debounced),
        .O(paddle_enable));
endmodule

(* ORIG_REF_NAME = "button_debouncer" *) 
module button_debouncer_2
   (p2_down_debounced,
    CLK,
    p2_down_IBUF);
  output p2_down_debounced;
  input CLK;
  input p2_down_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__4_n_0 ;
  wire \FSM_sequential_state[0]_i_2__4_n_0 ;
  wire \FSM_sequential_state[1]_i_1__4_n_0 ;
  wire \FSM_sequential_state[1]_i_2__4_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1__4_n_0 ;
  wire \debounce_counter[1]_i_1__4_n_0 ;
  wire \debounce_counter[2]_i_1__4_n_0 ;
  wire \debounce_counter[3]_i_2__4_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1__4_n_0;
  wire p2_down_IBUF;
  wire p2_down_debounced;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1__4 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2__4_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1__4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2__4 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(p2_down_IBUF),
        .O(\FSM_sequential_state[0]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1__4 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(p2_down_IBUF),
        .I3(\FSM_sequential_state[1]_i_2__4_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2__4 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__4_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__4_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__4_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1__4 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1__4 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1__4 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1__4 
       (.I0(\FSM_sequential_state[0]_i_2__4_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2__4 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1__4_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1__4_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1__4_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2__4_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1__4
       (.I0(p2_down_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1__4_n_0),
        .Q(p2_down_debounced),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "button_debouncer" *) 
module button_debouncer_3
   (p2_up_debounced,
    paddle_enable,
    CLK,
    p2_down_debounced,
    p2_up_IBUF);
  output p2_up_debounced;
  output paddle_enable;
  input CLK;
  input p2_down_debounced;
  input p2_up_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1__3_n_0 ;
  wire \FSM_sequential_state[0]_i_2__3_n_0 ;
  wire \FSM_sequential_state[1]_i_1__3_n_0 ;
  wire \FSM_sequential_state[1]_i_2__3_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1__3_n_0 ;
  wire \debounce_counter[1]_i_1__3_n_0 ;
  wire \debounce_counter[2]_i_1__3_n_0 ;
  wire \debounce_counter[3]_i_2__3_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1__3_n_0;
  wire p2_down_debounced;
  wire p2_up_IBUF;
  wire p2_up_debounced;
  wire paddle_enable;
  wire [0:0]state__0;

  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2__3_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2__3 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(p2_up_IBUF),
        .O(\FSM_sequential_state[0]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(p2_up_IBUF),
        .I3(\FSM_sequential_state[1]_i_2__3_n_0 ),
        .O(\FSM_sequential_state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2__3 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2__3_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__3_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__3_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1__3 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1__3 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1__3 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1__3 
       (.I0(\FSM_sequential_state[0]_i_2__3_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2__3 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2__3_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1__3
       (.I0(p2_up_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1__3_n_0),
        .Q(p2_up_debounced),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \paddle_count[31]_i_2__0 
       (.I0(p2_up_debounced),
        .I1(p2_down_debounced),
        .O(paddle_enable));
endmodule

(* ORIG_REF_NAME = "button_debouncer" *) 
module button_debouncer_4
   (start_debounced,
    debounced_button_reg_0,
    CLK,
    start_pressed,
    start_IBUF);
  output start_debounced;
  output debounced_button_reg_0;
  input CLK;
  input start_pressed;
  input start_IBUF;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire debounce_counter;
  wire \debounce_counter[0]_i_1_n_0 ;
  wire \debounce_counter[1]_i_1_n_0 ;
  wire \debounce_counter[2]_i_1_n_0 ;
  wire \debounce_counter[3]_i_2_n_0 ;
  wire \debounce_counter_reg_n_0_[0] ;
  wire \debounce_counter_reg_n_0_[1] ;
  wire \debounce_counter_reg_n_0_[2] ;
  wire \debounce_counter_reg_n_0_[3] ;
  wire debounced_button_i_1_n_0;
  wire debounced_button_reg_0;
  wire start_IBUF;
  wire start_debounced;
  wire start_pressed;
  wire [0:0]state__0;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(start_debounced),
        .I1(start_pressed),
        .O(debounced_button_reg_0));
  LUT6 #(
    .INIT(64'h3333313333333333)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\debounce_counter_reg_n_0_[2] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[0] ),
        .I5(\debounce_counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(start_IBUF),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hCCE4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(start_IBUF),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\debounce_counter_reg_n_0_[1] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[3] ),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "PRESS_CHECK:01,RELEASE_CHECK:11,IDLE:00,PRESSED:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \debounce_counter[0]_i_1 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .O(\debounce_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \debounce_counter[1]_i_1 
       (.I0(state__0),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .O(\debounce_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \debounce_counter[2]_i_1 
       (.I0(\debounce_counter_reg_n_0_[0] ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(state__0),
        .I3(\debounce_counter_reg_n_0_[2] ),
        .O(\debounce_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555155FFFFFFFF)) 
    \debounce_counter[3]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\debounce_counter_reg_n_0_[1] ),
        .I2(\debounce_counter_reg_n_0_[0] ),
        .I3(\debounce_counter_reg_n_0_[3] ),
        .I4(\debounce_counter_reg_n_0_[2] ),
        .I5(state__0),
        .O(debounce_counter));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \debounce_counter[3]_i_2 
       (.I0(\debounce_counter_reg_n_0_[2] ),
        .I1(\debounce_counter_reg_n_0_[0] ),
        .I2(\debounce_counter_reg_n_0_[1] ),
        .I3(state__0),
        .I4(\debounce_counter_reg_n_0_[3] ),
        .O(\debounce_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[0] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[0]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[1] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[1]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[2] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[2]_i_1_n_0 ),
        .Q(\debounce_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \debounce_counter_reg[3] 
       (.C(CLK),
        .CE(debounce_counter),
        .D(\debounce_counter[3]_i_2_n_0 ),
        .Q(\debounce_counter_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_button_i_1
       (.I0(start_debounced),
        .I1(state__0),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(debounced_button_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    debounced_button_reg
       (.C(CLK),
        .CE(1'b1),
        .D(debounced_button_i_1_n_0),
        .Q(start_debounced),
        .R(1'b0));
endmodule

module clock_divider
   (clock_25Mhz,
    clock_IBUF_BUFG);
  output clock_25Mhz;
  input clock_IBUF_BUFG;

  wire clear;
  wire clock_25Mhz;
  wire clock_IBUF_BUFG;
  wire \counter[0]_i_3_n_0 ;
  wire [1:0]counter_reg;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire out_clock_i_1_n_0;
  wire [3:1]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[0]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [3:1],\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_counter_reg[0]_i_2_O_UNCONNECTED [3:2],\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({1'b0,1'b0,counter_reg[1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_i_1
       (.I0(counter_reg[1]),
        .O(out_clock_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_clock_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(out_clock_i_1_n_0),
        .Q(clock_25Mhz),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized0
   (debounce_clock,
    clock_IBUF_BUFG);
  output debounce_clock;
  input clock_IBUF_BUFG;

  wire clock_IBUF_BUFG;
  wire counter0_carry__0_i_1__0_n_0;
  wire counter0_carry__0_i_2__0_n_0;
  wire counter0_carry__0_i_3__0_n_0;
  wire counter0_carry__0_i_4__0_n_0;
  wire counter0_carry__0_i_5__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry_i_1__0_n_0;
  wire counter0_carry_i_2__0_n_0;
  wire counter0_carry_i_3__0_n_0;
  wire counter0_carry_i_4__0_n_0;
  wire counter0_carry_i_5__0_n_0;
  wire counter0_carry_i_6__0_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_2__0_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire debounce_clock;
  wire out_clock0_carry__0_i_1__0_n_0;
  wire out_clock0_carry__0_i_2__0_n_0;
  wire out_clock0_carry__0_i_3__0_n_0;
  wire out_clock0_carry__0_i_4__0_n_0;
  wire out_clock0_carry__0_i_5__0_n_0;
  wire out_clock0_carry__0_n_1;
  wire out_clock0_carry__0_n_2;
  wire out_clock0_carry__0_n_3;
  wire out_clock0_carry_i_1__0_n_0;
  wire out_clock0_carry_i_2__0_n_0;
  wire out_clock0_carry_i_3__0_n_0;
  wire out_clock0_carry_i_4__0_n_0;
  wire out_clock0_carry_i_5__0_n_0;
  wire out_clock0_carry_i_6__0_n_0;
  wire out_clock0_carry_i_7__0_n_0;
  wire out_clock0_carry_i_8_n_0;
  wire out_clock0_carry_n_0;
  wire out_clock0_carry_n_1;
  wire out_clock0_carry_n_2;
  wire out_clock0_carry_n_3;
  wire [3:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_out_clock0_carry_O_UNCONNECTED;
  wire [3:3]NLW_out_clock0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_out_clock0_carry__0_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter0_carry_i_1__0_n_0),
        .DI({1'b0,counter_reg[7],counter0_carry_i_2__0_n_0,1'b0}),
        .O(NLW_counter0_carry_O_UNCONNECTED[3:0]),
        .S({counter0_carry_i_3__0_n_0,counter0_carry_i_4__0_n_0,counter0_carry_i_5__0_n_0,counter0_carry_i_6__0_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({NLW_counter0_carry__0_CO_UNCONNECTED[3],counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter0_carry__0_i_1__0_n_0,counter0_carry__0_i_2__0_n_0}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,counter0_carry__0_i_3__0_n_0,counter0_carry__0_i_4__0_n_0,counter0_carry__0_i_5__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_1__0
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_2__0
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_3__0
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_4__0
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter0_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_5__0
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter0_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_1__0
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(counter0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_2__0
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_3__0
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry_i_4__0
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_5__0
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter0_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_6__0
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(counter0_carry_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_7 ),
        .Q(counter_reg[0]),
        .R(counter0_carry__0_n_1));
  CARRY4 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(counter0_carry__0_n_1));
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [3],\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_6 ),
        .Q(counter_reg[1]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_5 ),
        .Q(counter_reg[2]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_4 ),
        .Q(counter_reg[3]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(counter0_carry__0_n_1));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(counter0_carry__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(counter0_carry__0_n_1));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(counter0_carry__0_n_1));
  CARRY4 out_clock0_carry
       (.CI(1'b0),
        .CO({out_clock0_carry_n_0,out_clock0_carry_n_1,out_clock0_carry_n_2,out_clock0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({out_clock0_carry_i_1__0_n_0,out_clock0_carry_i_2__0_n_0,out_clock0_carry_i_3__0_n_0,out_clock0_carry_i_4__0_n_0}),
        .O(NLW_out_clock0_carry_O_UNCONNECTED[3:0]),
        .S({out_clock0_carry_i_5__0_n_0,out_clock0_carry_i_6__0_n_0,out_clock0_carry_i_7__0_n_0,out_clock0_carry_i_8_n_0}));
  CARRY4 out_clock0_carry__0
       (.CI(out_clock0_carry_n_0),
        .CO({NLW_out_clock0_carry__0_CO_UNCONNECTED[3],out_clock0_carry__0_n_1,out_clock0_carry__0_n_2,out_clock0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,out_clock0_carry__0_i_1__0_n_0,out_clock0_carry__0_i_2__0_n_0,1'b0}),
        .O(NLW_out_clock0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,out_clock0_carry__0_i_3__0_n_0,out_clock0_carry__0_i_4__0_n_0,out_clock0_carry__0_i_5__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__0_i_1__0
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(out_clock0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock0_carry__0_i_2__0
       (.I0(counter_reg[13]),
        .O(out_clock0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__0_i_3__0
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(out_clock0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__0_i_4__0
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(out_clock0_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__0_i_5__0
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(out_clock0_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry_i_1__0
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(out_clock0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock0_carry_i_2__0
       (.I0(counter_reg[7]),
        .O(out_clock0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock0_carry_i_3__0
       (.I0(counter_reg[5]),
        .O(out_clock0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock0_carry_i_4__0
       (.I0(counter_reg[3]),
        .O(out_clock0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_5__0
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(out_clock0_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_6__0
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(out_clock0_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_7__0
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .O(out_clock0_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_8
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(out_clock0_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_clock_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(out_clock0_carry__0_n_1),
        .Q(debounce_clock),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized1
   (CLK,
    clock_25Mhz_BUFG);
  output CLK;
  input clock_25Mhz_BUFG;

  wire CLK;
  wire clear;
  wire clock_25Mhz_BUFG;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_i_5_n_0;
  wire counter0_carry__0_i_6_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_i_5_n_0;
  wire counter0_carry_i_6_n_0;
  wire counter0_carry_i_7_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire [23:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire out_clock0_carry__0_i_1_n_0;
  wire out_clock0_carry__0_i_2_n_0;
  wire out_clock0_carry__0_i_3_n_0;
  wire out_clock0_carry__0_i_4_n_0;
  wire out_clock0_carry__0_i_5_n_0;
  wire out_clock0_carry__0_i_6_n_0;
  wire out_clock0_carry__0_i_7_n_0;
  wire out_clock0_carry__0_i_8_n_0;
  wire out_clock0_carry__0_n_0;
  wire out_clock0_carry__0_n_1;
  wire out_clock0_carry__0_n_2;
  wire out_clock0_carry__0_n_3;
  wire out_clock0_carry__1_i_1_n_0;
  wire out_clock0_carry__1_i_2_n_0;
  wire out_clock0_carry__1_i_3_n_0;
  wire out_clock0_carry__1_i_4_n_0;
  wire out_clock0_carry__1_n_2;
  wire out_clock0_carry__1_n_3;
  wire out_clock0_carry_i_1_n_0;
  wire out_clock0_carry_i_2_n_0;
  wire out_clock0_carry_i_3_n_0;
  wire out_clock0_carry_i_4_n_0;
  wire out_clock0_carry_i_5_n_0;
  wire out_clock0_carry_i_6_n_0;
  wire out_clock0_carry_i_7_n_0;
  wire out_clock0_carry_n_0;
  wire out_clock0_carry_n_1;
  wire out_clock0_carry_n_2;
  wire out_clock0_carry_n_3;
  wire [3:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_out_clock0_carry_O_UNCONNECTED;
  wire [3:0]NLW_out_clock0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_out_clock0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_out_clock0_carry__1_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter0_carry_i_1_n_0),
        .DI({counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter_reg[5],1'b0}),
        .O(NLW_counter0_carry_O_UNCONNECTED[3:0]),
        .S({counter0_carry_i_4_n_0,counter0_carry_i_5_n_0,counter0_carry_i_6_n_0,counter0_carry_i_7_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,1'b0,1'b0}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0,counter0_carry__0_i_5_n_0,counter0_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(counter0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(counter0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .O(counter0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_5
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(counter0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_6
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter0_carry__0_i_6_n_0));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({NLW_counter0_carry__1_CO_UNCONNECTED[3],clear,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter0_carry__1_i_1_n_0,1'b0,1'b0}),
        .O(NLW_counter0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__1_i_1
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(counter0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__1_i_2
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .O(counter0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__1_i_3
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(counter0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__1_i_4
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(counter0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_1
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(counter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_2
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_3
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(counter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_4
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .O(counter0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_5
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_7
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(counter0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(clear));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [3],\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  CARRY4 out_clock0_carry
       (.CI(1'b0),
        .CO({out_clock0_carry_n_0,out_clock0_carry_n_1,out_clock0_carry_n_2,out_clock0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({out_clock0_carry_i_1_n_0,out_clock0_carry_i_2_n_0,1'b0,out_clock0_carry_i_3_n_0}),
        .O(NLW_out_clock0_carry_O_UNCONNECTED[3:0]),
        .S({out_clock0_carry_i_4_n_0,out_clock0_carry_i_5_n_0,out_clock0_carry_i_6_n_0,out_clock0_carry_i_7_n_0}));
  CARRY4 out_clock0_carry__0
       (.CI(out_clock0_carry_n_0),
        .CO({out_clock0_carry__0_n_0,out_clock0_carry__0_n_1,out_clock0_carry__0_n_2,out_clock0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({out_clock0_carry__0_i_1_n_0,out_clock0_carry__0_i_2_n_0,out_clock0_carry__0_i_3_n_0,out_clock0_carry__0_i_4_n_0}),
        .O(NLW_out_clock0_carry__0_O_UNCONNECTED[3:0]),
        .S({out_clock0_carry__0_i_5_n_0,out_clock0_carry__0_i_6_n_0,out_clock0_carry__0_i_7_n_0,out_clock0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    out_clock0_carry__0_i_1
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .O(out_clock0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    out_clock0_carry__0_i_2
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(out_clock0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__0_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(out_clock0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__0_i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(out_clock0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    out_clock0_carry__0_i_5
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(out_clock0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    out_clock0_carry__0_i_6
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(out_clock0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__0_i_7
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(out_clock0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__0_i_8
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(out_clock0_carry__0_i_8_n_0));
  CARRY4 out_clock0_carry__1
       (.CI(out_clock0_carry__0_n_0),
        .CO({NLW_out_clock0_carry__1_CO_UNCONNECTED[3:2],out_clock0_carry__1_n_2,out_clock0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,out_clock0_carry__1_i_1_n_0,out_clock0_carry__1_i_2_n_0}),
        .O(NLW_out_clock0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,out_clock0_carry__1_i_3_n_0,out_clock0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__1_i_1
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(out_clock0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry__1_i_2
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(out_clock0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__1_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(out_clock0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry__1_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(out_clock0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    out_clock0_carry_i_1
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(out_clock0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock0_carry_i_2
       (.I0(counter_reg[9]),
        .O(out_clock0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry_i_3
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(out_clock0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    out_clock0_carry_i_4
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(out_clock0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_5
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .O(out_clock0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    out_clock0_carry_i_6
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(out_clock0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_clock0_carry_i_7
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(out_clock0_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_clock_reg
       (.C(clock_25Mhz_BUFG),
        .CE(1'b1),
        .D(out_clock0_carry__1_n_2),
        .Q(CLK),
        .R(1'b0));
endmodule

module score_to_ssd
   (\refresh_count_reg[0]_0 ,
    Q,
    \refresh_count_reg[1]_0 ,
    anode_OBUF,
    \refresh_count_reg[0]_1 ,
    \ssd_OBUF[1]_inst_i_1 ,
    \ssd_OBUF[7]_inst_i_4 ,
    CLK);
  output \refresh_count_reg[0]_0 ;
  output [2:0]Q;
  output \refresh_count_reg[1]_0 ;
  output [7:0]anode_OBUF;
  output \refresh_count_reg[0]_1 ;
  input [2:0]\ssd_OBUF[1]_inst_i_1 ;
  input [2:0]\ssd_OBUF[7]_inst_i_4 ;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire [7:0]anode_OBUF;
  wire \refresh_count[0]_i_1_n_0 ;
  wire \refresh_count[1]_i_1_n_0 ;
  wire \refresh_count[2]_i_1_n_0 ;
  wire \refresh_count_reg[0]_0 ;
  wire \refresh_count_reg[0]_1 ;
  wire \refresh_count_reg[1]_0 ;
  wire [2:0]\ssd_OBUF[1]_inst_i_1 ;
  wire \ssd_OBUF[7]_inst_i_11_n_0 ;
  wire [2:0]\ssd_OBUF[7]_inst_i_4 ;

  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \anode_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(anode_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \anode_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(anode_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(anode_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \anode_OBUF[3]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(anode_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \anode_OBUF[4]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(anode_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \anode_OBUF[5]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(anode_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \anode_OBUF[6]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(anode_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \anode_OBUF[7]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(anode_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_count[0]_i_1 
       (.I0(Q[0]),
        .O(\refresh_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \refresh_count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\refresh_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \refresh_count[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\refresh_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEAAAAAAAEAAAEAA)) 
    \ssd_OBUF[7]_inst_i_10 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\ssd_OBUF[7]_inst_i_4 [1]),
        .I4(\ssd_OBUF[7]_inst_i_4 [0]),
        .I5(\ssd_OBUF[7]_inst_i_4 [2]),
        .O(\refresh_count_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \ssd_OBUF[7]_inst_i_11 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\ssd_OBUF[7]_inst_i_4 [2]),
        .I4(\ssd_OBUF[7]_inst_i_4 [0]),
        .I5(\ssd_OBUF[7]_inst_i_4 [1]),
        .O(\ssd_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \ssd_OBUF[7]_inst_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\ssd_OBUF[1]_inst_i_1 [2]),
        .I3(\ssd_OBUF[1]_inst_i_1 [1]),
        .I4(\ssd_OBUF[1]_inst_i_1 [0]),
        .I5(\ssd_OBUF[7]_inst_i_11_n_0 ),
        .O(\refresh_count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ssd_OBUF[7]_inst_i_8 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\refresh_count_reg[0]_1 ));
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
