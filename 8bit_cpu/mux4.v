`timescale 1ns / 1ps

module mux4( alu_out, Bin, Cin, Din, reg_sel4, Aout );
  input [7:0] alu_out, Bin, Cin, Din;
  input [1:0] reg_sel4;
  output [7:0] Aout;
  reg [7:0] Aout;

  always @( alu_out or Bin or Cin or Din or reg_sel4 )
  begin
    case( reg_sel4 )
      2'b00: Aout = alu_out;
      2'b01: Aout = Bin;
      2'b10: Aout = Cin;
      2'b11: Aout = Din;
      default: Aout = 8'hxx;
    endcase
  end
endmodule
