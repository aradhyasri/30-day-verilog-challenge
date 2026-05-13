module tb_bin2gray;
    reg [3:0] bin;
    wire [3:0] gray;
    integer i;

    // Instantiate your converter
    bin2gray uut (
        .bin(bin),
        .gray(gray)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        $display("Binary | Gray");
        $display("-------|-----");

        // Loop from 0 to 15
        for (i = 0; i < 16; i = i + 1) begin
            bin = i; 
            #10;
            $display(" %b  |  %b", bin, gray);
        end
        
        $finish;
    end
endmodule
