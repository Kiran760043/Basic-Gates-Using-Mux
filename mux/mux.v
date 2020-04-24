//////////////////////////////////////////////////////////////////////////////////
// Design: 2:1 MUX
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module mux(
    input  wire A,
    input  wire B,
    input  wire Sel,
    output wire  Z
    );

    assign Z = (Sel) ? A : B ;

endmodule
