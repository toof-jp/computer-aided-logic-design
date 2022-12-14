`timescale 1ns / 1ps

module register( din, load, clock, reset, dout );
  input [7:0] din;
  input load, clock, reset;
  output [7:0] dout;
  reg [7:0] dout;

  always @( posedge clock or negedge reset )
  begin
    if ( reset == 1'b0 )
      dout <= 1'b0;
    else if ( load == 1'b0 )
      // hold
      dout <= dout;
    else if ( load == 1'b1 )
      // load
      dout <= din;
    else
      dout <= 8'hxx;
  end
endmodule
