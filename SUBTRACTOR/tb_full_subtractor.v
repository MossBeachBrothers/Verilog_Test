// tb_full_subtractor.v
// Test Bench for Full Subtractor
module tb_full_subtractor;

// Test bench variables
reg A;
reg B;
reg Bin;
wire Difference;
wire Bout;

// Instantiate the full subtractor module
full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Bout(Bout)
);

// Initial block for applying test vectors
initial begin
    // Initialize waveform dump
    $dumpfile("full_subtractor_tb.vcd"); // VCD file for waveform dump
    $dumpvars(0, tb_full_subtractor);    // Dump all variables in the test bench

    // Display headers for output
    $display("A B Bin | Difference Bout");
    $display("-----------------------");

    // Apply test vectors
    A = 0; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    // End simulation
    $stop;
end

endmodule
