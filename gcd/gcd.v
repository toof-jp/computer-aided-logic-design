`timescale 1ns / 1ps

module gcd( clock, reset, A, B, Y, ready );
  input clock, reset;
  input [7:0] A, B;
  output [7:0] Y;
  output ready;

  reg [7:0] regA, regB;
  reg [7:0] nextA, nextB;
  reg ready;
  reg [1:0] state;
  parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

  always @( posedge clock or negedge reset )
  begin
    if ( reset == 1'b0 )
    begin
      state <= S0;
      regA <= 8'h00;
      regB <= 8'h00;
    end
    else
    begin
      if( nextA == nextB )
        state <= S1;
      else if( nextA > nextB )
        state <= S2;
      else
        state <= S3;
      regA <= nextA;
      regB <= nextB;
    end
  end

  always @( state or A or B or regA or regB)
  begin
    case( state )
      S0:
      begin
        nextA <= A;
        nextB <= B;
        ready <= 1'b0;
      end
      S1:
      begin
        nextA <= regA;
        nextB <= regB;
        ready <= 1'b1;
      end
      S2:
      begin
        nextA <= regA - regB;
        nextB <= regB;
        ready <= 1'b0;
      end
      S3:
      begin
        nextA <= regA;
        nextB <= regB - regA;
        ready <= 1'b0;
      end
      default:
      begin
        nextA <= 8'hxx;
        nextB <= 8'hxx;
        ready <= 1'bx;
      end
    endcase
  end

  assign Y = regA;
endmodule
