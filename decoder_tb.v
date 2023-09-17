`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 02:34:28
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg [2:0] x;
    wire [7:0] y;
    decoder uut (
     .x(x),
     .y(y)
    );
    initial begin
        x = 3'b000; #100;
        x = 3'b001; #100;
        x = 3'b010; #100;
        x = 3'b011; #100;
        x = 3'b100; #100;
        x = 3'b101; #100;
        x = 3'b110; #100;
        x = 3'b111; #100;
    end
endmodule

