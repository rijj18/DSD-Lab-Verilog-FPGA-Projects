`timescale 1ns / 1ps

//nonoverlapping detect 111
module fsm(
    input rst,clk,din,
    output reg dout
    );
  
    parameter idle=0;
    parameter s0=1;
    parameter s1=2;
    parameter s2=3;
      reg [1:0]state=idle;
    //1 process
    always@(posedge clk)begin
    if(rst)begin
    dout<=1'b0;
    state<=idle;
    state<=idle; end
    else begin
    case(state)
    idle:begin
    dout<=1'b0;
    state<=s0;end
    s0:begin
    if(din)begin
    dout<=1'b0;
    state<=s1;
    end
    else begin
    dout<=1'b0;
    state<=s0;end 
    end
    s1:begin 
    if(din)begin
    dout<=1'b0;
    state<=s2;end
    else begin
    dout<=1'b0;
    state<=s0;
    end 
    end
    s2:begin
    if(din)begin
    dout<=1'b1;
    state<=s0;end
    else begin
    dout<=1'b0;
    state<=s0;
    end
    end
    default:begin
    dout<=1'b0;
    state<=s0;
    end
    endcase
    end
    end 
    endmodule
