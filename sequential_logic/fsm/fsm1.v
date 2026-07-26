module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        case(state)
            A : next_state = (in == 1'b0) ? B : A;
            B : next_state = (in == 1'b0) ? A : B; 
                default : next_state = B;
        endcase// State transition logic
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        if (areset) begin
            state <= B;       // Asynchronous reset forces state to B
        end 
        else begin
            state <= next_state;
        end// State flip-flops with asynchronous reset
    end

    // Output logic
     assign out = (state == B);// assign out = (state == ...);

endmodule
