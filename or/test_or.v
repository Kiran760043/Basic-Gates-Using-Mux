//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for OR gate
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_or();// inputs to the DUT
    reg A;
    reg B;
// outputs from the DUT
    wire Out;

or_mux DUT ( .A(A), .B(B), .Z(Out));

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "A = %b, B = %b, Z = %b", A, B, Out);
    end

always
    begin
        A   = 0;
        B   = 0;
        #2;
        A   = 1;
        #2;
        A   = 0;
        B   = 1;
        #2;
        A   = 1;
        #2;

        $finish;

    end

endmodule
