module bin2gray(
    input [3:0] bin,   // 4-bit Binary input
    output [3:0] gray  // 4-bit Gray output
);

    // Gray code conversion logic
    assign gray[3] = bin[3];               // MSB stays the same
    assign gray[2] = bin[3] ^ bin[2];      // XOR with the bit to the left
    assign gray[1] = bin[2] ^ bin[1];
    assign gray[0] = bin[1] ^ bin[0];

endmodule
