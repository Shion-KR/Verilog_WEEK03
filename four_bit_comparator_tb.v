`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/16 22:10:04
// Design Name: 
// Module Name: four_bit_comparator_tb
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


module four_bit_comparator_tb;
reg [3:0] A, B;
wire X, Y, Z;

    four_bit_comparator u1(A, B, X, Y, Z);
    initial begin
        A = 4'b0011; B = 4'b1000;
    #10 A = 4'b0111; B = 4'b0001;
    #10 A = 4'b1001; B = 4'b1001;
    #10 A = 4'b1011; B = 4'b1111;
end
        
endmodule

