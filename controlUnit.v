module controlUnit (instruction,regDst,branch,memRead,memToReg,ALUOp,memWrite,ALUSrc,regWrite);
input [5:0] instruction;
output regDst,branch,memRead,memToReg,memWrite,ALUSrc,regWrite;
output [2:0] ALUOp;

reg regDst,branch,memRead,memToReg,memWrite,ALUSrc,regWrite;
reg [2:0] ALUOp;

always @(instruction) begin
	if (instruction==6'b0) begin
		regDst <= 1'b1;
		branch <= 1'b0;
		memRead <= 1'b0;
		memToReg <= 1'b0;
		memWrite <= 1'b0;
		ALUSrc <= 1'b0;
		regWrite <= 1'b1;
		ALUOp <= 3'b101;
		
	end
	else begin
		case(instruction)
		6'b001000 : //addi
					begin
		            regDst <= 1'b0; 
					branch <= 1'b0; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b1;
					regWrite <= 1'b1;
					ALUOp <= 3'b000;
					end

		6'b100011 : //lw
		            begin
		            regDst <= 1'b0; 
					branch <= 1'b0; 
					memRead <= 1'b1; 
					memToReg <= 1'b1; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b1;
					regWrite <= 1'b1;
					ALUOp <= 3'b000;
					end

		6'b101011 : //sw
		            begin
		            regDst <= 1'b0; 
					branch <= 1'b0; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b1; 
					ALUSrc <= 1'b1;
					regWrite <= 1'b0;
					ALUOp <= 3'b000;
					end

        6'b001100 : //andi
        			 begin
		            regDst <= 1'b0; 
					branch <= 1'b0; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b1;
					regWrite <= 1'b1;
					ALUOp <= 3'b001;
					end

        6'b001101 : //ori
      				 begin
		            regDst <= 1'b0; 
					branch <= 1'b0; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b1;
					regWrite <= 1'b1;
					ALUOp <= 3'b010;
					end  

        6'b000100 : //beq
                    begin
		            regDst <= 1'b0; 
					branch <= 1'b1; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b0;
					regWrite <= 1'b0;
					ALUOp <= 3'b011;
					end

        6'b000101 : //bne
        			begin
		            regDst <= 1'b0; 
					branch <= 1'b1; 
					memRead <= 1'b0; 
					memToReg <= 1'b0; 
					memWrite <= 1'b0; 
					ALUSrc <= 1'b0;
					regWrite <= 1'b0;
					ALUOp <= 3'b100;
					end
		endcase
	end
end
endmodule