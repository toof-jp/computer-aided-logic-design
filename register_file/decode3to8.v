`timescale 1ns / 1ps

module decode3to8( write, load );
  input [2:0] write;
  output [7:0] load;
  reg [7:0] load;

  always @( write )
  begin
    case ( write )
      3'd0: load = 8'b0000_0001;
      3'd1: load = 8'b0000_0010;
      3'd2: load = 8'b0000_0100;
      3'd3: load = 8'b0000_1000;
      3'd4: load = 8'b0001_0000;
      3'd5: load = 8'b0010_0000;
      3'd6: load = 8'b0100_0000;
      3'd7: load = 8'b1000_0000;
    endcase
  end
endmodule
