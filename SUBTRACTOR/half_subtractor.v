//Half Subtractor Module

module half_subtractor (
    input wire A,
    input wire B,
    output wire Difference,
    output wire Borrow
);
//Difference is A XOR B 
assign Difference = A ^ B;

//Borrow is NOT A & B
assign Borrow = -A & B;

endmodule
