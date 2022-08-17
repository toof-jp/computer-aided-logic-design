`timescale 1ns / 1ps

module op_decode( op, op_sel, reg_sel4, reg_sel3 );
  input [3:0] op;
  output [2:0] op_sel;
  output [1:0] reg_sel4, reg_sel3;
  reg [2:0] op_sel;
  reg [1:0] reg_sel4, reg_sel3;

  always @( op )
  begin
    case( op )
      4'b1000: reg_sel4 = 2'b01;
      4'b1001: reg_sel4 = 2'b10;
      4'b1010: reg_sel4 = 2'b11;
      4'b1011: reg_sel3 = 2'b00;
      4'b1100: reg_sel3 = 2'b01;
      4'b1101: reg_sel3 = 2'b10;
      default: begin
        op_sel = op;
        reg_sel4 = 2'b00;
      end
    endcase
  end
endmodule
