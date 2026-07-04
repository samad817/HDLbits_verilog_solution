module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] cout_wires;
    genvar i;
    
    generate
        for (i = 0; i < 100; i = i + 1) begin: bcd_ripple
            bcd_fadd instance_name (
                .a(a[(i*4)+3 : i*4]),
                .b(b[(i*4)+3 : i*4]),
                .cin(i == 0 ? cin : cout_wires[i-1]),
                .cout(cout_wires[i]),
                .sum(sum[(i*4)+3 : i*4])
            );
        end
    endgenerate

    assign cout = cout_wires[99];

endmodule
