// Purpose of this Module:
// Check if the paddles or ball is located in the current position
// If so, then assign color to it
module Draw #(
    parameter 
    MS_DIVISOR = 1250000,
    SEC_DIVISOR = 12500000,
    P1_PADDLE_X = 1,
    P2_PADDLE_X = 38,
    PADDLE_HEIGHT = 6,

    INIT = 3'd0,
    MODE = 3'd1, 
    RUNNING = 3'd2, 
    P1_SCORE = 3'd3, 
    P2_SCORE = 3'd4, 
    OVER = 3'd5
    ) (
    input clock,
    //input hit_paddle,
    input [5:0] p1_paddle_y,
    input [5:0] p2_paddle_y,
    input [5:0] ball_x,
    input [5:0] ball_y,
    input [5:0] column_count,
    input [5:0] row_count,
    input [3:0] p1_score,
    input [3:0] p2_score,
    input [3:0] score_limit,
    input [2:0] state,
    input ai_enable,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );


    wire [3:0] out_red_start, out_green_start, out_blue_start;
    wire [3:0] out_red_mode, out_green_mode, out_blue_mode;
    wire [3:0] out_red_game, out_green_game, out_blue_game;
    wire [3:0] out_red_over, out_green_over, out_blue_over;
    wire sec, ms;

    // Divide the clock to get the second (used in Draw_Start.v)
    clock_divider #(
        .DIVISOR(SEC_DIVISOR)
    ) clock_sec (
        .in_clock(clock),

        .out_clock(sec)
        );

    // Divide the clock to get the millisecond (used in Draw_Over.v)
    clock_divider #(
        .DIVISOR(MS_DIVISOR)
    ) clock_ms (
        .in_clock(clock),

        .out_clock(ms)
        );

    Draw_Start Draw_Start_wrap(
        .clock(clock),
        .sec(sec),
        .column_count(column_count),
        .row_count(row_count),

        .out_Red(out_red_start),
        .out_Green(out_green_start),
        .out_Blue(out_blue_start)
    );

    Draw_Mode Draw_Mode_wrap(
        .clock(clock),
        .column_count(column_count),
        .row_count(row_count),
        .score_limit(score_limit),
        .ai_enable(ai_enable),

        .out_Red(out_red_mode),
        .out_Green(out_green_mode),
        .out_Blue(out_blue_mode)
    );

    Draw_Game #(
        .P1_PADDLE_X(P1_PADDLE_X),
        .P2_PADDLE_X(P2_PADDLE_X),
        .PADDLE_HEIGHT(PADDLE_HEIGHT),
        .RUNNING(RUNNING)
    ) Draw_Game_wrap (
        .clock(clock),
        //.hit_paddle(hit_paddle),
        .p1_paddle_y(p1_paddle_y),
        .p2_paddle_y(p2_paddle_y),
        .ball_x(ball_x),
        .ball_y(ball_y),
        .column_count(column_count),
        .row_count(row_count),
        .state (state),
        .ai_enable(ai_enable),

        .out_Red(out_red_game),
        .out_Green(out_green_game),
        .out_Blue(out_blue_game)
    );

    Draw_Over Draw_Over_wrap(
        .clock(clock),
        .ms(ms),
        .column_count(column_count),
        .row_count(row_count),
        .p1_score(p1_score),
        .p2_score(p2_score),

        .out_Red(out_red_over),
        .out_Green(out_green_over),
        .out_Blue(out_blue_over)
    );

    assign out_Red = (state == INIT) ? out_red_start : (state == MODE) ? out_red_mode : (state == OVER) ? out_red_over : out_red_game;
    assign out_Green = (state == INIT) ? out_green_start : (state == MODE) ? out_green_mode : (state == OVER) ? out_green_over : out_green_game;
    assign out_Blue = (state == INIT) ? out_blue_start : (state == MODE) ? out_blue_mode : (state == OVER) ? out_blue_over : out_blue_game;
        
endmodule