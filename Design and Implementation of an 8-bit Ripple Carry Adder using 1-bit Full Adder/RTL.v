`default_nettype none

module adder_1b (
    input wire clk,
    input wire cin,
    input wire rst,
    input wire a, b,
    output reg sum, carry
);

always @ (posedge clk or posedge rst) begin
    if (rst) begin
        {carry, sum} <= 0;
    end
    else begin
        {carry, sum} <= a + b + cin;
    end
end

endmodule
`default_nettype none
`include "adder_1b.v"

module adder_pr (
    input wire clk, cin,
    input wire rst,
    input wire [7:0] a, b,
    output reg [7:0] sum,
    output reg carry
);

wire [7:0] sumw;
wire cw0, cw1, cw2, cw3, cw4, cw5, cw6, cw7;

adder_1b inst0 ( clk, cin, rst, a[0], b[0], sumw[0], cw0 );
adder_1b inst1 ( clk, cw0, rst, a[1], b[1], sumw[1], cw1 );
adder_1b inst2 ( clk, cw1, rst, a[2], b[2], sumw[2], cw2 );
adder_1b inst3 ( clk, cw2, rst, a[3], b[3], sumw[3], cw3 );
adder_1b inst4 ( clk, cw3, rst, a[4], b[4], sumw[4], cw4 );
adder_1b inst5 ( clk, cw4, rst, a[5], b[5], sumw[5], cw5 );
adder_1b inst6 ( clk, cw5, rst, a[6], b[6], sumw[6], cw6 );
adder_1b inst7 ( clk, cw6, rst, a[7], b[7], sumw[7], cw7 );

always @ (posedge clk or posedge rst) begin
    if (rst) begin
        sum   <= 0;
        carry <= 0;
    end
    else begin
        sum   <= sumw;
        carry <= cw7;
    end
end

endmodule
