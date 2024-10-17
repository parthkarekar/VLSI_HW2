`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2024 04:17:16 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
input clk, 
input  i,
output reg O

    );
    
parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010; 
parameter S3 = 3'b011;
parameter S4 = 3'b100; 

reg[2:0] PS, NS; // present state and next state variables 

always @(posedge(clk), i) begin  

    NS <= PS; 
    
end 

always @(posedge(clk), i) begin 

    case (PS) 
    
   
    S0: begin 
    
        O <= 1'b1; 
        
        if(i == 1'b1) begin 
            O <= 1'b0; 
            PS <= S1;
        end else begin 
        
            PS <= S0;  
            
       end
       end
    S1: begin 
    
        if( i == 1'b1) begin 
            PS <= S2; 
        end else begin 
            PS <= S1; 
        end 
    
    end
    S2: begin 
    
        if( i == 1'b1) begin 
            O <= 1'b1;
            PS <= S3; 
        end else begin 
            PS <= S2;
        end
    end
    S3: begin 
    
        if (i == 1'b1) begin 
            O <= 1'b0; 
            PS <= S4;
        end else begin 
            PS <= S3;
        end 
        end
    S4: begin
    
        if( i ==1'b1) begin 
            PS <= S1;
        end else begin
            PS <= S4; 
        end
        end 
    endcase
    
end 
      
endmodule



