`timescale 1ns / 1ps

module encoder( din, dout );
  input [3:0] din;
  output [1:0] dout;
  reg [1:0] dout;

  always @( din )
  begin
    case( din )
      4'b0001: dout = 2'o0;
      4'b0010: dout = 2'o1;
      4'b0100: dout = 2'o2;
      4'b1000: dout = 2'o3;
      default: dout = 2'bxx;
    endcase
  end
endmodule
