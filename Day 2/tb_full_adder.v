module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;
    integer i;

    full_adder uut ( .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout) );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        $display("A B Cin | Sum Cout");
        $display("------------------");

        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i; // Assign binary value of 'i' to inputs
            #10;
            $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);
        end
        
        $finish;
    end
endmodule

