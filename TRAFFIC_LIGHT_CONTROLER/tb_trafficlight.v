`timescale 1ns / 1ps
`timescale 1ns/1ps

module tb_traffic_light;

reg clk;
reg rst;
wire r, y, g;

// Instantiate your design
traffic_light uut (
    .clk(clk),
    .rst(rst),
    .r(r),
    .y(y),
    .g(g)
);
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #200;

    $stop;
end

endmodule
