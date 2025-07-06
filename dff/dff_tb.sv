module dff_tb;
    reg clk, rst_n, d;
    wire q;

    // Instantiate the D flip-flop
    dff uut (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .q(q)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $display("START: clk=%b rst_n=%b d=%b q=%b", clk, rst_n, d, q);
        rst_n = 0; d = 0;
        #10 rst_n = 1;
        #10 d = 1;
        #10 d = 0;
        #10 $display("END: clk=%b rst_n=%b d=%b q=%b", clk, rst_n, d, q);
        $finish;
    end
endmodule