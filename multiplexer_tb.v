`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/17 03:38:35
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb();
reg [7:0] i;
reg [3:0] s;
wire z;

multiplexer u1(i, s, z);
initial begin
    i = 0; s = 0;
    #25 s = 3'b000;
    #25 s = 3'b001;
    #25 s = 3'b010;
    #25 s = 3'b011;
    #25 s = 3'b100;
    #25 s = 3'b101;
    #25 s = 3'b110;
    #25 s = 3'b111;
end

always #1 i[7] = ~i[7];
always #2 i[6] = ~i[6];
always #4 i[5] = ~i[5];
always #8 i[4] = ~i[4];
always #16 i[3] = ~i[3];
always #32 i[2] = ~i[2];
always #64 i[1] = ~i[1];
always #128 i[0] = ~i[0];

endmodule
