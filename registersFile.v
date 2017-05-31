module registerFile (clk,rs,rt,rd,data1,data2,writeData,regWrite);
input clk;
input [4:0] rs,rt,rd;
input [31:0] writeData;
input regWrite;

output [31:0] data1, data2;

reg [31:0] data1, data2;

reg [31:0] registers[31:0];

always @ (rs or rt)
begin
data1 <= (rs==5'b0)?32'b0:registers[rs];
data2 <= (rt==5'b0)?32'b0: registers[rt];
end


always @(posedge clk)
begin
if(regWrite == 1'b1)
begin
registers[rd] <= writeData;
end
end
endmodule