module tb_decoder38;
  reg[2:0]sel;
  wire[7:0]y;
  integer i;
  
  decoder38 uut(
    .sel(sel),
    .y(y)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    $display("time | sel | output vector(y7->y0)");
    $display("_____");
    
    //loop through all 8 input combinations
    for(i=0;i<8;i=i+1)begin
      sel=i;
      #10;
      $display("%4t | %3b | %8b",$time,sel,y);
    end
    #10;
    $finish;
  end
endmodule