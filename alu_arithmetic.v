module alu_arithmetic (
    input [3:0] A, B,
    input [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg CarryOut
);
    always @(*) begin
        case (ALU_Sel)
            3'b000: {CarryOut, ALU_Out} = A + B;     // Addition
            3'b001: {CarryOut, ALU_Out} = A - B;     // Subtraction
            3'b010: ALU_Out = A * B;                 // Multiplication
            3'b011: ALU_Out = A / B;                 // Division
            3'b100: ALU_Out = A % B;                 // Modulus
            default: ALU_Out = 8'b00000000;
        endcase
    end
endmodule
