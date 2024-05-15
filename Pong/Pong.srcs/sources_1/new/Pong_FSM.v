// Purpose of this Module:
// Controls the state transition and designs of all the states
module Pong_FSM #(
    parameter
    TOTAL_COLS = 800,
    TOTAL_ROWS = 525,
    ACTIVE_COLS = 640,
    ACTIVE_ROWS = 480,
    GAME_WIDTH = 40,
    GAME_HEIGHT = 30,
    PADDLE_HEIGHT = 6,
    P1_PADDLE_X = 1, P2_PADDLE_X = GAME_WIDTH-2,
    INIT = 3'd0, MODE = 3'd1, RUNNING = 3'd2, P1_SCORE = 3'd3, P2_SCORE = 3'd4, OVER = 3'd5
    ) (
    input clock,
    input start,
    input p1_up,
    input p1_down,
    input p2_up,
    input p2_down,
    input change_mode,

    output reg [2:0] state = 0,
    output reg [3:0] score_limit = 5,
    output reg [3:0] p1_score = 0,
    output reg [3:0] p2_score = 0,
    output [3:0] p1_score_tens,
    output [3:0] p1_score_ones,
    output [3:0] p2_score_tens,
    output [3:0] p2_score_ones,
    output [5:0] p1_paddle_y,
    output [5:0] p2_paddle_y,
    output [5:0] ball_x,
    output [5:0] ball_y,

    output hit_wall,
    output hit_paddle
    );


    // We divide the original width and height by 16
    // 640/16 = 40, 480/16 = 30
    // now each board unit represents 16*16 pixels
    // This way we only need to keep track of less column and row positions
    parameter P5 = 2'd0, P10 = 2'd1, P15 = 2'd2;

    wire p1_draw_paddle, p2_draw_paddle, draw, running;
    
    wire [5:0] small_column_count, small_row_count;
    wire p1_score_point, p2_score_point;
    reg start_pressed = 0, change_mode_pressed = 0;
    reg [1:0] mode = 0;


    // Divide by 16
    //assign small_column_count = column_count[9:4];
    //assign small_row_count = row_count[9:4];
    assign running = (state == RUNNING) ? 1 : 0;
    assign init = (state == INIT) ? 1 : 0;
    assign p1_score_tens = p1_score / 10;
    assign p1_score_ones = p1_score % 10;
    assign p2_score_tens = p2_score / 10;
    assign p2_score_ones = p2_score % 10;
    assign p1_score_point = (ball_x == GAME_WIDTH-2) && 
                ((ball_y < p2_paddle_y) || (ball_y > (p2_paddle_y + PADDLE_HEIGHT)));
    assign p2_score_point = (ball_x == 1) && 
                ((ball_y < p1_paddle_y) || (ball_y > (p1_paddle_y + PADDLE_HEIGHT)));
    assign hit_wall = (ball_y == 0) || (ball_y == GAME_HEIGHT-1);
    assign hit_paddle = ((ball_x == 1) && 
                ((ball_y < p2_paddle_y) || (ball_y > (p2_paddle_y + PADDLE_HEIGHT)))) ||
                ((ball_x == GAME_WIDTH-2) &&
                ((ball_y < p1_paddle_y) || (ball_y > (p1_paddle_y + PADDLE_HEIGHT))));


    always @(posedge clock) begin

        if (start & ~start_pressed) begin
            start_pressed <= 1'b1;
        end
        else if (~start & start_pressed) begin
            start_pressed <= 1'b0;
        end
        else begin
            start_pressed <= start_pressed;
        end

        if (change_mode & ~change_mode_pressed) begin
            change_mode_pressed <= 1'b1;
        end
        else if (~change_mode & change_mode_pressed) begin
            change_mode_pressed <= 1'b0;
        end
        else begin
            change_mode_pressed <= change_mode_pressed;
        end
    end

    Pong_Paddle_Control #(
        .PADDLE_HEIGHT(PADDLE_HEIGHT),
        .GAME_HEIGHT(GAME_HEIGHT)
    ) p1_paddle (
        .clock(clock),
        .up(p1_up),
        .down(p1_down),
        .init(init),

        .paddle_y(p1_paddle_y)
        );

    Pong_Paddle_Control #(
        .PADDLE_HEIGHT(PADDLE_HEIGHT),
        .GAME_HEIGHT(GAME_HEIGHT)
    ) p2_paddle (
        .clock(clock),
        .up(p2_up),
        .down(p2_down),
        .init(init),

        .paddle_y(p2_paddle_y)
        );

    Pong_Ball_Control #(
        .GAME_HEIGHT(GAME_HEIGHT),
        .GAME_WIDTH(GAME_WIDTH)
    ) ball_wrap (
        .clock(clock),
        .running(running),
        .p1_score_point(p1_score_point),

        .ball_x(ball_x),
        .ball_y(ball_y)
        );
    
    always @(posedge clock) begin
        case (state)
        // Start Screen
        INIT: begin
            p1_score <= 0;
            p2_score <= 0;
            state <= (start & ~start_pressed) ? MODE : INIT;
            mode <= P5;
            score_limit <= 5;
        end
        // Choose how many points to win
        MODE: begin
            if (change_mode & ~change_mode_pressed) begin
                case (mode)
                P5: begin
                    mode <= P10;
                    score_limit <= 10;
                end
                P10: begin
                    mode <= P15;
                    score_limit <= 15;
                end
                P15: begin
                    mode <= P5;
                    score_limit <= 5;
                end
                endcase
            end

            state <= (start & ~start_pressed) ? RUNNING : MODE;
        end    
        // Stay in this state until a player scores
        RUNNING: begin
            // P1 score 
            if (p1_score_point) begin
                state <= P1_SCORE;
            // P2 score
            end else if (p2_score_point) begin
                state <= P2_SCORE;
            end
        end
        
        P1_SCORE: begin
            p1_score <= p1_score + 1;
            state <= (p1_score == score_limit-1) ? OVER : RUNNING;
        end

        P2_SCORE: begin
            p2_score <= p2_score + 1;
            state <= (p2_score == score_limit-1) ? OVER : RUNNING;
        end
        //End Screen
        OVER: begin
            state <= (start & ~start_pressed) ? INIT : OVER;
        end
        endcase
    end
endmodule