//To show the score on the screen
module Score_Display #(
    parameter 
    COL_S1 = 6'd3,
    COL_E1 = 6'd8,
    COL_S2 = 6'd10,
    COL_E2 = 6'd15,
    ROW_S  = 6'd13,
    ROW_E  = 6'd22
    ) (
    input clock,
    input [5:0] column_count,
    input [5:0] row_count,
    input [3:0] score,

    output reg draw_s
    );

    reg [5:0] fixed_column_count, fixed_row_count;
    reg display = 0, ten = 0;

    //Decide which number to display
    //fix the coordinate and get the corresponding score 
    always @(posedge clock) begin
        if (column_count >= COL_S1 & column_count <= COL_E1 & row_count >= ROW_S & row_count <= ROW_E) begin
            fixed_column_count <= column_count - COL_S1;
            fixed_row_count <= row_count - ROW_S;
            ten <= 1'b1;
            display <= 1'b1;
        end else if (column_count >= COL_S2 & column_count <= COL_E2 & row_count >= ROW_S & row_count <= ROW_E) begin
            fixed_column_count <= column_count - COL_S2;
            fixed_row_count <= row_count - ROW_S;
            ten <= 1'b0;
            display <= 1'b1;
        end else begin
            fixed_column_count <= column_count;
            fixed_row_count <= row_count;
            ten <= 1'b0;
            display <= 1'b0;
        end
    end

    always @(posedge clock) begin
        if (display) begin
            if (ten) begin
                if (score >= 6'd10) begin
                    draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & ~(fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd8 | fixed_row_count == 6'd9)) |
                               ((fixed_column_count == 6'd4 | fixed_column_count == 6'd5) & ~(fixed_row_count == 6'd8 | fixed_row_count == 6'd9))) ?
                        1'b0 : 1'b1;
                end
                else begin
                    draw_s <= ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) &
                               ~(fixed_row_count == 6'd0 | fixed_row_count == 6'd1 | fixed_row_count == 6'd8 | fixed_row_count == 6'd9)) ?
                        1'b0 : 1'b1;
                end
            end
            else begin
                case(score)
                    4'd0, 4'd10: begin
                        draw_s <= ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) &
                                    ~(fixed_row_count == 6'd0 | fixed_row_count == 6'd1 | fixed_row_count == 6'd8 | fixed_row_count == 6'd9)) ?
                            1'b0 : 1'b1;
                    end
                    4'd1, 4'd11: begin
                        draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & ~(fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd8 | fixed_row_count == 6'd9)) |
                                   ((fixed_column_count == 6'd4 | fixed_column_count == 6'd5) & ~(fixed_row_count == 6'd8 | fixed_row_count == 6'd9))) ?
                            1'b0 : 1'b1;
                    end
                    4'd2, 4'd12: begin
                        draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3)) |
                                   ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7))|
                                   ((fixed_column_count == 6'd4 | fixed_column_count == 6'd5) & (fixed_row_count == 6'd6 | fixed_row_count == 6'd7))) ?
                            1'b0 : 1'b1;
                    end
                    4'd3, 4'd13: begin
                        draw_s <= ((fixed_column_count == 6'd0 | fixed_column_count == 6'd1 | fixed_column_count == 6'd2 | fixed_column_count == 6'd3) &
                                   (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7)) ?
                            1'b0 : 1'b1;
                    end
                    4'd4, 4'd14: begin
                        draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & (fixed_row_count == 6'd6 | fixed_row_count == 6'd7 | fixed_row_count == 6'd8 | fixed_row_count == 6'd9)) |
                                   ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & ~(fixed_row_count == 6'd4 | fixed_row_count == 6'd5))) ?
                            1'b0 : 1'b1;
                    end
                    4'd5, 4'd15: begin
                        draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & (fixed_row_count == 6'd6 | fixed_row_count == 6'd7)) |
                                   ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7))|
                                   ((fixed_column_count == 6'd4 | fixed_column_count == 6'd5) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3))) ?
                            1'b0 : 1'b1;
                    end
                    4'd6: begin
                        draw_s <= (((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7))|
                                   ((fixed_column_count == 6'd4 | fixed_column_count == 6'd5) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3))) ?
                            1'b0 : 1'b1;
                    end
                    4'd7: begin
                        draw_s <= (((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & (fixed_row_count == 6'd0 | fixed_row_count == 6'd1)) |
                                   ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & (fixed_row_count == 6'd0 | fixed_row_count == 6'd1)) |
                                    (fixed_column_count == 6'd4 | fixed_column_count == 6'd5)) ?
                        1'b1 : 1'b0;
                    end
                    4'd8: begin
                        draw_s <= ((fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & 
                                   (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7)) ?
                            1'b0 : 1'b1;
                    end
                    4'd9: begin
                        draw_s <= ((fixed_column_count == 6'd0 | fixed_column_count == 6'd1) & (fixed_row_count == 6'd6 | fixed_row_count == 6'd7) |
                                   (fixed_column_count == 6'd2 | fixed_column_count == 6'd3) & (fixed_row_count == 6'd2 | fixed_row_count == 6'd3 | fixed_row_count == 6'd6 | fixed_row_count == 6'd7)) ?
                            1'b0 : 1'b1;
                    end
                endcase
            end
        end
        else begin
            draw_s <= 0;
        end
    end

endmodule
