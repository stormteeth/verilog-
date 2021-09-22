module Lab1();
reg[31:0] data;
integer i;

initial begin
	for(i=0;i<32;i=i+2)
		data[i]=0;
	for(i=1;i<32;i=i+2)
		data[i]=1;
	for(i=0;i<32;i=i+1)
		$display("date[%d]=%d\n",i,data[i]);
end
endmodule
