`include "uvm_macros.svh"
import uvm_pkg::*;

module dff_tb;
    logic clk;
    dff_if dff_if(clk);

    dff dut (
        .clk(clk),
        .rst_n(dff_if.rst_n),
        .d(dff_if.d),
        .q(dff_if.q)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        run_test();
    end
endmodule