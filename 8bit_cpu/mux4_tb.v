`timescale 1ns / 1ps

module mux4_tb();
  reg [7:0] alu_out, Bin, Cin, Din;
  reg [1:0] reg_sel4;
  wire [7:0] Aout;

  mux4 uut(
    alu_out,
    Bin,
    Cin,
    Din,
    reg_sel4,
    Aout
  );

  initial begin
    alu_out = 8'd1;
    Bin = 8'd2;
    Cin = 8'd3;
    Din = 8'd4;
    reg_sel4 = 2'd0;
    #10 reg_sel4 = 2'd1;
    #10 reg_sel4 = 2'd2;
    #10 reg_sel4 = 2'd3;
    #10 $finish;
  end
endmodule
