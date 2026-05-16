//3-to-8 line decoder implementation
module decoder38(
  input[2:0]sel,
  output[7:0]y
);
  assign y = 1'b1 << sel;
endmodule
