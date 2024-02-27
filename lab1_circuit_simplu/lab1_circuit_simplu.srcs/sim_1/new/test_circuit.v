`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 12:38:39 PM
// Design Name: 
// Module Name: test_circuit
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


module test_circuit(

    );
    
    // declaram semnalele de test
    reg s1,s2,s3;
    wire sout;
    // instantiere circuit
    
    circuit_simplu dut(
        .a(s1),
        .b(s2),
        .c(s3),
        .out(sout));
        
    
    
    // scriem semnalele
    initial begin
        s1=0;
        #10 s1=1;
        #20 s1=0;
        #40 s1=1;
        #50 $stop;
    end
    
    initial begin
        s2=0;
        #40 s2=1;
        #10 s2=0;
        #30 s2=1;
        #10 s2=0;
        #50 $stop;
    end
    
    initial begin
        s3=0;
        #60 s3=1;
        #50 $stop;
    end
    
    
    
endmodule
