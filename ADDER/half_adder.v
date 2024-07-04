//Module for Half Adder
module half_adder (
    input wire A,   //Input bit A
    input wire B,   //Input bit B
    output wire Sum,    //output sum
    output wire Carry //output carry
);

//Sum is A XOR B
assign Sum = A ^ B;
assign Carry = A & B; 

endmodule 
