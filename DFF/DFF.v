`timescale 1ns / 1ps

module DFF( clk, reset, D, Q );
  input clk, reset, D;
  output Q;
  reg Q;

  always @( posedge clk or negedge reset )
  begin
    if ( reset == 1'b0 )
      Q <= 1'b0;
    else
      Q <= D;
  end
endmodule
