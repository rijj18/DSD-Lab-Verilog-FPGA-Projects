module ringcount(
    input clk,
    input rst,
    output reg [1:0] doutr
    );
    always@(posedge clk or posedge rst)
    begin
    if(rst==1'b1)
    begin 
    doutr<=2'b01;
    end
    else
    begin
    doutr<={doutr[0],doutr[1]};
    end
    end
endmodule
