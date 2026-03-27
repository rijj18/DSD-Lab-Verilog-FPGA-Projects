`timescale 1ns/1ps

module ringcount_tb;

reg clk;
reg rst;
wire [1:0] doutr;
ringcount uut (
    .clk(clk),
    .rst(rst),
    .doutr(doutr)
);

always #5 clk = ~clk;

initial begin
    // Initialize
    clk = 0;
    rst = 1;

    // Apply reset
    #10 rst = 0;
     #100;

    // Reset again
    rst = 1;
    #10 rst = 0;

    #50;

    $stop;
end

// Monitor values
initial begin
    $monitor("Time=%0t | rst=%b | dout=%b", $time, rst, doutr);
end

endmodule
