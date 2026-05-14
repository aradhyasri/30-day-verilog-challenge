module tb_mux21;
    // 1. Declare local signals
    // Inputs are 'reg' because they are assigned in an initial block
    // Outputs are 'wire' because they are driven by the UUT
    reg a, b, sel;
    wire y;
    integer i;

    // 2. Instantiate the Unit Under Test (UUT)
    // Connecting by name (Named Mapping) is safer than positional mapping
    mux21 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    // 3. Stimulus Generation
    initial begin
        // Required for EDA Playground to generate waveform files
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        $display("Time | Sel A B | Y (Output)");
        $display("---------------------------");

        // There are 3 inputs (sel, a, b), so 2^3 = 8 possible combinations
        for (i = 0; i < 8; i = i + 1) begin
            {sel, a, b} = i; // Concatenation trick: splits 'i' into sel, a, and b
            #10;             // Wait 10 time units for the logic to propagate
            $display("%4t |  %b  %b %b |   %b", $time, sel, a, b, y);
        end
        
        #10;
        $display("Simulation Finished.");
        $finish; 
    end
endmodule