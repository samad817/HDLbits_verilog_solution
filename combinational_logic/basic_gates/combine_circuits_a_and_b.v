module top_module (input x, input y, output z);
    wire a1,b1,a2,b2;
    
    mt2015_q4a IA1(.x(x),.y(y),.z(a1));
    mt2015_q4b IB1(.x(x),.y(y),.z(b1));
    mt2015_q4a IA2(.x(x),.y(y),.z(a2));
    mt2015_q4b IB2(.x(x),.y(y),.z(b2));
    
    assign z = (a1 | b1) ^ (a2 & b2);

endmodule
//  Circuit A 
module mt2015_q4a (
    input x,
    input y,
    output z
);
    assign z = x & ~y;
endmodule

//  Circuit B 
module mt2015_q4b (
    input x,
    input y,
    output z
);
    assign z = ~(x ^ y);
endmodule
