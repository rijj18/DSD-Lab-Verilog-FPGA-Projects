module siso_tb;
reg clk, reset, si;
wire so;
siso_shift_register uut (
    .clk(clk),
    .reset(reset),
    .si(si),
    .so(so)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    reset = 1;
    si = 0;

    #10 reset = 0;

    // Apply inputs
    #10 si = 1;
    #10 si = 0;
    #10 si = 1;
    #10 si = 1;
   #50 $finish;
end

endmodule
