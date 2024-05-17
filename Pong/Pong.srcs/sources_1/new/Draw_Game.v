
module Draw_Game #(
    parameter
    P1_PADDLE_X = 0,
    P2_PADDLE_X = 39,
    PADDLE_HEIGHT = 6,
    RUNNING = 2'd2
    ) (
    input clock,
    //input hit_paddle,
    input [5:0] p1_paddle_y,
    input [5:0] p2_paddle_y,
    input [5:0] ball_x,
    input [5:0] ball_y,
    input [5:0] column_count,
    input [5:0] row_count,
    input [2:0] state,
    input ai_enable,

    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );


    reg draw_ball = 0, draw_paddle_p1 = 0, draw_paddle_p2 = 0, state_change = 0;
    // Draw determines whether the current position needs color
    wire draw, hit_paddle;
    wire [3:0] temp_R, temp_G, temp_B;
    //reg [3:0] ball_R = 4'b1111, ball_G = 4'b1111, ball_B = 4'b1111;
    assign draw_paddle = draw_paddle_p1 | draw_paddle_p2;
    assign hit_paddle = (ball_x == P1_PADDLE_X | ball_x == P2_PADDLE_X)? 1 : 0;

    // Determine if the paddles or the ball is in current position
    always @(posedge clock) begin
        draw_paddle_p1 <= ((column_count == P1_PADDLE_X) && (row_count >= p1_paddle_y)
        && (row_count <= p1_paddle_y + PADDLE_HEIGHT)) ? 1 : 0;
        
        draw_paddle_p2 <= ((column_count == P2_PADDLE_X) && (row_count >= p2_paddle_y)
        && (row_count <= p2_paddle_y + PADDLE_HEIGHT)) ? 1 : 0;

        draw_ball <= (column_count == ball_x && row_count == ball_y) ? 1 : 0;
    end

    always @(negedge clock) begin
        if (state != RUNNING) begin
            state_change <= 1;
        end else if (hit_paddle) begin
            state_change <= 0;
        end
        else begin
            state_change <= state_change;
        end
    end

    Signal_Select Signal_Select_wrap (
        .signal(hit_paddle),
        .state_change(state_change),
        .out_Red(temp_R),
        .out_Green(temp_G),
        .out_Blue(temp_B)
    );
    /*
    Signal_Control #(
        .INITIAL_STATE(2'd1),
        .INITIAL_VALUE(4'b1111)
    ) Signal_Control_BR (
        .clock(clock),

        .signal(temp_R)
    );

    Signal_Control #(
        .INITIAL_STATE(2'd0),
        .INITIAL_VALUE(4'b0000)
    ) Signal_Control_BG (
        .clock(clock),

        .signal(temp_G)
    );

    Signal_Control #(
        .INITIAL_STATE(2'd2),
        .INITIAL_VALUE(4'b0000)
    ) Signal_Control_BB (
        .clock(clock),

        .signal(temp_B)
    );
    */
    /*
    always @(posedge clock) begin
        ball_R <= (state != RUNNING) ? 4'b1111 : (ball_x == P1_PADDLE_X || ball_x == P2_PADDLE_X) ? temp_R : ball_R;
        ball_G <= (state != RUNNING) ? 4'b1111 : (ball_x == P1_PADDLE_X || ball_x == P2_PADDLE_X) ? temp_G : ball_G;
        ball_B <= (state != RUNNING) ? 4'b1111 : (ball_x == P1_PADDLE_X || ball_x == P2_PADDLE_X) ? temp_B : ball_B;
    end
    */

    // Assign white when the paddles or ball is in current position 
    assign out_Red   = (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_R : 4'b0000;
    assign out_Green = (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_G : 4'b0000;
    assign out_Blue  = (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_B : 4'b0000;
endmodule
