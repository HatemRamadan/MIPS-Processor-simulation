module instructionMemory(address,data);
input [31:0] address;
output [31:0]data;

reg [31:0] mem[0:127];
initial
    begin
    $readmemh("data.txt",mem,0,127);
    end
assign data = mem[address[8:2]];
endmodule
