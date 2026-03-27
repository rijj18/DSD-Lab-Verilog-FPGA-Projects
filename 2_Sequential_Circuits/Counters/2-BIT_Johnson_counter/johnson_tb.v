`timescale 1ns/1ps

module johnson_tb;

reg clk;
reg rst;
wire [1:0] doutj;

// Instantiate DUT
johnson uut (
    .clk(clk),
    .rst(rst),
    .doutj(doutj)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #100;
    rst = 1;
    #10 rst = 0;

    #50;

    $stop;
end
initial begin
    $monitor("Time=%0t | rst=%b | dout=%b", $time, rst, doutj);
end

endmodule
