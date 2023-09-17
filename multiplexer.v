`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 03:38:17
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(i,s,z);
    input [7:0] i;
    input [2:0] s;
    output z;
    reg z;
    
    always @(s)
        case(s)
            3'b000 : z <= i[7];
            3'b001 : z <= i[6];
            3'b010 : z <= i[5];
            3'b011 : z <= i[4];
            3'b100 : z <= i[3];
            3'b101 : z <= i[2];
            3'b110 : z <= i[1];
            3'b111 : z <= i[0];
            default : z <= 0;
        endcase
endmodule
