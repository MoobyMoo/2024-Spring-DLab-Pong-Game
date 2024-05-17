
module Draw_Game #(
    parameter
    P1_PADDLE_X = 0,
    P2_PADDLE_X = 39,
    PADDLE_HEIGHT = 6,
    RUNNING = 2'd2
    ) (
    input clock,
    input p1_ai_enable,
    input p2_ai_enable,
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


    reg draw_ball = 0, draw_paddle_p1 = 0, draw_paddle_p2 = 0, state_change = 0;
    // Draw determines whether the current position needs color
    wire draw, hit_paddle;
    wire [3:0] temp_R, temp_G, temp_B;
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

    // Assign white when the paddles or ball is in current position 
    assign out_Red   = ((p1_ai_enable & draw_paddle_p1) | (p2_ai_enable & draw_paddle_p2)) ? 4'b1111 : (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_R : 4'b0000;
    assign out_Green = ((p1_ai_enable & draw_paddle_p1) | (p2_ai_enable & draw_paddle_p2)) ? 4'b1010 : (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_G : 4'b0000;
    assign out_Blue  = ((p1_ai_enable & draw_paddle_p1) | (p2_ai_enable & draw_paddle_p2)) ? 4'b0000 : (draw_paddle) ? 4'b1111 : (draw_ball) ? temp_B : 4'b0000;
endmodule
