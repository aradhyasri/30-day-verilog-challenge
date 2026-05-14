module mux21 (
    input a, b, sel,
    output y
);

    // Style 1: Dataflow Modeling (Ternary Operator)
    // Very efficient for simple routing.
    assign y = (sel) ? b : a;

    /* 
    // Style 2: Behavioral Modeling (if-else)
    // Good for readability in complex logic.
    always @(*) begin
        if (sel) y = b;
        else y = a;
    end

    // Style 3: Structural Modeling (Gate Level)
    // Shows the exact hardware implementation.
    wire not_sel, a_out, b_out;
    not (not_sel, sel);
    and (a_out, a, not_sel);
    and (b_out, b, sel);
    or  (y, a_out, b_out);
    */

endmodule
