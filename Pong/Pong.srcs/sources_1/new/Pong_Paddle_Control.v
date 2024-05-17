// Purpose of this Module:
// Control the movement direction and speed of the paddles
module Pong_Paddle_Control #(
    parameter
    PADDLE_HEIGHT = 6,
    GAME_HEIGHT = 30,
    GAME_WIDTH = 40
    ) (
    input clock,
    input up, down,
    input init,
    input ai_enable,
    input player,
    input [5:0] ball_x,
    input [5:0] ball_y,

    output reg [5:0] paddle_y = GAME_HEIGHT/2-1 - PADDLE_HEIGHT/2 
    );

    // Set the Speed of the paddle movement.  
    // In this case, the paddle will move one board game unit
    // every 50 milliseconds that the button is held down.
    // 25MHz / 1250000 = 20 Hz = 50 milliseconds 
    parameter PADDLE_SPEED = 1000000;
    parameter PADDLE_SPEED_AI = 1000000;


    integer paddle_count = 0;
    wire paddle_enable;
    wire [5:0] paddle_center;
    wire [5:0] location;
    wire ai_move;
    assign paddle_enable = up ^ down;
    assign paddle_center = paddle_y + PADDLE_HEIGHT/2;
    assign location = (player) ? GAME_WIDTH/3 - 1 : GAME_WIDTH*2/3 - 1;
    assign ai_move = (player) ? (ball_x >= location) : (ball_x <= location);

    // Update the paddle location based on paddle_count and paddle_y location 
    // Only update when paddle_count reaches PADDLE_SPEED
    // Don't update paddle reaches the top or bottom of the screen
    always @(posedge clock) begin
        if (init) begin
            paddle_y <= GAME_HEIGHT/2-1 - PADDLE_HEIGHT/2;
        end

        if (ai_enable) begin
            paddle_count <= (paddle_count == PADDLE_SPEED_AI) ? 0 : paddle_count + 1;
            if (ai_move) begin
                if (ball_y < paddle_center && 
                    paddle_y != 0 && 
                    paddle_count == PADDLE_SPEED_AI) begin

                    paddle_y <= paddle_y - 1;

                end else if (ball_y > paddle_center && 
                    paddle_y != GAME_HEIGHT-PADDLE_HEIGHT-1 &&
                    paddle_count == PADDLE_SPEED_AI) begin

                    paddle_y <= paddle_y + 1;

                end
            end
        end else begin
            if (paddle_enable) begin
                paddle_count <= (paddle_count == PADDLE_SPEED) ? 0 : paddle_count + 1;
            end

            if (up && (paddle_count == PADDLE_SPEED) && paddle_y != 0) begin
                paddle_y <= paddle_y - 1;
            end else if (down && (paddle_count == PADDLE_SPEED) && paddle_y != GAME_HEIGHT-PADDLE_HEIGHT-1) begin
                paddle_y <= paddle_y + 1;
            end
        end
    end
endmodule
