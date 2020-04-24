//////////////////////////////////////////////////////////////////////////////////
// Design: Test bench for MUX
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module test_mux();

// inputs to the DUT
    reg A;
    reg B;
    reg Sel;
// outputs from the DUT
    wire Out;

mux DUT ( .A(A), .B(B), .Sel(Sel), .Z(Out));

initial
    begin
        $display($time, " << Simulation Results >>");
        $monitor($time, "A = %b, B = %b, Sel = %b, Z = %b", A, B, Sel, Out);
    end

always
    begin
        Sel = 0;
        A   = 0;
        B   = 0;
        #2;
        A   = 1;
        #2;
        Sel = 1;
        A   = 0;
        B   = 0;
        #2;
        B   = 1;
        #2;
        Sel = 0;
        A   = 1;
        B   = 0;
        #2;
        A   = 0;
        #2;
        Sel = 1;
        A   = 0;
        B   = 1;
        #2;
        B   = 0;
        #2;
        $finish;

    end



endmodule
