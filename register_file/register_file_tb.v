module register_file_tb();
  reg [7:0] din;
  reg [2:0] read, write;
  reg clock, reset;
  wire [7:0] dout;

  register_file reg1 ( din, read, write, clock, reset, dout );

  always begin
    clock = 1'b1; #50;
    clock = 1'b0; #50;
  end

  initial begin
    din = 0; read = 0; write = 0; reset = 1;
    #10;
    #100; din = 00; read = 0; write = 0;
    #100; din = 10; read = 0; write = 0;
    #100; din = 11; read = 0; write = 1;
    #100; din = 12; read = 1; write = 2;
    #100; din = 13; read = 2; write = 3;
    #100; din = 14; read = 3; write = 4;
    #100; din = 15; read = 4; write = 5;
    #100; din = 16; read = 5; write = 6;
    #100; din = 17; read = 6; write = 7;
    #100; din = 18; read = 7; write = 7;
    #100; din = 18; read = 0; write = 0;
    #100; din = 18; read = 1; write = 1;
    #100; $finish;
  end
endmodule
