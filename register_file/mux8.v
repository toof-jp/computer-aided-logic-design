`timescale 1ns / 1ps

module mux8(
  read,
  regAout,
  regBout,
  regCout,
  regDout,
  regEout,
  regFout,
  regGout,
  regHout,
  dout
);
  input [2:0] read;
  input [7:0] regAout;
  input [7:0] regBout;
  input [7:0] regCout;
  input [7:0] regDout;
  input [7:0] regEout;
  input [7:0] regFout;
  input [7:0] regGout;
  input [7:0] regHout;
  output [7:0] dout;
  reg [7:0] dout;

  always @(
    read,
    regAout,
    regBout,
    regCout,
    regDout,
    regEout,
    regFout,
    regGout,
    regHout
  ) begin
    case ( read )
      3'd0: dout = regAout;
      3'd1: dout = regBout;
      3'd2: dout = regCout;
      3'd3: dout = regDout;
      3'd4: dout = regEout;
      3'd5: dout = regFout;
      3'd6: dout = regGout;
      3'd7: dout = regHout;
      default: dout = 8'hxx;
    endcase
  end
endmodule
