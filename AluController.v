module ALUController(func,ALUOp,ALUControl);
input [5:0] func;
input [2:0] ALUOp;
output [2:0] ALUControl;

reg [2:0] ALUControl;

always @(func or ALUOp) begin
	if (ALUOp == 3'b101) begin
		case(func)
			6'b100000: ALUControl <= 3'b000; //ADD
			6'b100010: ALUControl <= 3'b001; //SUB
			6'b000000: ALUControl <= 3'b010; //SLL
			6'b000010: ALUControl <= 3'b011; //SRL
			6'b100100: ALUControl <= 3'b101; //AND
			6'b100101: ALUControl <= 3'b100; //OR
			6'b101010: ALUControl <= 3'b110; //SLT
			default: ALUControl <= 3'b000;
//check 2n mohamed 3amel el SLT 111 we BNE 110 !!!!!!!!!!!!!!!!!!!!
		endcase
		
	end
	else begin
		case(ALUOp)
			3'b000: ALUControl <= 3'b000; //ADDi, LW, SW 
			3'b001: ALUControl <= 3'b101; //ANDi 
			3'b010: ALUControl <= 3'b100; //ORi
			3'b011: ALUControl <= 3'b001; //BEQ 
			3'b100: ALUControl <= 3'b111; //BNE
			default: ALUControl <= 3'b000;
		endcase
	end
end
endmodule
