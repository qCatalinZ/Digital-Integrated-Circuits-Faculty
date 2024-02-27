`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:49:45 AM
// Design Name: 
// Module Name: circuit_simplu
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


module circuit_simplu(
    input a,
    input b,
    input c,
    output out
    );
    
    // descriere structurala
    wire w1,w2,w3;
    and p1(w1,a,w3);
    and p2(w2,c,b);
    or p4(out,w1,w2);
    not p3(w3,c);
        
endmodule
