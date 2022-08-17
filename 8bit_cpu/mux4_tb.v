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
    alu_out = 8'o1;
    Bin = 8'o2;
    Cin = 8'o3;
    Din = 8'o4;
    reg_sel4 = 2'o0;
    #10 reg_sel4 = 2'o1;
    #10 reg_sel4 = 2'o2;
    #10 reg_sel4 = 2'o3;
    #10 $finish;
  end
endmodule
