`timescale 1ns / 1ps

module square( din, dout );
  input [3:0] din;
  output [7:0] dout;
  reg [7:0] dout;

  // assign: LUT 3
  // case: LUT 4

  //assign dout = din * din;
  always @( din )
  begin
    case( din )
      4'd0: dout = 8'd0;
      4'd1: dout = 8'd1;
      4'd2: dout = 8'd4;
      4'd3: dout = 8'd9;
      4'd4: dout = 8'd16;
      4'd5: dout = 8'd25;
      4'd6: dout = 8'd36;
      4'd7: dout = 8'd49;
      4'd8: dout = 8'd64;
      4'd9: dout = 8'd81;
      4'd10: dout = 8'd100;
      4'd11: dout = 8'd121;
      4'd12: dout = 8'd144;
      4'd13: dout = 8'd169;
      4'd14: dout = 8'd196;
      4'd15: dout = 8'd225;
      default: dout = 2'bxx;
    endcase
  end
endmodule
