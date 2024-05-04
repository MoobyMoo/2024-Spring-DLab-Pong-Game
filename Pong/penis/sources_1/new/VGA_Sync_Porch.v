// Purpose of this module:
// Modify the Hsync and Vsync signals to include front and back porch.
// The front and back porch will shift the Active Area around
module VGA_Sync_Porch #(
    parameter  // 640*480
    TOTAL_COLS = 800, 
    TOTAL_ROWS = 525,
    ACTIVE_COLS = 640,
    ACTIVE_ROWS = 480,

    // we get the parameters from http://tinyvga.com/vga-timing/640x480@60Hz
    H_FRONT_PORCH = 16,
    H_BACK_PORCH = 48,
    V_FRONT_PORCH = 10,
    V_BACK_PORCH = 33
    ) (
    input clock,
    input in_Hsync,
    input in_Vsync,
    input [3:0] in_Red,
    input [3:0] in_Green,
    input [3:0] in_Blue,

    output reg out_Hsync = 0,
    output reg out_Vsync = 0,
    output reg [3:0] out_Red = 0,
    output reg [3:0] out_Green = 0,
    output reg [3:0] out_Blue = 0
    );


    wire temp_Hsync, temp_Vsync;
    wire [9:0] column_count, row_count;
    reg [3:0] temp_Red = 0, temp_Green = 0, temp_Blue = 0;

    // Note that the Sync signals get a clock cycle of delay from this
    // So the column_count and row_count will be one cycle ahead of the sync signal 
    VGA_Sync_to_Count #(
        .TOTAL_COLS(TOTAL_COLS),
        .TOTAL_ROWS(TOTAL_ROWS)
        ) Sync_to_Count_wrap (
        .clock(clock),
        .in_Hsync(in_Hsync),
        .in_Vsync(in_Vsync),

        .out_Hsync(temp_Hsync),
        .out_Vsync(temp_Vsync),
        .column_count(column_count),
        .row_count(row_count)
        );


    // Modify the Sync Singals by adding the porches
    always @(posedge clock) begin
        out_Hsync <=  ((column_count < H_FRONT_PORCH + ACTIVE_COLS-1) 
        || (column_count > TOTAL_COLS - H_BACK_PORCH-1)) ? 1 : temp_Hsync;

        out_Vsync <= ((row_count < V_FRONT_PORCH + ACTIVE_ROWS-1)
        || (row_count > TOTAL_ROWS - V_BACK_PORCH-1)) ? 1 : temp_Vsync;
    end


    // The counters are one clock cycle ahead of the sync signals,
    // So we align all of our outputs by delaying the colors by two clock cycles
    always @(posedge clock) begin
        temp_Red <= in_Red;
        temp_Green <= in_Green;
        temp_Blue <= in_Blue;

        out_Red <= temp_Red;
        out_Green <= temp_Green;
        out_Blue <= temp_Blue;
    end
endmodule
