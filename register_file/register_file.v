`timescale 1ns / 1ps

module register_file( din, read, write, clock, reset, dout );
  input [7:0] din;
  input [2:0] read, write;
  input clock, reset;
  output [7:0] dout;

  wire [7:0] load;
  decode3to8 dec( write, load );

  wire [7:0] regAout, regBout, regCout, regDout, regEout, regFout, regGout, regHout;
  register regA( din, load[0], clock, reset, regAout );
  register regB( din, load[1], clock, reset, regBout );
  register regC( din, load[2], clock, reset, regCout );
  register regD( din, load[3], clock, reset, regDout );
  register regE( din, load[4], clock, reset, regEout );
  register regF( din, load[5], clock, reset, regFout );
  register regG( din, load[6], clock, reset, regGout );
  register regH( din, load[7], clock, reset, regHout );

  mux8 mux( read, regAout, regBout, regCout, regDout, regEout, regFout, regGout, regHout, dout );
endmodule
