module clock_divider #(
    parameter DIVISOR = 10000
    ) (
    input in_clock,
    
    output reg out_clock = 0
    );

    integer counter = 0;

    always @(posedge in_clock) begin
        counter <= (counter >= DIVISOR-1) ? 0 : counter + 1;
        out_clock <= (counter < DIVISOR/2) ? 1 : 0;
    end
endmodule