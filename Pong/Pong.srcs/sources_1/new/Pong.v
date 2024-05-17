module Pong (
    input clock,
    input p1_up_button,
    input p1_down_button,
    input p2_up_button,
    input p2_down_button,
    input start,
    input change_mode,
    input p1_ai_enable,
    input p2_ai_enable, 
    input [2:0] p1_keypad_column,
    input [2:0] p2_keypad_column,

    output [3:0] p1_keypad_row,
    output [3:0] p2_keypad_row,
    output out_Hsync,
    output out_Vsync,
    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue,
    output [7:0] ssd,
    output [7:0] anode,
    output audio_output,
    output p1_ai_enable_debounced,
    output p2_ai_enable_debounced
    );


    parameter TOTAL_COLS = 800, TOTAL_ROWS = 525;
    parameter ACTIVE_COLS = 640, ACTIVE_ROWS = 480;
    parameter DEBOUNCE_DIVISOR = 50000;
    parameter KEYPAD_UP = 2, KEYPAD_DOWN = 5;
    parameter BLANK = 12;

    parameter GAME_WIDTH = 40, GAME_HEIGHT = 30;
    parameter PADDLE_HEIGHT = 6;
    parameter P1_PADDLE_X = 1, P2_PADDLE_X = GAME_WIDTH-2;
    parameter INIT = 3'd0, MODE = 3'd1, RUNNING = 3'd2, P1_SCORE = 3'd3, P2_SCORE = 3'd4, OVER = 3'd5;


    wire clock_25Mhz, debounce_clock;

    wire temp1_Hsync, temp1_Vsync, temp2_Hsync, temp2_Vsync;
    wire [3:0] temp_Red, temp_Green, temp_Blue;

    wire p1_up_debounced, p1_down_debounced;
    wire p2_up_debounced, p2_down_debounced;
    wire start_debounced, change_mode_debounced;
    wire p1_up_keypad, p1_down_keypad, p2_up_keypad, p2_down_keypad;
    wire p1_up, p1_down, p2_up, p2_down;

    wire [3:0] p1_score, p2_score, score_limit;
    wire [3:0] p1_score_ones, p2_score_ones;
    wire [3:0] p1_score_tens, p2_score_tens;
    wire [9:0] column_count, row_count;
    wire [5:0] p1_paddle_y, p2_paddle_y, ball_x, ball_y;
    wire [2:0] state;

    wire hit_wall, hit_paddle;

    wire ai_enable;
    
    assign p1_up = p1_up_debounced ^ p1_up_keypad;
    assign p1_down = p1_down_debounced ^ p1_down_keypad;
    assign p2_up = p2_up_debounced ^ p2_up_keypad;
    assign p2_down = p2_down_debounced ^ p2_down_keypad;
    assign ai_enable = p1_ai_enable_debounced | p2_ai_enable_debounced;

    clock_divider #(
        .DIVISOR(4)
        ) clock_div (
        .in_clock(clock),

        .out_clock(clock_25Mhz)
        );

    clock_divider #(
        .DIVISOR(DEBOUNCE_DIVISOR) 
        ) clock_debounce (
        .in_clock(clock),

        .out_clock(debounce_clock)
        );

    button_debouncer debounce_start(
        .clock(debounce_clock),
        .button(start),

        .debounced_button(start_debounced)
        );

    button_debouncer debounce_change_mode(
        .clock(debounce_clock),
        .button(change_mode),

        .debounced_button(change_mode_debounced)
        );

    button_debouncer debounce_p1_up(
        .clock(debounce_clock),
        .button(p1_up_button),

        .debounced_button(p1_up_debounced)
        );

    button_debouncer debounce_p1_down(
        .clock(debounce_clock),
        .button(p1_down_button),

        .debounced_button(p1_down_debounced)
        );

    button_debouncer debounce_p2_up(
        .clock(debounce_clock),
        .button(p2_up_button),

        .debounced_button(p2_up_debounced)
        );

    button_debouncer debounce_p2_down(
        .clock(debounce_clock),
        .button(p2_down_button),

        .debounced_button(p2_down_debounced)
        );

    button_debouncer debounce_p1_ai(
        .clock(debounce_clock),
        .button(p1_ai_enable),

        .debounced_button(p1_ai_enable_debounced)
        );

    button_debouncer debounce_p2_ai(
        .clock(debounce_clock),
        .button(p2_ai_enable),

        .debounced_button(p2_ai_enable_debounced)
        );

    keypad_input #(
        .BLANK(BLANK),
        .UP(KEYPAD_UP),
        .DOWN(KEYPAD_DOWN)
        ) keypad_p1 (
        .column(p1_keypad_column),
        .clock(debounce_clock),

        .row(p1_keypad_row),
        .up(p1_up_keypad),
        .down(p1_down_keypad)
        );

    keypad_input #(
        .BLANK(BLANK),
        .UP(KEYPAD_UP),
        .DOWN(KEYPAD_DOWN)
        ) keypad_p2 (
        .column(p2_keypad_column),
        .clock(debounce_clock),

        .row(p2_keypad_row),
        .up(p2_up_keypad),
        .down(p2_down_keypad)
        );

    VGA_Sync_Pulse_Generator #(
        .TOTAL_COLS(TOTAL_COLS),
        .TOTAL_ROWS(TOTAL_ROWS),
        .ACTIVE_COLS(ACTIVE_COLS),
        .ACTIVE_ROWS(ACTIVE_ROWS)
        ) sync_pulse_gen (
        .clock(clock_25Mhz),

        .out_Hsync(temp1_Hsync),
        .out_Vsync(temp1_Vsync),
        .column_count(),
        .row_count()
        );

    Pong_FSM #(
        .TOTAL_COLS(TOTAL_COLS),
        .TOTAL_ROWS(TOTAL_ROWS),
        .ACTIVE_COLS(ACTIVE_COLS),
        .ACTIVE_ROWS(ACTIVE_ROWS),
        .GAME_WIDTH(GAME_WIDTH),
        .GAME_HEIGHT(GAME_HEIGHT),
        .P1_PADDLE_X(P1_PADDLE_X),
        .P2_PADDLE_X(P2_PADDLE_X),
        .PADDLE_HEIGHT(PADDLE_HEIGHT),
        .INIT(INIT),
        .MODE(MODE), 
        .RUNNING(RUNNING), 
        .P1_SCORE(P1_SCORE), 
        .P2_SCORE(P2_SCORE),
        .OVER(OVER)
        ) pong_fsm_wrap (
        .clock(clock_25Mhz),
        .start(start_debounced),
        .p1_up(p1_up),
        .p1_down(p1_down),
        .p2_up(p2_up),
        .p2_down(p2_down),
        .change_mode(change_mode_debounced),
        .p1_ai_enable(p1_ai_enable_debounced),
        .p2_ai_enable(p2_ai_enable_debounced),

        .state(state),
        .score_limit(score_limit),
        .p1_score(p1_score),
        .p2_score(p2_score),
        .p1_score_tens(p1_score_tens),
        .p1_score_ones(p1_score_ones),
        .p2_score_tens(p2_score_tens),
        .p2_score_ones(p2_score_ones),
        .p1_paddle_y(p1_paddle_y),
        .p2_paddle_y(p2_paddle_y),
        .ball_x(ball_x),
        .ball_y(ball_y),
        .hit_wall(hit_wall),
        .hit_paddle(hit_paddle)
        );

    VGA_Sync_to_Count #(
        .TOTAL_COLS(TOTAL_COLS),
        .TOTAL_ROWS(TOTAL_ROWS)
        ) VGA_Sync_to_Count_wrap (
        .clock(clock_25Mhz),
        .in_Hsync(temp1_Hsync),
        .in_Vsync(temp1_Vsync),

        .out_Hsync(temp2_Hsync),
        .out_Vsync(temp2_Vsync),
        .column_count(column_count),
        .row_count(row_count)
        );

    Draw #(
        .P1_PADDLE_X(P1_PADDLE_X),
        .P2_PADDLE_X(P2_PADDLE_X),
        .PADDLE_HEIGHT(PADDLE_HEIGHT),
        .INIT(INIT),
        .MODE(MODE), 
        .RUNNING(RUNNING), 
        .P1_SCORE(P1_SCORE), 
        .P2_SCORE(P2_SCORE),
        .OVER(OVER)
        ) draw_wrap (
        .clock(clock_25Mhz),
        .p1_paddle_y(p1_paddle_y),
        .p2_paddle_y(p2_paddle_y),
        .ball_x(ball_x),
        .ball_y(ball_y),
        //.hit_paddle(hit_paddle),
        .column_count(column_count[9:4]),
        .row_count(row_count[9:4]),
        .p1_score(p1_score),
        .p2_score(p2_score),
        .score_limit(score_limit),
        .state (state),
        .ai_enable(ai_enable),

        .out_Red(temp_Red),
        .out_Green(temp_Green),
        .out_Blue(temp_Blue)
        );

    VGA_Sync_Porch #(
        .TOTAL_COLS(TOTAL_COLS),
        .TOTAL_ROWS(TOTAL_ROWS),
        .ACTIVE_COLS(ACTIVE_COLS),
        .ACTIVE_ROWS(ACTIVE_ROWS)
        ) sync_porch (
        .clock(clock_25Mhz),
        .in_Hsync(temp2_Hsync),
        .in_Vsync(temp2_Vsync),
        .in_Red(temp_Red),
        .in_Green(temp_Green),
        .in_Blue(temp_Blue),

        .out_Hsync(out_Hsync),
        .out_Vsync(out_Vsync),
        .out_Red(out_Red),
        .out_Green(out_Green),
        .out_Blue(out_Blue)
        );

    score_to_ssd ssd_wrap (
        .digit0(p2_score_ones),
        .digit1(p2_score_tens),
        .digit2(BLANK),
        .digit3(BLANK),
        .digit4(p1_score_ones),
        .digit5(p1_score_tens),
        .digit6(BLANK),
        .digit7(BLANK),
        .clock(debounce_clock),

        .ssd(ssd),
        .anode(anode)
        );

    bgm bgm_wrap (
        .clk(clock),
        .hit_wall(hit_wall),
        .ball_x(ball_x),
        .change_mode(change_mode_debounced),
        .voice_fre(audio_output),
        .state(state)
        );
endmodule