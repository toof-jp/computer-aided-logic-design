`timescale 1ns / 1ps

module vending_machine( clock, reset, coin, toy );
  input clock, reset, coin;
  output toy;

  reg [1:0] state;
  reg toy;

  always @( posedge clock or negedge reset )
  begin
    if ( reset == 1'b0 )
      state <= 2'b00;
    else
      case( state )
        2'b00: state <= (coin == 1'b0) ? 2'b00 : 2'b01;
        2'b01: state <= (coin == 1'b0) ? 2'b01 : 2'b10;
        2'b10: state <= (coin == 1'b0) ? 2'b00 : 2'b01;
        default: state <= 2'bxx;
      endcase
  end

  always @( state )
  begin
    case( state )
      2'b00: toy <= 1'b0;
      2'b01: toy <= 1'b0;
      2'b10: toy <= 1'b1;
      default: toy <= 1'bx;
    endcase
  end
endmodule
