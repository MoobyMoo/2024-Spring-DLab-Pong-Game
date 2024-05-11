//To draw the smile face in the end of the game
module Face_Display #(
    parameter
    COL_S = 6'd3,
    COL_E = 6'd8,
    ROW_S = 6'd13,
    ROW_E = 6'd22
    ) (
    input clock,
    input [5:0] column_count,
    input [5:0] row_count,
    input win,
    
    output reg draw_f
    );

    reg [5:0] fixed_column_count, fixed_row_count;
    reg display = 0;

    //Decide which number to display
    //fix the coordinate and get the corresponding score 
    always @(posedge clock) begin
        if (column_count >= COL_S & column_count <= COL_E & row_count >= ROW_S & row_count <= ROW_E) begin
            fixed_column_count <= column_count - COL_S;
            fixed_row_count <= row_count - ROW_S;
            display <= 1'b1;
        end else begin
            fixed_column_count <= column_count;
            fixed_row_count <= row_count;
            display <= 1'b0;
        end
    end

    always @(posedge clock) begin
        if (display) begin
            case (fixed_column_count)
                6'd0, 6'd4: begin
                    draw_f <= (fixed_row_count == 6'd0) ? 1'b1 : 1'b0;
                end
                6'd1, 6'd3: begin
                    draw_f <= (fixed_row_count == 6'd2 | fixed_row_count == 6'd3) ? 1'b1 : 1'b0;
                end
                6'd2: begin
                    draw_f <= ((win & (fixed_row_count == 6'd3)) | ( ~win & (fixed_row_count == 6'd2))) ? 1'b1 : 1'b0;
                end
                default: begin
                    draw_f <= 1'b0;
                end
            endcase
        end
        else begin
            draw_f <= 1'b0;
        end
    end
endmodule
