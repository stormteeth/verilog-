module simulation;
reg [3:0]a;
reg [3:0]b;
reg c_in;
wire [3:0]sum;
wire c_out;
fulladd4 test(sum,c_out,a,b,c_in);
initial
begin
$monitor($time,"A=%b,B=%b,C_in=%b,C_out=%b,SUM=%b\n",a,b,c_in,c_out,sum);
end
initial
begin
a=4'b1011;
b=4'b1101;
c_in=0;
end
endmodule
