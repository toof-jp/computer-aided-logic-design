`timescale 1ns / 1ps

module register_tb();
  reg [7:0] din;
  reg load, clk, reset;
  wire [7:0] dout;

  register uut( din, load, clk, reset, dout );

  always begin
    clk = 1'b0; #50;
    clk = 1'b1; #50;
  end

  initial begin
    din = 10; reset = 0;
    #10 load = 0; reset = 1;
    #100 load = 1; reset = 1;
    #100 load = 0; reset = 1; din = 3;
    #100 load = 1; reset = 1;
    #100 load = 1; reset = 0;
    #100 $finish;
  end
endmodule
