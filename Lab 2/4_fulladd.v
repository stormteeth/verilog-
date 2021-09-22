module fulladd4(sum,c_out,a,b,c_in);
output [3:0]sum;
output c_out;
input [3:0]a;
input [3:0]b;
input c_in;
wire c1,c2,c3;
fulladd f1(sum[0],c1,a[0],b[0],c_in);
fulladd f2(sum[1],c2,a[1],b[1],c1);
fulladd f3(sum[2],c3,a[2],b[2],c2);
fulladd f4(sum[3],c_out,a[3],b[3],c3);
endmodule

module fulladd(sum,c_out,a,b,c_in);
output sum,c_out;
input a,b,c_in;
xor#(5) x1(s1,a,b);
xor#(5) x2(sum,s1,c_in);
and#(3) a1(c1,a,b);
and#(3) a2(s2,c_in,s1);
or#(2) o1(c_out,s2,c1);
endmodule
