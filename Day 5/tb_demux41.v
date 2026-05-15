module tb_demux14;
    reg data_in;
    reg [1:0] sel;
    wire [3:0] y;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    demux14 uut (
        .data_in(data_in),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        // Setup: Keep data_in high to see where it gets routed
        data_in = 1; 
        
        $display("Time | Sel | y3 y2 y1 y0");
        $display("-----------------------");

        for (i = 0; i < 4; i = i + 1) begin
            sel = i;
            #10; // Wait for logic to update
            $display("%4t |  %b  |  %b  %b  %b  %b", $time, sel, y[3], y[2], y[1], y[0]);
        end
        
        #10;
        $finish;
    end
endmodule
