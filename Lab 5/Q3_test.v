module text;
reg a,b,x,y,p,m;
initial begin
   begin
      x = 1'b0;
      $display("x = 1'b0;");
   end
   begin
      #5 y = 1'b1;
      $display("#5 y = 1'b1;");
   end
   fork
      begin
         #20 a = x;
	 $display("# 20 a = x;");
      end
      begin
         #15 b = y;
	 $display("#15 b = y;");
      end    
   join

   begin
      #40 x = 1'b1;
      $display("#40 x = 1'b1;");
   end 
   fork
      begin
         #10 p = x;
	 $display("# 10 p = x;");
      end 
      begin
         begin
            #10 a = y;
            $display("#10 a = y;");
         end 
	 begin
            #30 b = x;
	    $display("#30 b = x;");
	 end 
      end
      begin
         #5 m = y;
	 $display("#5 m = y;");
      end
   join
end
endmodule
