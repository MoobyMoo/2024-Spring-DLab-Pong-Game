module score_to_ssd #(
    parameter 
    ASTERISK = 4'd10,
    HASH = 4'd11,
    BLANK = 4'd12
    ) (
    input [3:0] digit0, // rightmost digit
    input [3:0] digit1,
    input [3:0] digit2,
    input [3:0] digit3,
    input [3:0] digit4,
    input [3:0] digit5,
    input [3:0] digit6,
    input [3:0] digit7, // leftmost digit
    input clock, 

    output reg [7:0] ssd=0,
    output reg [7:0] anode=0
    );
    

    reg [2:0] refresh_count=0;
    reg [3:0] number=0;


    always @(posedge clock) begin
        refresh_count <= refresh_count + 1;
    end

    always @* begin
        case (refresh_count)
            3'b000: begin
                anode <= 8'b11111110; 
                number <= digit0;
            end
            3'b001: begin
                anode <= 8'b11111101;
                number <= digit1;
            end
            3'b010: begin
                anode <= 8'b11111011;
                number <= digit2;
            end
            3'b011: begin
                anode <= 8'b11110111;
                number <= digit3;
            end
            3'b100: begin
                anode <= 8'b11101111;
                number <= digit4;
            end
            3'b101: begin
                anode <= 8'b11011111;
                number <= digit5;
            end
            3'b110: begin
                anode <= 8'b10111111;
                number <= digit6;
            end
            3'b111: begin
                anode <= 8'b01111111; 
                number <= digit7;
            end
        endcase
    end

    always @* begin
        case (number)
            4'd1: ssd <= 8'b10011111;
            4'd2: ssd <= 8'b00100101;
            4'd3: ssd <= 8'b00001101;
            4'd4: ssd <= 8'b10011001;
            4'd5: ssd <= 8'b01001001;
            4'd6: ssd <= 8'b01000001;
            4'd7: ssd <= 8'b00011111;
            4'd8: ssd <= 8'b00000001;
            4'd9: ssd <= 8'b00001001;
            ASTERISK: ssd <= 8'b00000000;
            4'd0: ssd <= 8'b00000011;
            HASH: ssd <= 8'b00111001;
            BLANK: ssd <= 8'b11111111;
            default: ssd <= 8'b11111111;
        endcase
    end
endmodule