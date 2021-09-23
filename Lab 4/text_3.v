module text();
reg a,b,c,d;
initial 
begin
   a=1'b0;
	#0 b=c;
   #10 $finish;		
end 
initial 
begin
      c=1'b1;
		#0 d=a;	  
end 
initial 
begin
	  $monitor($time,"a=%d,b=%d,c=%d,d=%d",a,b,c,d);
end 
endmodule 
