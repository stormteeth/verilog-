module stimulus;
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
a=4'd0;b=4'd0;c_in=1'b0;
#15 a=4'd3;b=4'd4;
#15 a=4'd2;b=4'd5;
#15 a=4'd9;b=4'd9;
#15 a=4'd10;b=4'd15;
#15 a=4'd10;b=4'd5;c_in=1'b1;
end
endmodule
