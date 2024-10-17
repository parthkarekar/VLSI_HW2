`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2024 05:17:17 PM
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb(
    );

reg i; 
reg clk; 
wire O; 

FSM uut (.i(i),.O(O),.clk(clk)); 

initial begin
clk = 0;
forever #5 clk = ~clk;
end 

initial begin 

i = 0;
forever #10 i = ~i;

end
endmodule
