`timescale 1ns / 1ps

module decode3to8_tb();
  reg [2:0] write;
  wire [7:0] load;

  decode3to8 uut( write, load );

  initial begin
    #10 write = 3'd0;
    #10 write = 3'd1;
    #10 write = 3'd2;
    #10 write = 3'd3;
    #10 write = 3'd4;
    #10 write = 3'd5;
    #10 write = 3'd6;
    #10 write = 3'd7;
    #10 $finish;
  end
endmodule
