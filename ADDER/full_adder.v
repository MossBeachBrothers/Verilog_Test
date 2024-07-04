//full_adder.v
//Full Adder Module

//Two half adders and OR gate

//Inputs A,B,Cin Outputs Sum,Cout
module full_adder (
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout
);

//Intermediate signals (between half adders)
wire Sum1, Carry1, Carry2;

//First HA Input A,B Output Sum1,Carry1
half_adder ha1 (
    .A(A),
    .B(B),
    .Sum(Sum1),
    .Carry(Carry1)
);

//Second HA Input Sum1, Cin Output Sum, Carry2
half_adder ha2 (
        .A(Sum1),
        .B(Cin),
        .Sum(Sum),
        .Carry(Carry2)
);

//OR gate for potential carry from Carry1,Carry2
assign Cout = Carry1 | Carry2;


endmodule 


