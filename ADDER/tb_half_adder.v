module tb_half_adder;

//Define test bench variables
reg A;
reg B;
wire Sum;
wire Carry;

//Instantiate half adder module
half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

//Test vectors
initial begin 
    // Display headers for output
    $display("A B | Sum Carry");
    $display("-------------");

    A=0; B=0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A=0; B=1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);


    A=1;B=0; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    A=1;B=1; #10;
    $display("%b %b |  %b    %b", A, B, Sum, Carry);

    $stop;

end
endmodule 

