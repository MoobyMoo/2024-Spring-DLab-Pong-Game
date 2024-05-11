//for input debounce//
module debouncer (
    input clk,
    input kclk,
    input kdata,
    output reg kclk_de,
    output reg kdata_de
);
    reg temp_kclk = 1'd0;
    reg temp_kdata = 1'd0;
    reg [4:0] count_clk = 5'd0;
    reg [4:0] count_data = 5'd0;

    always@(posedge clk)begin
        if(temp_kclk == kclk)
        begin
            if(count_clk == 5'd19) // after a while,if kclk is same, kclk is vaild
            begin
                kclk_de <= kclk;
                count_clk <= 5'd0;
            end
            else
            begin
                count_clk <= count_clk + 1;
            end
        end
        else
        begin
            temp_kclk <= kclk;
            count_clk <= 5'd0;
        end
    end

    always@(posedge clk)begin
        if(temp_kdata == kdata)
        begin
            if(count_data == 5'd19) // after a while,if kdata is same, kdata is vaild
            begin
                kdata_de <= kdata;
                count_data <= 5'd0;
            end
            else
            begin
                count_data <= count_data + 1;
            end
        end
        else
        begin
            temp_kdata <= kdata;
            count_data <= count_data + 1;
        end
    end


endmodule