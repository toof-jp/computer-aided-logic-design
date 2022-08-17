`timescale 1ns / 1ps

module square_tb();
  reg [3:0] din;
  wire [7:0] dout;

  square uut(
    din,
    dout
  );

  initial begin
    #10 din = 4'd0;
    #10 din = 4'd1;
    #10 din = 4'd2;
    #10 din = 4'd3;
    #10 din = 4'd4;
    #10 din = 4'd5;
    #10 din = 4'd6;
    #10 din = 4'd7;
    #10 din = 4'd8;
    #10 din = 4'd9;
    #10 din = 4'd10;
    #10 din = 4'd11;
    #10 din = 4'd12;
    #10 din = 4'd13;
    #10 din = 4'd14;
    #10 din = 4'd15;
    #10 $finish;
  end
endmodule
