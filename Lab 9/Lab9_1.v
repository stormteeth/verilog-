module test;
reg[7:0]memory[0:7];
integer i;
initial
begin
$readmemh("init.dat",memory);

for(i=0;i<8;i=i+1)

$display("Memory[%0d]=%h",i,memory[i]);
end
endmodule
