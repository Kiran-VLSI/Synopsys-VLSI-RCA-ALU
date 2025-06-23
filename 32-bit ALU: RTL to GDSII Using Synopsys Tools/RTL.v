`timescale 1ns / 1ps

module ALU (
    input  [31:0] A, B,
    input        clk, rst_n,
    input  [1:0] Opcode,
    output [31:0] Result,
    output reg   Z, N, C, V
);

wire [31:0] Sum;
wire        cout;
wire [31:0] not_B = ~B;
wire [31:0] mux1_out, mux2_out;

assign mux1_out = (Opcode[0] == 1'b0) ? B : not_B;
assign {cout, Sum} = A + mux1_out + Opcode[0];
assign mux2_out = (Opcode == 2'b00) ? Sum :
                  (Opcode == 2'b01) ? Sum :
                  (Opcode == 2'b10) ? (A & B) : (A | B);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        Result <= 32'b0;
        Z <= 0;
        N <= 0;
        C <= 0;
        V <= 0;
    end else begin
        Result <= mux2_out;
        Z <= (&(Result));
        N <= Result[31];
        C <= (Opcode == 2'b00 || Opcode == 2'b01) ? cout : 0;
        V <= (Opcode == 2'b00 || Opcode == 2'b01) &
             ((Opcode[0] ^ A[31] ^ B[31]) & (Sum[31] ^ A[31]));
    end
end

endmodule
