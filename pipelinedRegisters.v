
module IF_ID(clk,instructionIn,PCin,instructionOut,PCout);
input [31:0] instructionIn , PCin;
input clk;
output [31:0] instructionOut , PCout;
reg [31:0] instructionOut , PCout;
always @(posedge clk ) begin
	instructionOut <= instructionIn;
	PCout <= PCin;
end
endmodule

module ID_EX(clk,in,out);
input clk;
input [147:0] in;
output [147:0] out; 
reg [147:0] out;
always @(posedge clk ) begin
out <= in;
end
endmodule


module EX_MEM(clk,in,out);
input clk;
input [106:0] in;
output [106:0] out; 
reg [106:0] out;
always @(posedge clk ) begin
out <= in;
end
endmodule

module MEM_WB(clk,in,out);
input clk;
input [70:0] in;
output [70:0] out;
reg [70:0] out;
always @(posedge clk ) begin
out <= in;
end
endmodule
