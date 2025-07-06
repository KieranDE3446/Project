// The alu will describe the logic for a simple arithmetic logic unit (ALU).
// It will take two inputs and perform basic arithmetic operations like addition, subtraction, etc.

//Describe the inputs/outputs
module alu (
    input wire [3:0] a, // Operand A
    input wire [3:0] b, // Operand B
    input wire [2:0] op, // Operation select (e.g., 000 for add, 001 for subtract, etc.)
    output reg [3:0] result 
);
//describe the logic
    always @(*) begin
        case (op)
            3'b000: result = a + b; // Addition
            3'b001: result = a - b; // Subtraction
            3'b010: result = a * b; // Multiplication
            3'b011: result = (b != 0) ? a / b : 0; // Division (with check for division by zero)
        endcase
    end

endmodule 

//Notes:
// - The reason for using "always @(*)" is to ensure that the output is updated whenever any of the inputs change.
//   This is due to the combinational nature of the ALU operations.