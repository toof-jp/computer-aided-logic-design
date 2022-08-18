`timescale 1ns / 1ps

module DFF_tb();
  reg clk, reset, D;
  wire Q;

  DFF uut( clk, reset, D, Q );

  always begin
    clk = 1'b0; #50;
    clk = 1'b1; #50;
  end

  initial begin
    D = 0; reset = 0;
    #10 D = 0; reset = 1;
    #100 D = 1; reset = 1;
    #100 D = 0; reset = 1;
    #100 D = 1; reset = 1;
    #100 D = 1; reset = 0;
  end
endmodule
