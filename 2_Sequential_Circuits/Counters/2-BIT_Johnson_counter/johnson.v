module johnson(
    input clk,rst,
    output reg [1:0] doutj
    );
    always@(posedge clk or posedge rst)
    begin 
    if(rst)
    doutj<=2'b00;
    else
    begin
    doutj={~doutj[0],doutj[1]};
    
    end
    end 
    
   
endmodule
