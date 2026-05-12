module full_adder(
    input a, b, cin,
    output sum, cout
);

    // Continuous assignment using Boolean logic
    assign sum  = a ^ b ^ cin;          // XOR all three bits
    assign cout = (a & b) | (b & cin) | (a & cin); // Majority logic for carry

endmodule