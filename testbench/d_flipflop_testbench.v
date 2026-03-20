`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2025 10:44:50
// Design Name: 
// Module Name: df_testbench
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


module tb;
    reg clk,rst_n;
    reg d;
    wire q;
    
    d_flipflop dff(clk,rst_n,d,q);
    
    always #2 clk=~clk;
    initial begin
       $strobe ("time=%t..... reset=%b,clk=%b,q=%b",$time,rst_n,clk,q);
        clk=0;rst_n=0;
        d=0;
        
       
        #3 rst_n=1;
        
        repeat(6) begin
        d=$urandom_range(0,1);
        #3;
     end
      rst_n = 0; #3;
    rst_n = 1;
    repeat(6) begin
      d = $urandom_range(0, 1);
      #3;
    end
    $finish;
  end
    
endmodule
