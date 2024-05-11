module Pong (
    input clock,
    input p1_up,
    input p1_down,
    input p2_up,
    input p2_down,
    input start,
    input change_mode,

    output out_Hsync,
    output out_Vsync,
    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue,
    output [7:0] ssd,
    output [7:0] anode
    );


    parameter TOTAL_COLS = 800, TOTAL_ROWS = 525;
    parameter ACTIVE_COLS = 640, ACTIVE_ROWS = 480;
    parameter DEBOUNCE_DIVISOR = 50000;
    parameter BLANK = 12;


    wire clock_25Mhz, debounce_clock;
    wire temp1_Hsync, temp1_Vsync, temp2_Hsync, temp2_Vsync;
    wire [3:0] temp_Red, temp_Green, temp_Blue;
    wire p1_up_debounced, p1_down_debounced;
    wire p2_up_debounced, p2_down_debounced;
    wire start_debounced, change_mode_debounced;
    wire [3:0] p1_score, p2_score;
    wire [3:0] p1_score_ones, p2_score_ones;
    wire [3:0] p1_score_tens, p2_score_tens;

    assign p1_score_tens = p1_score / 10;
    assign p1_score_ones = p1_score % 10;
    assign p2_score_tens = p2_score / 10;
    assign p2_score_ones = p2_score % 10;


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
        .button(p1_up),

        .debounced_button(p1_up_debounced)
        );

    button_debouncer debounce_p1_down(
        .clock(debounce_clock),
        .button(p1_down),

        .debounced_button(p1_down_debounced)
        );

    button_debouncer debounce_p2_up(
        .clock(debounce_clock),
        .button(p2_up),

        .debounced_button(p2_up_debounced)
        );

    button_debouncer debounce_p2_down(
        .clock(debounce_clock),
        .button(p2_down),

        .debounced_button(p2_down_debounced)
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
        .ACTIVE_ROWS(ACTIVE_ROWS)
        ) pong_fsm_wrap (
        .clock(clock_25Mhz),
        .in_Hsync(temp1_Hsync),
        .in_Vsync(temp1_Vsync),
        .start(start_debounced),
        .p1_up(p1_up_debounced),
        .p1_down(p1_down_debounced),
        .p2_up(p2_up_debounced),
        .p2_down(p2_down_debounced),
        .change_mode(change_mode_debounced),

        .out_Hsync(temp2_Hsync),
        .out_Vsync(temp2_Vsync),
        .p1_score(p1_score),
        .p2_score(p2_score),
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

endmodule