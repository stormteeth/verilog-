module counter(q);
output q;
reg clock;
reg [7:0] q;
integer i;
initial begin:block1
   i=0;
   clock=1'b1;
   q=0;
   while(1)begin
      if(i>=70)
         disable block1;
      #5 clock = ~clock;
   end
end
always@(posedge clock)begin
   i=i+1;
   if(i<67&&i>=5)
      q=q+1;
   else
      q=q;
   end
initial  begin
$monitor($time,"number=%d,counter=%d",i,q);
end
endmodule
