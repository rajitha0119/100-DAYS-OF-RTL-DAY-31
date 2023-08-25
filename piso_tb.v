`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 22:41:51
// Design Name: 
// Module Name: piso_tb
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


module piso_tb(

    );
    reg [3:0]data;
    reg clk,pi;
    wire [3:0]q;
    piso uut(clk,pi,data,q);
    initial begin
    clk=1'b0;
    forever #5 clk=~clk;
    end
    initial begin
    pi=0;data=4'b0101;
    #20 pi=1;
    #20 pi=1;
    #10 pi=0;
    #10 pi=0;
    end
endmodule
