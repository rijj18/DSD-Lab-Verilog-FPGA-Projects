timescale 1ns / 1ps


module sipo(
    input clk,rst,sin,
    output [3:0] q
    );
    reg [3:0] shift_reg;
    always@(posedge clk or posedge rst)
    begin
    if(rst)
    shift_reg<=4'b0000;
    else 
    shift_reg<={shift_reg[2:0],sin};
    end
    assign q=shift_reg;
endmodule
