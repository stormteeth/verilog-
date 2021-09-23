module text();
reg b,c,d;
initial
begin
      b = 1'b0; c = 1'b1;
      #10 b = 1'b1;
end
initial
begin
      d = #20 (b & c);
end
initial 
begin
	  $monitor($time,"b=%d,c=%d,d=%d",b,c,d);
end 
endmodule
