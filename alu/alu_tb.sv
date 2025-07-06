module alu_tb;
    reg [3:0] a, b;
    reg [2:0] op;
    wire [3:0] result;

    alu uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result)
    );

    // Testbench stimulus here
    initial begin
        $display("op a b | result");
        a = 4'd3; b = 4'd2;

        op = 3'b000; #5; $display("ADD: %d + %d = %d", a, b, result);
        op = 3'b001; #5; $display("SUB: %d - %d = %d", a, b, result);
        op = 3'b010; #5; $display("AND: %b & %b = %b", a, b, result);
        op = 3'b011; #5; $display("OR:  %b | %b = %b", a, b, result);
        op = 3'b100; #5; $display("XOR: %b ^ %b = %b", a, b, result);
        op = 3'b101; #5; $display("A:   %d", result);
        op = 3'b110; #5; $display("B:   %d", result);

        $finish;
    end
endmodule