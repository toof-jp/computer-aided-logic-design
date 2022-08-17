`timescale 1ns / 1ps

module cpu_comb_tb();
  reg [3:0] op;
  reg [7:0] Ain, Bin, Cin, Din;
  reg Carryin;
  wire [7:0] Aout, Bout, Cout, Dout;
  wire Carryout;

  cpu_comb uut(
    op,
    Ain,
    Bin,
    Cin,
    Din,
    Carryin,
    Aout,
    Bout,
    Cout,
    Dout,
    Carryout
  );

  initial begin
    Ain = 8'b1100_1100;
    Bin = 8'b0101_0101;
    Cin = 8'b0000_1111;
    Din = 8'b1111_0000;
    Carryin = 1;
    op = 0;

    #10 op = 1;
    #10 op = 2;
    #10 op = 3;
    #10 op = 4;
    #10 op = 5;
    #10 op = 6;
    #10 op = 7;
    #10 op = 8;
    #10 op = 9;
    #10 op = 10;
    #10 op = 11;
    #10 op = 12;
    #10 op = 13;
    #10 op = 14; Ain = 1;
    #10 op = 15; Ain = 2;
    #10 Ain = 8'o10;
        Bin = 8'o6;
        op = 1;
    #10 op = 2;
    #10 op = 3;
    #10 $finish;
  end
endmodule
