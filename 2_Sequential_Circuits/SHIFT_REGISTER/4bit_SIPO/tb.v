module sipo_tb;
reg clk, rst, sin;
  wire [3:0] q;
  siso uut (
    .clk(clk),
    .rst(rst),
    .si(sin),
    .q(q)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    sin = 0;

    #10 rst = 0;

    // Apply serial input
    #10 si = 1;
    #10 si = 0;
    #10 si = 1;
    #10 si = 1;

    #50 $finish;
end

endmodule
