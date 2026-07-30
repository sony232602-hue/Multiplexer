`timescale 1ns/1ps

module mux2x1_tb;

reg a;
reg b;
reg sel;
wire y;

// Instantiate the Multiplexer
mux2x1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $display("Time\tSel\tA\tB\tY");
    $monitor("%0dns\t%b\t%b\t%b\t%b",
              $time, sel, a, b, y);

    // Test Case 1
    a = 0; b = 0; sel = 0;
    #10;

    // Test Case 2
    a = 0; b = 1; sel = 0;
    #10;

    // Test Case 3
    a = 1; b = 0; sel = 0;
    #10;

    // Test Case 4
    a = 1; b = 1; sel = 0;
    #10;

    // Test Case 5
    a = 0; b = 0; sel = 1;
    #10;

    // Test Case 6
    a = 0; b = 1; sel = 1;
    #10;

    // Test Case 7
    a = 1; b = 0; sel = 1;
    #10;

    // Test Case 8
    a = 1; b = 1; sel = 1;
    #10;

    $finish;

end

endmodule