module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    MUXDFF instance3 (.clk(KEY[0]),.W(KEY[3]),.R(SW[3]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[3]));
    
    MUXDFF instance2 (.clk(KEY[0]),.W(LEDR[3]),.R(SW[2]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[2]));
    MUXDFF instance1 (.clk(KEY[0]),.W(LEDR[2]),.R(SW[1]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[1]));
    MUXDFF instance0 (.clk(KEY[0]),.W(LEDR[1]),.R(SW[0]),.E(KEY[1]),.L(KEY[2]),.Q(LEDR[0]));
endmodule

module MUXDFF (input clk,
               input  W,R,E,L,
               output Q);
    always @(posedge clk) begin
        if(L) begin
            Q <= R;
        end
        else if (E) begin
            Q <= W;
        end
        else begin
            Q <= Q;
        end
    end
endmodule
