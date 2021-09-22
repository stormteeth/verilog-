module stimulus();
reg in0,in1,in2,in3;
reg s1,s0;
wire OUTPUT;
mux4_to_1 mymux(OUTPUT,in0,in1,in2,in3,s1,s0);
initial
begin
in0=0;in1=1;in2=0;in3=1;
#1$display("in0=%d,in1=%d,in2=%d,in3=%d\n",in0,in1,in2,in3);
s1=0;s0=0;
#1$display("s1=%d,s0=%d,output=%d\n",s1,s0,OUTPUT);
s1=0;s0=1;
#1$display("s1=%d,s0=%d,output=%d\n",s1,s0,OUTPUT);
s1=1;s0=0;
#1$display("s1=%d,s0=%d,output=%d\n",s1,s0,OUTPUT);
s1=1;s0=1;
#1$display("s1=%d,s0=%d,output=%d\n",s1,s0,OUTPUT);
end
endmodule
