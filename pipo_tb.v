`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2023 22:22:10
// Design Name: 
// Module Name: pipo_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pipo_tb(

    );
    reg clk;
    reg [3:0]d;
    wire [3:0]q;
    pipo uut(.clk(clk),.d(d),.q(q));
    initial begin
    clk=1'b0;
    forever #10 clk=~clk;
    end
    initial begin
    d=4'b1011;#15;
    d=4'b0101;#15;
    d=4'b1010;#15;
    d=4'b1101;#15;
    d=4'b1111;#15;
    d=4'b0011;#15;
    d=4'b1100;#15;
    end
endmodule
