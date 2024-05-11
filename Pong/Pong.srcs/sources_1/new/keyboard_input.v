//use keyboard as input 
//input port keyboard_clk => F4
//input port keyboard_clk => B2

module keyboard_input (
    input clk,
    input keyboard_clk, // get data at negedge
    input keyboard_data, // keyboard data => get at negedge
    output reg player_1_up,
    output reg player_1_down,
    output reg player_2_up,
    output reg player_2_down,
    output reg start
);
    parameter IDLE = 2'b0;
    parameter detected_start_bit = 2'b01;
    parameter get_data = 2'b10;
    parameter end_data = 2'b11;

    reg [32:0] data = 32'd0;
    reg [1:0] state = 2'd0;
    
    always@(negedge keyboard_clk)begin
        if(keyboard_data == 0)begin
            case (state)
                IDLE:begin
                    state <= detected_start_bit;
                end
                detected_start_bit:begin
                    state <= get_data;
                end
                get_data:begin
                    state <= end_data;
                end
                end_data:begin
                    state <= IDLE;
                end
            endcase
        end
        else begin
            state <= IDLE;
        end
    end

    always@(negedge keyboard_clk)begin
        if(state == get_data)begin
            data <= data << 1;
            data[0] <= keyboard_data;
        end
        else begin
            data[31] <= 0;
        end
    end
endmodule

module Eight7Segments(
	input  wire        clk,
	input  wire [31:0] data,
	output wire [ 6:0] seg,
	output reg  [ 7:0] an
);
	reg [ 3:0] display;
	reg [20:0] counter;

	HEXdecoder hd ( display, seg );

	always @ ( * ) begin
	  an = 255;
	  an [ counter [20:18] ] = 0;
	  case ( counter [20:18] )
	    0 : display = data [ 3: 0];
	    1 : display = data [ 7: 4];
        2 : display = data [11: 8];
        3 : display = data [15:12];
        4 : display = data [19:16];
        5 : display = data [23:20];
        6 : display = data [27:24];
        7 : display = data [31:28];
	  endcase

	end

	always @ ( posedge clk ) begin
	  counter <= counter + 21'd1;
	end

endmodule
    
module HEXdecoder(
	input  wire [3:0] data,
	output wire [6:0] segment
);
	wire [6:0] hex [15:0];

	assign segment = hex [ data ];

	assign hex [ 0] = 7'b1000000;
	assign hex [ 1] = 7'b1111001;
	assign hex [ 2] = 7'b0100100;
	assign hex [ 3] = 7'b0110000;
	assign hex [ 4] = 7'b0011001;
	assign hex [ 5] = 7'b0010010;
	assign hex [ 6] = 7'b0000010;
	assign hex [ 7] = 7'b1111000;
	assign hex [ 8] = 7'b0000000;
	assign hex [ 9] = 7'b0010000;
	assign hex [10] = 7'b0001000;
	assign hex [11] = 7'b0000011;
	assign hex [12] = 7'b1000110;
	assign hex [13] = 7'b0100001;
	assign hex [14] = 7'b0000110;
	assign hex [15] = 7'b0001110;

endmodule
