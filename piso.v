`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 22:34:17
// Design Name: 
// Module Name: piso
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
module d_ff(input clk,d,output reg q);
always@(posedge clk)
begin
q<=d;
end
endmodule

module piso(
    input clk,
    input pi,
    input [3:0] data,
    output [3:0] q
    );
  wire x1,x2,x3,x4,x5,x6,x7;
  wire d1,d2,d3;
  assign d1=((q[0]&pi)|(~pi&data[1]));
  assign d2=((q[1]&pi)|(~pi&data[2]));
  assign d3=((q[2]&pi)|(~pi&data[3]));
  d_ff DFF1(clk,data[0],q[0]);
  d_ff DFF2(clk,d1,q[1]);
  d_ff DFF3(clk,d2,q[2]);
  d_ff DFF4(clk,d3,q[3]);
  
endmodule
