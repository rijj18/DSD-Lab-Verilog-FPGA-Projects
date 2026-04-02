`timescale 1ns / 1ps

module mealy_tb;
    reg clk;
    reg rst;
    reg din;
    wire dout;
    mealy uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        din = 0;

        // Apply reset
        #10;
        rst = 0;
      //i/p sequence
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;

        #20;

        $finish;
    end
    initial begin
        $monitor("Time=%0t | rst=%b | din=%b | state=%b | dout=%b",
                  $time, rst, din, uut.state, dout);
    end

endmodule
