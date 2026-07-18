module top_module(
    input clk,
    input load,
    input [255:0] data,
    output reg [255:0] q
);
    integer i;
    reg [3:0] x, y;
    reg [3:0] west, east, north, south;
    reg [3:0] count;

    always @(posedge clk) begin
        if (load) begin
            q <= data;
        end
        else begin
          for (i = 0; i < 256; i = i + 1) begin
                x = i[3:0];
                y = i[7:4];
                west  = (x == 4'd0)  ? 4'd15 : x - 1'b1;
                east  = (x == 4'd15) ? 4'd0  : x + 1'b1;
                north = (y == 4'd0)  ? 4'd15 : y - 1'b1;
                south = (y == 4'd15) ? 4'd0  : y + 1'b1;
                count = q[{north, west}] + q[{north, x}] + q[{north, east}] +
                        q[{y,     west}] +                 q[{y,     east}] +
                        q[{south, west}] + q[{south, x}] + q[{south, east}];
                case (count)
                    4'd2:    q[i] <= q[i];   
                    4'd3:    q[i] <= 1'b1;   
                    default: q[i] <= 1'b0;  
                endcase
            end
        end
    end

endmodule
    
   
