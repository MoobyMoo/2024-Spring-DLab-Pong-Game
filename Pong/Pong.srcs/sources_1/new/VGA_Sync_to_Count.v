// Purpose of this module:
// Keep track of our current position (which row/column we are in)
// the out Sync signals will be one clock cycle behind the in Sync signals
module VGA_Sync_to_Count #(
    parameter
    TOTAL_COLS = 800,
    TOTAL_ROWS = 525
    ) (
    input clock,
    input in_Hsync,
    input in_Vsync,

    output reg out_Hsync = 0,
    output reg out_Vsync = 0,
    output reg [9:0] column_count = 0,
    output reg [9:0] row_count = 0
    );

    // look for rising edge on in_Vsync to reset counters
    // rising edge on in_Vsync means we are back to the first column first row
    wire start;
    assign start = (~in_Vsync & in_Vsync); 

    // Delay the sync signals by one clock cycle to get the rising edge of in_Vsync
    // This means now the counters is one clock cycle ahead of the sync signals
    always @(posedge clock) begin
        out_Hsync <= in_Hsync;
        out_Vsync <= in_Vsync;
    end

    // Arithmetic logic for counters
    // Iterate through row by row, each row from left to right 
    always @(posedge clock) begin
        if (start) begin
            row_count <= 0;
            column_count <= 0;
        end else begin
            if (column_count == TOTAL_COLS-1) begin
                row_count <= (row_count == TOTAL_ROWS-1) ? 0 : row_count + 1;
                column_count <= 0;
            end else begin
                column_count <= column_count + 1;
            end
        end
    end
endmodule