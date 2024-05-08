// Purpose of this Module:
// Check if the paddles or ball is located in the current position
// If so, then assign color to it
module Draw #(
    parameter
    P1_PADDLE_X = 0,
    P2_PADDLE_X = 39,
    PADDLE_HEIGHT = 6
    ) (
    input clock,
    input [5:0] p1_paddle_y,
    input [5:0] p2_paddle_y,
    input [5:0] ball_x,
    input [5:0] ball_y,
    input [5:0] column_count,
    input [5:0] row_count,
    input [2:0] state,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    wire out_red_start, out_green_start, out_blue_start;
    wire out_red_game, out_green_game, out_blue_game;
    wire out_red_over, out_green_over, out_blue_over;

    Draw_Start Draw_Start_wrap(
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .state (state),

        .out_Red(out_red_start),
        .out_Green(out_green_start),
        .out_Blue(out_blue_start)
    );

    Draw_Game #(
        .P1_PADDLE_X(P1_PADDLE_X),
        .P2_PADDLE_X(P2_PADDLE_X),
        .PADDLE_HEIGHT(PADDLE_HEIGHT)
    ) Draw_Game_wrap (
        .clock(clock),
        .p1_paddle_y(p1_paddle_y),
        .p2_paddle_y(p2_paddle_y),
        .ball_x(ball_x),
        .ball_y(ball_y),
        .column_count(column_count),
        .row_count(row_count),
        .state (state),

        .out_Red(out_red_game),
        .out_Green(out_green_game),
        .out_Blue(out_blue_game)
    );

    Draw_Over Draw_Over_wrap(
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .state (state),

        .out_Red(out_red_over),
        .out_Green(out_green_over),
        .out_Blue(out_blue_over)
    );

    assign out_Red = (state == 3'd0) ? out_red_start : out_red_game;
    assign out_Green = (state == 3'd0) ? out_green_start : out_green_game;
    assign out_Blue = (state == 3'd0) ? out_blue_start : out_blue_game;
        
endmodule