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
    reg s1,s2,s3,sp,sp2;
    wire sout;
    
    
    // instantiere circuit
    // ce semnale folosim la testare
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
    
    //alte tipuri de semnale
    // semnale periodice
    initial begin
    
        sp=0;
        forever #10 sp=~sp; // sp = ( sp==0 ) ? 1 : 0;
    
    end
    
    // alt semnal periodic
    initial begin
    
        sp2=0;
        forever begin #15 sp2= ~sp2;
                      #5 sp2= ~sp2;
                end
    
    end
    
    // alte tipuri de semnale
    // secventa numerica 4,15,19,2
    reg[4:0] s_num;
    initial begin
    
        s_num=4;
        #10 s_num=15;
        #10 s_num=19;
        #10 s_num=2;
    
    end
    
    // semnal cu for s_for
    reg[3:0] s_for;
    integer i;
    initial begin
    
        for(i=0; i<16; i=i+1)
            begin s_for=i;
                  #10;
                  end
    
    end
    
    
    
endmodule
