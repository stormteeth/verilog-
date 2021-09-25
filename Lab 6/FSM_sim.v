module stimulus;
reg clock,reset,in;
wire Out;
wire [2:0]state;
Morre_FSM try(Out,state,clock,reset,in);
initial clock=1'b0;
always #10 clock=~clock;
initial begin
reset=1'b0;
#10 reset=1'b1;in=1'b0;
#10 reset=1'b0;//S0
#20 in=1'b0;//S1
#20 in=1'b1;//S2
#20 in=1'b1;//S3
#20 in=1'b0;//S4
#20 $finish;
end
//initial $monitor($time,"in=%b,out=%b,state=%b",in,Out,state);
endmodule
