`default_nettype none
`timescale 1ns / 1ps
`include "adder_pr.v"

module tb;

reg [7:0] a, b;
reg clk, rst, cin;
wire [7:0] sum;
wire carry;

integer i, file, console;
reg [8:0] exp, tcase, tt;

adder_pr inst0 ( clk, cin, rst, a, b, sum, carry);

initial clk = 1'b0;
always #5 clk = ~clk;

task adx;
    input [8:0] exp_val;
    if ({carry, sum} != exp_val) begin
        $fdisplay(console, "[X] t = %d a = %d ( %b ) b = %d ( %b ) cin = %d sum = %d ( %b ) carry = %d, # expected (carry, sum) = %d ( %b )",
            $realtime, a, a, b, b, cin, sum, sum, carry, exp, exp_val);
    end
    else begin
        $fdisplay(console, "[✓] t = %d a = %d ( %b ) b = %d ( %b ) cin = %d sum = %d ( %b ) carry = %d",
            $realtime, a, a, b, b, cin, sum, sum, carry);
        tcase = tcase + 1;
    end
endtask

initial begin
    $fsdbDumpvars();
    $timeformat(-9, 2, "ns", 10);
    file = $fopen("adder_pr_sim.log");
    console = file | 32'b1;

    rst = 0; a = 0; b = 0; cin = 0; tcase = 0; tt = 16; #10;
    rst = 1; #20;
    @(posedge clk);
    rst = 0;
    @(posedge clk);

    $fdisplay(console, "#####################################################################");
    $fdisplay(console, "\t 8-bit adder using 1-bit Full Adder");

    for (i = 0; i < tt; i = i + 1) begin
        a = $random; b = $random; cin = $random;
        repeat (2) begin
            @(posedge clk);
        end
        exp = a + b + cin;
        adx(exp);
    end

    $fdisplay(console, "\t Test cases : %d. PASSED : %d", tt, tcase);
    $fdisplay(console, "#####################################################################");
    $finish;
end

endmodule
