module text();
reg [2:0] d;
reg a,b,c;
initial 
begin
     a = 1'b0;
     b = #15 1'b1;
     c = #10 1'b0;
     d = #25 {a,b,c};
     #10 $finish;
	 
end 
initial 
begin
	  $monitor($time,"a=%d,b=%d,c=%d,d={%d,%d,%d}\n",a,b,c,d[0],d[1],d[2]);
end 

endmodule 
 