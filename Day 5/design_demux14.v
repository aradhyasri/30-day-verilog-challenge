// 1-to-4 Demultiplexer Implementation
module demux14 (
    input data_in,      // The signal to be distributed
    input [1:0] sel,    // 2-bit select line (4 combinations)
    output reg [3:0] y  // 4-bit output bus
);

    // Using a behavioral block to describe the distribution logic
    always @(*) begin
        // Step 1: Initialize all outputs to 0 (Default state)
        y = 4'b0000;
        
        // Step 2: Routing logic
        case (sel)
            2'b00: y[0] = data_in; // Route to Output 0
            2'b01: y[1] = data_in; // Route to Output 1
            2'b10: y[2] = data_in; // Route to Output 2
            2'b11: y[3] = data_in; // Route to Output 3
            default: y = 4'b0000;
        endcase
    end
endmodule