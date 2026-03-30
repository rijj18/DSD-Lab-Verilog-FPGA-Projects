timescale 1ns / 1ps
//64x8
module ram(
    input clk,
    input we,
    input [5:0]addr,
    input[7:0]din,
    output reg[7:0]dout
    );
    reg [7:0]mem[63:0];
     always@(posedge clk)
    begin
    
    if(we) 
    mem[addr]<=din;
    else
    dout<=mem[addr];
    
  end

endmodule

    
