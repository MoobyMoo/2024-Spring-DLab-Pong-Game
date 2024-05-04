// Purpose of this module: 
// Generate Hsync and Vsync Pulses based on the Active Area
// These values are based on standard VGA parameters
// ex: Hsync==1 && Vsync==1 Active Area
// ex: Hsync==1 && Vsync==0 Vertical Blanking
// ex: Hsync==0 && Vsync==1 Horizontal Blanking
// ex: Hsync==0 && Vsync==0 Both

module VGA_Sync_Pulse_Generator #(
    parameter  // 640*480 Active Area
    TOTAL_COLS = 800, 
    TOTAL_ROWS = 525,
    ACTIVE_COLS = 640,
    ACTIVE_ROWS = 480
    ) (
    input clock, // 25 MHz clock

    output out_Hsync,
    output out_Vsync,
    output reg [9:0] column_count = 0,
    output reg [9:0] row_count = 0
    );

    // Iterate through row by row, each row from left to right
    always @(posedge clock) begin
        if (column_count == TOTAL_COLS-1) begin
            column_count <= 0;
            row_count <= (row_count == TOTAL_ROWS-1) ? 0 : row_count + 1;
        end else begin
            column_count <= column_count + 1;
        end
    end

   // Sync signals determine the active and inactive areas 
    assign out_Hsync = (column_count < ACTIVE_COLS) ? 1 : 0;
    assign out_Vsync = (row_count < ACTIVE_ROWS) ? 1 : 0;

endmodule 