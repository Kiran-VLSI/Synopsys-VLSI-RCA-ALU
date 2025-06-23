`default_nettype none
`timescale 1ns / 1ps
`include "ALU.v"

module ALU_tb;
    reg clk, rst_n;
    reg [31:0] A, B;
    reg [1:0] Opcode;
    wire [31:0] Result;
    wire Z, N, C, V;

    ALU uut (
        .clk(clk),
        .rst_n(rst_n),
        .A(A),
        .B(B),
        .Opcode(Opcode),
        .Result(Result),
        .Z(Z),
        .N(N),
        .C(C),
        .V(V)
    );

    always #5 clk = ~clk;

    initial begin
        $fsdbDumpvars();
        clk = 0;
        rst_n = 0;
        #10;

        A = 0;
        B = 0;
        Opcode = 2'b00;
        rst_n = 1;
        #10;

        A = 32'h5;
        B = 32'h3;
        Opcode = 2'b00;  // ADD
        #10;
        $display("Addition: A=%h, B=%h, Opcode=%b, Result=%h, Z=%b, N=%b, C=%b, V=%b", A, B, Opcode, Result, Z, N, C, V);

        A = 32'h8;
        B = 32'h4;
        Opcode = 2'b01;  // SUB
        #10;
        $display("Subtraction: A=%h, B=%h, Opcode=%b, Result=%h, Z=%b, N=%b, C=%b, V=%b", A, B, Opcode, Result, Z, N, C, V);

        A = 32'h6;
        B = 32'h2;
        Opcode = 2'b10;  // AND
        #10;
        $display("AND: A=%h, B=%h, Opcode=%b, Result=%h", A, B, Opcode, Result);

        A = 32'h6;
        B = 32'h2;
        Opcode = 2'b11;  // OR
        #10;
        $display("OR: A=%h, B=%h, Opcode=%b, Result=%h", A, B, Opcode, Result);

        #100 $finish;
    end
endmodule
