module top_module (
    input clk,
    input x,
    output z
); 
    wire f1,f2,f3;
    always @(posedge clk) begin
        f1 <= x ^ f1;
        f2 <= x & ~f2;
        f3 <= x | ~f3;
    end
    
    assign z = ~(f1 | f2 | f3);
        

endmodule
