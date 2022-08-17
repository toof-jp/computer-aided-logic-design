`timescale 1ns / 1ps

module mux3_tb();
  reg [7:0] Ain, Cin, Din;
  reg [1:0] reg_sel3;
  wire [7:0] Bout;

  mux3 uut(
    Ain,
    Cin,
    Din,
    reg_sel3,
    Bout
  );

  initial begin
    Ain = 8'o1;
    Cin = 8'o3;
    Din = 8'o4;
    reg_sel3 = 2'o0;

    #10 reg_sel3 = 2'o1;
    #10 reg_sel3 = 2'o2;
    #10 reg_sel3 = 2'o3;
    #10 $finish;
  end
endmodule
