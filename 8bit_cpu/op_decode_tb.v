`timescale 1ns / 1ps

module op_decode_tb();
  reg [3:0] op;
  wire [2:0] op_sel;
  wire [1:0] reg_sel4, reg_sel3;

  op_decode uut(
    op,
    op_sel,
    reg_sel4,
    reg_sel3
  );

  initial begin
    #10 op = 0;
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
    #10 op = 14;
    #10 op = 15;
    #10 $finish;
  end
endmodule
