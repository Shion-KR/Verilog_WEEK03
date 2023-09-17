`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 19:59:01
// Design Name: 
// Module Name: priority_tb
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


module priority_tb;

    reg [3:0] a;
    wire valid;
    wire [1:0] y;

    priority u0(a,y,valid);

    initial begin 
        a = 4'b0001;
        #20 a = 4'b0010;
        #20 a = 4'b0100;
        #20 a = 4'b1000;
        #20;
    end

endmodule

