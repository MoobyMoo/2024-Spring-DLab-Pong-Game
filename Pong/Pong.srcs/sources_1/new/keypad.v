module keypad #(
    parameter ASTERISK = 4'd10,
    parameter HASH = 4'd11,
    parameter BLANK = 4'd12) (

    input [2:0] column,
    input clock,

    output reg [3:0] row = 0,
    output reg [3:0] digit = 0
    );


wire [1:0] refresh_counter_keypad;
reg [3:0] temp = 0, still_pressed = 0;


refresh_counter_keypad refresh_counter_keypad_wrap(
    .clock(clock),
    .refresh_counter_keypad(refresh_counter_keypad)
    );


always @(posedge clock) begin
    case (refresh_counter_keypad)
        0: row <= 4'b0001;
        1: row <= 4'b0010;
        2: row <= 4'b0100;
        3: row <= 4'b1000;
    endcase

    digit <= (still_pressed == 0) ? BLANK : temp;
end

always @(posedge clock) begin
    case (row)
        4'b0001: begin
            case (column) 
                3'b001: begin
                    temp <= 4'd1;
                    still_pressed[0] <= 1;
                end
                3'b010: begin
                    temp <= 4'd2;
                    still_pressed[0] <= 1;
                end
                3'b100: begin
                    temp <= 4'd3;
                    still_pressed[0] <= 1;
                end
                default: still_pressed[0] <= 0;
            endcase
        end
        4'b0010: begin
            case (column) 
                3'b001: begin
                    temp <= 4'd4;
                    still_pressed[1] <= 1;
                end
                3'b010: begin
                    temp <= 4'd5;
                    still_pressed[1] <= 1;
                end
                3'b100: begin
                    temp <= 4'd6;
                    still_pressed[1] <= 1;
                end
                default: still_pressed[1] <= 0;
            endcase
        end
        4'b0100: begin
            case (column) 
                3'b001: begin
                    temp <= 4'd7;
                    still_pressed[2] <= 1;
                end
                3'b010: begin
                    temp <= 4'd8;
                    still_pressed[2] <= 1;
                end
                3'b100: begin
                    temp <= 4'd9;
                    still_pressed[2] <= 1;
                end
                default: still_pressed[2] <= 0;
            endcase
        end
        4'b1000: begin
            case (column) 
                3'b001: begin
                    temp <= ASTERISK;
                    still_pressed[3] <= 1;
                end
                3'b010: begin
                    temp <= 4'd0;
                    still_pressed[3] <= 1;
                end
                3'b100: begin
                    temp <= HASH;
                    still_pressed[3] <= 1;
                end
                default: still_pressed[3] <= 0;
            endcase
        end
    endcase
end


endmodule



module refresh_counter_keypad(
    input clock,
    output reg [1:0] refresh_counter_keypad = 0
    );

always @(posedge clock) begin
     refresh_counter_keypad <= refresh_counter_keypad + 1;
end
endmodule
