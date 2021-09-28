module operation;
reg [15:0]a;
reg b;
reg clock;
reg [2:0] i=0;
initial
   clock=1'b0;
always
   #5 clock=~clock;
always@(posedge clock)
begin
i=i+1;
a=7;
if (i==3)
begin
separatly(b,a);
$display("%b(%d)加上修正數:%d後變為偶同位",a,a,b);
end
end
//------------------
initial
#200 $finish;
task separatly;
output b;
input [15:0]a;
integer c;
begin
  c=a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7]^a[8]^a[9]^a[10]^a[11]^a[12]^a[13]^a[14]^a[15];
 if(c==0)
  b=0;
else
  b=1;
end
endtask
endmodule
