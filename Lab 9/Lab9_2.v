module text();
reg [7:0] memory[0:200];
integer i;
reg [7:0] inter [0:4];
integer place;
integer write;
initial 
begin
$readmemh("init.dat",memory);
for(i=0;i<8;i=i+1)
begin
$display("memory[%0d]=%h",i,memory[i]);
end
inter [0]=memory[1];
inter [1]=memory[2];
inter [2]=memory[4];
inter [3]=memory[5];
inter [4]=memory[6];
write=$fopen("init.dat");
for(i=0;i<5;i=i+1)
begin
place={$random}%201;
$fdisplay(write,"@%h  %h",place, inter [i]);
end
$readmemh("init.dat",memory);
for(i=0;i<201;i=i+1)
begin
$display("memory[%0d]=%h",i,memory[i]);
end
end
endmodule
