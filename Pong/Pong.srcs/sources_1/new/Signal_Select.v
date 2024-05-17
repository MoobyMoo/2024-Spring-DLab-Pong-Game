
module Signal_Select(
    input signal,
    input state_change,
    output [3:0] out_Red,
    output [3:0] out_Green,
    output [3:0] out_Blue
    );

    reg [31:0] Outcome [11:0];
    reg [4:0]  counter = 0;
    initial begin
        Outcome[0]  = 12'b1111_0011_1100;
        Outcome[1]  = 12'b1100_1111_1100;
        Outcome[2]  = 12'b1111_1100_1100;
        Outcome[3]  = 12'b1111_1111_0000;
        Outcome[4]  = 12'b0000_1001_1111;
        Outcome[5]  = 12'b1111_1001_0000;
        Outcome[6]  = 12'b1100_1000_1111;
        Outcome[7]  = 12'b1001_0110_0011;
        Outcome[8]  = 12'b0011_1100_1111;
        Outcome[9]  = 12'b1001_0110_0011;
        Outcome[10] = 12'b1010_0101_1111;
        Outcome[11] = 12'b0011_1111_1100;
        Outcome[12] = 12'b0000_0000_1111;
        Outcome[13] = 12'b0011_1001_0110;
        Outcome[14] = 12'b1100_1111_1100;
        Outcome[15] = 12'b1010_1001_0101;
        Outcome[16] = 12'b1111_0000_1001;
        Outcome[17] = 12'b0110_0011_1001;
        Outcome[18] = 12'b1001_1010_0101;
        Outcome[19] = 12'b1111_1100_1100;
        Outcome[20] = 12'b0101_1111_1010;
        Outcome[21] = 12'b0101-1001_1001;
        Outcome[22] = 12'b0000_1111_1111;
        Outcome[23] = 12'b1001_0110_0101;
        Outcome[24] = 12'b1111_0011_1100;
        Outcome[25] = 12'b1001_1111_0000;
        Outcome[26] = 12'b0110_1001_0011;
        Outcome[27] = 12'b1111_0000_0000;
        Outcome[28] = 12'b1111_0000_1111;
        Outcome[29] = 12'b1111_0101_1010;
        Outcome[30] = 12'b1100_1111_0011;
        Outcome[31] = 12'b1111_0000_0000;
    end

    always @(posedge signal) begin
        counter <= counter + 1;
    end

    assign {out_Red, out_Green, out_Blue} = (state_change) ? 12'b1111_1111_1111 : Outcome[counter];
endmodule
