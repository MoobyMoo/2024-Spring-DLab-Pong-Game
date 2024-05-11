// Purpose of this Module:
// Control the movement direction and speed of the ball
// The ball only moves diagonally,
// and changes direction only when it hits a wall or paddle
module Pong_Ball_Control #(
    parameter
    GAME_WIDTH = 40,
    GAME_HEIGHT = 30
    ) (
    input clock,
    input running,
    input p1_score_point,

    output reg [5:0] ball_x = 0,
    output reg [5:0] ball_y = 0
    );

    // Set the Speed of the paddle movement.  
    // In this case, the paddle will move one board game unit
    // every 50 milliseconds that the button is held down.
    // 25MHz / 1250000 = 20 Hz = 50 milliseconds 
    // 25MHz / 1875000 = 13.33 Hz = 75 milliseconds 
    // 25MHz / 625000 = 40 Hz = 25 milliseconds 
    parameter MIN_BALL_SPEED = 1875000;
    parameter MAX_BALL_SPEED = 1250000;
    parameter BALL_ACCELERATION = 5000;


    reg [5:0] previous_ball_x = 0, previous_ball_y = 0;
    integer ball_count = 0, ball_speed = MIN_BALL_SPEED;


    always @(posedge clock) begin
        // Reset the ball position back to the middle when game resets
        if (~running) begin
            ball_speed <= MIN_BALL_SPEED;
            ball_x <= GAME_WIDTH/2;
            ball_y <= GAME_HEIGHT/2;
            if (p1_score_point) begin
                previous_ball_x <= GAME_WIDTH/2 - 1;
                previous_ball_y <= GAME_HEIGHT/2 - 1;
            end else begin
                previous_ball_x <= GAME_WIDTH/2 + 1;
                previous_ball_y <= GAME_HEIGHT/2 + 1;
            end
        // Only need to check the ball position when ball_count == ball_speed
        end else begin
            if (ball_count < ball_speed) begin
                ball_count <= ball_count + 1;
            end else begin
                ball_count <= 0;
                ball_speed <= (ball_speed == MAX_BALL_SPEED) ?
                ball_speed : ball_speed - BALL_ACCELERATION;
                // Store previous location to keep track of movement 
                previous_ball_x <= ball_x;
                previous_ball_y <= ball_y;

                // If previous_ball_x is less than ball_x, ball is moving to the right
                // Keep it moving to the right unless we hit the wall.
                // If previous_ball_x is greater than ball_x, ball is moving to the left
                // Keep it moving to the left unless we hit the wall.
                // The same logic applies to previous_ball_y and ball_y
                ball_x <= ((previous_ball_x < ball_x && ball_x == GAME_WIDTH-2) 
                    || (previous_ball_x > ball_x && ball_x != 1)) ? ball_x - 1 : ball_x + 1;
                ball_y <= ((previous_ball_y < ball_y && ball_y == GAME_HEIGHT-1) 
                    || (previous_ball_y > ball_y && ball_y != 0)) ? ball_y - 1 : ball_y + 1;
            end
        end
    end
endmodule