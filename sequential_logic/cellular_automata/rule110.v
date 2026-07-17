module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q
); 
    always @(posedge clk) begin
        if(load) begin
            q <= data;
        end
        else begin
          //right =  {q[510:0], 1'b0}}   left = { 1'b0 ,q[511:1]}
            q <= (q ^ {q[510:0], 1'b0} )  | (~{ 1'b0 ,q[511:1]} & q); 
        end
    end

endmodule
