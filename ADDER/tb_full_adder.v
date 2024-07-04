//tb_full_adder.v
//Test Bench for Full Adder

module tb_full_adder;

//Create Bench variables
reg A;
reg B;
reg Cin;
wire Sum;
wire Cout;

full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

//Initial block for test vectors
initial begin  
  //dump waveform data
  $dumpfile("full_adder_tb.vcd");
  $dumpvars(0, tb_full_adder);
  // Display headers for output
    $display("A B Cin | Sum Cout");
    $display("-----------------");

    // Apply test vectors
    A = 0; B = 0; Cin = 0; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 0; B = 0; Cin = 1; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 0; B = 1; Cin = 0; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 0; B = 1; Cin = 1; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 1; B = 0; Cin = 0; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 1; B = 0; Cin = 1; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 1; B = 1; Cin = 0; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    A = 1; B = 1; Cin = 1; #10;
    $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);

    // End simulation
    $stop;
end

endmodule
