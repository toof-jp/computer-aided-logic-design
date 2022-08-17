`timescale 1ns / 1ps

module alu_op44_tb();
  reg [7:0] Ain, Bin;
  reg Carryin;
  reg [2:0] op_sel;
  wire Carryout;
  wire [7:0] alu_out;

  alu_op44 uut(
    Ain,
    Bin,
    Carryin,
    op_sel,
    Carryout,
    alu_out
  );

  initial begin
    Ain = 8'b1100_1100;
    Bin = 8'b0101_0101;
    Carryin = 1;
    op_sel = 0;

    #10 op_sel = 1;
    #10 op_sel = 2;
    #10 op_sel = 3;
    #10 op_sel = 4;
    #10 op_sel = 5;
    #10 op_sel = 6;
    #10 op_sel = 7;
    #10 Ain = 8'd10;
        Bin = 8'd6;
        op_sel = 1;
    #10 op_sel = 2;
    #10 op_sel = 3;
    #10 $finish;
  end
endmodule
