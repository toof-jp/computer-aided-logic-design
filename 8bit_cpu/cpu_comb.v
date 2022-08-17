`timescale 1ns / 1ps

module cpu_comb( op, Ain, Bin, Cin, Din, Carryin, Aout, Bout, Cout, Dout, Carryout );
  input [3:0] op;
  input [7:0] Ain, Bin, Cin, Din;
  input Carryin;
  output [7:0] Aout, Bout, Cout, Dout;
  output Carryout;
  
  assign Cout = Ain;
  assign Dout = Ain;
  
  wire [2:0] op_sel;
  wire [1:0] reg_sel4, reg_sel3;
  wire [7:0] alu_out;

  op_decode decoder ( op, op_sel, reg_sel4, reg_sel3 );
  mux4 m4 ( alu_out, Bin, Cin, Din, reg_sel4, Aout );
  mux3 m3 ( Ain, Cin, Din, reg_sel3, Bout );
  alu_op44 alu ( Ain, Bin, Carryin, op_sel, Carryout, alu_out );
endmodule
