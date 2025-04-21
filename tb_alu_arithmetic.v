module tb_alu_arithmetic;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [7:0] ALU_Out;
    wire CarryOut;

    // Instantiate the ALU module
    alu_arithmetic uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .CarryOut(CarryOut)
    );

    initial begin
        // Test Addition
        A = 4'b0011; B = 4'b0010; ALU_Sel = 3'b000; #10;
        // Test Subtraction
        A = 4'b0101; B = 4'b0011; ALU_Sel = 3'b001; #10;
        // Test Multiplication
        A = 4'b0011; B = 4'b0010; ALU_Sel = 3'b010; #10;
        // Test Division
        A = 4'b1000; B = 4'b0010; ALU_Sel = 3'b011; #10;
        // Test Modulus
        A = 4'b0101;
    end

endmodule