`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 19:58:06
// Design Name: 
// Module Name: priority
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


module priority(a, y, valid);
    input [3:0] a;
    output reg [1:0] y;
    output reg valid;
    always@(*)begin
        valid =1;
        case(a)
            4'b1xxx : y=2'b11;
            4'b01xx : y=2'b10;
            4'b001x : y=2'b01;
            4'b0001 : y=2'b00;
            default : begin
                y=2'bx;
                valid=0;
            end
        endcase
    end
endmodule
