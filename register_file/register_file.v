`timescale 1ns / 1ps

module register_file( din, read, write, clk, reset, dout );
  input [7:0] din;
  input [2:0] read, write;
  input clk, reset;
  output [7:0] dout;

  wire [7:0] load;
  decode3to8 dec( write, load );

  wire [7:0] regAout, regBout, regCout, regDout, regEout, regFout, regGout, regHout;
  register regA( din, load[0], clk, reset, regAout ); 
  register regB( din, load[1], clk, reset, regBout );
  register regC( din, load[2], clk, reset, regCout );
  register regD( din, load[3], clk, reset, regDout );
  register regE( din, load[4], clk, reset, regEout );
  register regF( din, load[5], clk, reset, regFout );
  register regG( din, load[6], clk, reset, regGout );
  register regH( din, load[7], clk, reset, regHout );

  mux8 mux( read, regAout, regBout, regCout, regDout, regEout, regFout, regGout, regHout, dout );
endmodule
