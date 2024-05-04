// Purpose of this Module:
// Control the movement direction and speed of the paddles
module Pong_Paddle_Control #(
    parameter
    PADDLE_HEIGHT = 6,
    GAME_HEIGHT = 30
    ) (
    input clock,
    input up, down,

    output reg [5:0] paddle_y = GAME_HEIGHT/2-1 - PADDLE_HEIGHT/2 
    );

    // Set the Speed of the paddle movement.  
    // In this case, the paddle will move one board game unit
    // every 50 milliseconds that the button is held down.
    // 25MHz / 1250000 = 20 Hz = 50 milliseconds 
    parameter PADDLE_SPEED = 1250000;


    integer paddle_count = 0;
    wire paddle_enable;
    assign paddle_enable = up ^ down;

    // Update the paddle location based on paddle_count and paddle_y location 
    // Only update when paddle_count reaches PADDLE_SPEED
    // Don't update paddle reaches the top or bottom of the screen
    always @(posedge clock) begin
        if (paddle_enable) begin
            paddle_count <= (paddle_count == PADDLE_SPEED) ? 0 : paddle_count + 1;
        end

        if (up && (paddle_count == PADDLE_SPEED) && paddle_y != 0) begin
            paddle_y <= paddle_y - 1;
        end else if (down && (paddle_count == PADDLE_SPEED) && paddle_y != GAME_HEIGHT-PADDLE_HEIGHT-1) begin
            paddle_y <= paddle_y + 1;
        end
    end
endmodule
