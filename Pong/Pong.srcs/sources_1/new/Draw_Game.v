
module Draw_Game #(
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


    reg draw_ball = 0, draw_paddle_p1 = 0, draw_paddle_p2 = 0;
    // Draw determines whether the current position needs color
    wire draw; 
    assign draw = draw_ball | draw_paddle_p1 | draw_paddle_p2;


    // Determine if the paddles or the ball is in current position
    always @(posedge clock) begin
        draw_paddle_p1 <= ((column_count == P1_PADDLE_X) && (row_count >= p1_paddle_y)
        && (row_count <= p1_paddle_y + PADDLE_HEIGHT)) ? 1 : 0;
        
        draw_paddle_p2 <= ((column_count == P2_PADDLE_X) && (row_count >= p2_paddle_y)
        && (row_count <= p2_paddle_y + PADDLE_HEIGHT)) ? 1 : 0;

        draw_ball <= (column_count == ball_x && row_count == ball_y) ? 1 : 0;
    end


    // Assign white when the paddles or ball is in current position 
    assign out_Red = draw ? 4'b1111 : 4'b0000;
    assign out_Green = draw ? 4'b1111 : 4'b0000;
    assign out_Blue = draw ? 4'b1111 : 4'b0000;
endmodule
