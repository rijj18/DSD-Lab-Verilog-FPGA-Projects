timescale 1ns / 1ps
module traffic_light(
    input clk,
    input rst,
    output reg r, y, g
);

parameter RED    = 2'b00;
parameter YELLOW  = 2'b01;
parameter GREEN = 2'b10;

reg [1:0] state, next_state;
reg [3:0] count;  
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= RED;
        count <= 0;
    end else begin
        state <= next_state;
         // counter logic
        if (count == 9)
            count <= 0;
        else
            count <= count + 1;
    end
end

always @(*) begin
    // default values (VERY IMPORTANT)
    next_state = state;
    r = 0; g = 0; y = 0;

    case(state)
        RED:
        begin
            r = 1;
            if (count == 9)
                next_state = YELLOW;
        end
        YELLOW:
        begin
            y = 1;
            if (count == 9)
                next_state = GREEN;
        end
        GREEN:
        begin
            g = 1;
            if (count == 9)
                next_state = RED;
        end
        default:
            next_state = RED;

    endcase
end

endmodule

