`timescale 1ns / 1ps

module mux3( Ain, Cin, Din, reg_sel3, Bout );
  input [7:0] Ain, Cin, Din;
  input [1:0] reg_sel3;
  output [7:0] Bout;
  reg [7:0] Bout;

  always @( Ain or Cin or Din or reg_sel3 )
  begin
    case( reg_sel3 )
      2'b00: Bout = Ain;
      2'b01: Bout = Cin;
      2'b10: Bout = Din;
      default: Bout = 8'hxx;
    endcase
  end
endmodule
