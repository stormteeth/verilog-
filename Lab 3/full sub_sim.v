module simulation;
reg x,y,z;
wire B,D;
fullsub try(D,B,x,y,z);
initial
begin
$monitor($time,"x=%d,y=%d,z=%d,D=%d,B=%d\n",x,y,z,D,B);
end
initial begin
#10 x=0;y=0;z=0;
#10 x=0;y=0;z=1;
#10 x=0;y=1;z=0;
#10 x=0;y=1;z=1;
#10 x=1;y=0;z=0;
#10 x=1;y=0;z=1;
#10 x=1;y=1;z=0;
#10 x=1;y=1;z=1;
#120 $finish;
end
endmodule
