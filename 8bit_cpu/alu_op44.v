`timescale 1ns / 1ps

module alu_op44( Ain, Bin, Carryin, op_sel, Carryout, alu_out );
  input [7:0] Ain, Bin;
  input Carryin;
  input [2:0] op_sel;
  output Carryout;
  output [7:0] alu_out;
  reg Carryout;
  reg [7:0] alu_out;

  always @( Ain or Bin or Carryin or op_sel )
  begin
    case( op_sel )
      3'b000: {Carryout, alu_out} = Ain + Bin;
      3'b001: {Carryout, alu_out} = Ain + Bin + Carryin;
      3'b010: {Carryout, alu_out} = Ain - Bin;
      3'b011: begin
        alu_out = Ain * Bin;
        Carryout = |(({8'h00, Ain} * {8'h00, Bin}) >> 8);
      end
      3'b100: begin
        Carryout = 1'b0;
        alu_out = Ain & Bin;
      end
      3'b101: begin
        Carryout = 1'b0;
        alu_out = Ain | Bin;
      end
      3'b110: begin
        Carryout = 1'b0;
        alu_out = ~Ain;
      end
      3'b111: begin
        Carryout = 1'b0;
        alu_out = Ain ^ Bin;
      end
      default: { Carryout, alu_out } = 9'bx_xxxx_xxxx;
    endcase
  end
endmodule
