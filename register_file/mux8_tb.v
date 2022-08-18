`timescale 1ns / 1ps

module mux8_tb();
  reg [2:0] read;
  reg [7:0] regAout;
  reg [7:0] regBout;
  reg [7:0] regCout;
  reg [7:0] regDout;
  reg [7:0] regEout;
  reg [7:0] regFout;
  reg [7:0] regGout;
  reg [7:0] regHout;
  wire [7:0] dout;

  mux8 uut(
    read,
    regAout,
    regBout,
    regCout,
    regDout,
    regEout,
    regFout,
    regGout,
    regHout,
    dout
  );

  initial begin
    regAout = 8'd1;
    regBout = 8'd2;
    regCout = 8'd3;
    regDout = 8'd4;
    regEout = 8'd5;
    regFout = 8'd6;
    regGout = 8'd7;
    regHout = 8'd8;

    #100 read = 3'd0;
    #100 read = 3'd1;
    #100 read = 3'd2;
    #100 read = 3'd3;
    #100 read = 3'd4;
    #100 read = 3'd5;
    #100 read = 3'd6;
    #100 read = 3'd7;
    #100 $finish;
  end
endmodule
