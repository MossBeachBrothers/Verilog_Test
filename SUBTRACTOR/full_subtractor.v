//full_subtractor.v

module full_subtractor (
    input wire A,
    input wire B,
    input Bin, //Borrow in
    output wire Difference,
    output wire Bout //Borrow out
);

//Interediate signals (between subtractors)
wire Difference1, Borrow1, Borrow2;

half_subtractor hs1 (
    .A(A),
    .B(B),
    .Difference(Difference1),
    .Borrow(Borrow1)
);

//Second HS Input Difference1, Borrow1 output Difference, Borrow2
half_subtractor hs2 (
    .A(Difference1),
    .B(Bin),
    .Difference(Difference),
    .Borrow(Borrow2)
);

assign Bout = Borrow1 | Borrow2;

endmodule

