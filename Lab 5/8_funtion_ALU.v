module text();
reg [4:0] method;
reg [3:0] a;
reg [3:0] b;
reg [2:0] choose;
integer i;
initial
begin
a=4'd5;
b=4'd12;
for(i=0;i<8;i=i+1)
begin
#10choose=i;
case(choose)
3'd0:method=a;
3'd1:method=a+b;
3'd2:method=a-b;
3'd3:method=a/b;
3'd4:method=a%1; 
3'd5:method=a<<1; 
3'd6:method=a>>1;
3'd7:method=a>b;
default:method=0;
endcase
$display("choose=%b,answer=%b",choose,method);
end
end
endmodule
