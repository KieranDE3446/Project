module alu_tb;
    reg [3:0] a, b;
    reg [2:0] op;
    wire [7:0] result;

    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    // Testbench stimulus here
    initial begin
        $display("op a b | result");
        a = 4'd10; b = 4'd9;

        op = 3'b000; #5; $display("ADD: %d + %d = %d", a, b, result);
        op = 3'b001; #5; $display("SUB: %d - %d = %d", a, b, result);
        op = 3'b010; #5; $display("Multiplication: %d * %d = %d", a, b, result);

        $finish;
    end
endmodule