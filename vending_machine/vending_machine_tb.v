module vending_machine_tb();
  reg clock, reset, coin;
  wire toy;
  vending_machine utt( clock, reset, coin, toy );

  always begin
    clock = 1'b1; #50;
    clock = 1'b0; #50;
  end

  initial begin
    coin = 0; reset = 0;
    #10 reset = 1;
    #100; coin = 1;
    #100; coin = 1;
    #100; coin = 0;
    #100; coin = 0;
    #100; coin = 1;
    #100; coin = 1;
    #100; coin = 1;
    #100; coin = 1;
    #100; coin = 0;
    #100; $finish;
  end
endmodule
