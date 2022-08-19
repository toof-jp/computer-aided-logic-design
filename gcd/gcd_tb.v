module gcd_tb();
  reg clock, reset;
  reg [7:0] A, B;
  wire [7:0] Y;
  wire ready;

  gcd uut( clock, reset, A, B, Y, ready );

  always begin
    clock = 1'b1; #50;
    clock = 1'b0; #50;
  end

  initial begin
    A = 6;
    B = 2;
    reset = 0;
    #10 reset = 1;
    #500; reset = 0; A = 12; B = 12;
    #100; reset = 1;
    #300; reset = 0; A = 9; B = 5;
    #100; reset = 1;
    #700; $finish;
  end
endmodule
