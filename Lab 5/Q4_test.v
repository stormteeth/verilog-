module text_2;
reg clock;
initial
begin
clock=1'b0;
while(1)
#5 clock=~clock;
end
initial
begin
$monitor($time,"clock=%b",clock);
end
endmodule
