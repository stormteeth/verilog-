module stimulus;
reg Clock,Reset;
wire Red,Green,Yellow;
trafficLight try(Clock, Reset, Red, Green, Yellow);
initial Clock=1'b0;
always #10 Clock=~Clock;
initial begin
Clock=0;
Reset=0;
#10 Reset=1'b1;
#10 Reset=1'b0;//S0
#800 $finish;
end
initial $monitor($time,"RED=%d,GREEN=%d,YELLOW=%d",Red,Green,Yellow);
endmodule
