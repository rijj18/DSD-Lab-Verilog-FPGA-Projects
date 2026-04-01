`timescale 1ns / 1ps

module fsm_tb;
    reg clk;
    reg rst;
    reg din;
    wire dout;
    fsm uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;
     initial begin
         clk = 0;
        rst = 1;
        din = 0;
        #10;
        rst = 0;
        // Apply input sequence
        #10 din = 0;  // idle → s0
        #10 din = 1;  // s0 → s1
        #10 din = 0;  // s1 → s1
        #10 din = 1;  // s1 → s0
        #10 din = 1;  // s0 → s1
        #10 din = 0;  // s1 → s1
        #20;
        $finish;
    end

endmodule
