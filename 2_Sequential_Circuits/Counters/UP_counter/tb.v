timescale 1ns/1ps

module upcount_tb;

reg clk;
reg ld;
reg rst;
reg [3:0] ldvalue;
wire [3:0] dout;

// Instantiate your module
upcount uut (
    .clk(clk),
    .ld(ld),
    .rst(rst),
    .ldvalue(ldvalue),
    .dout(dout)
);

// Clock generation (10ns period)
always #5 clk = ~clk;

initial begin
    // Initialize
    clk = 0;
    rst = 1;
    ld = 0;
    ldvalue = 4'b0000;

    // Apply reset
    #10 rst = 0;

    // Let it count
    #40;

    // Load a value
    ld = 1;
    ldvalue = 4'b1010;   // load 10
    #10;

    ld = 0;

    // Continue counting
    #50;

    // Reset again
    rst = 1;
    #10;
    rst = 0;

    #30;

    $stop;
end

endmodule
