`timescale 1ns / 1ps

module encoder_tb();
  reg [3:0] din;
  wire [1:0] dout;

  encoder uut(
    din,
    dout
  );

  initial begin
    din = 4'b0000;

    #100
    #100 din = 4'b0001;
    #100 din = 4'b0010;
    #100 din = 4'b0100;
    #100 din = 4'b1000;
    #100 din = 4'b1010;
    #100 din = 4'b0011;
    #100 $finish;
  end
endmodule
