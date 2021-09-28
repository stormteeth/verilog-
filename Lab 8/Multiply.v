module operation;
reg [3:0] a;
reg [3:0] b;
reg [7:0] total;
initial begin
   a=3;
   b=5;
   total=multi_opter(a,b);
   $display("total=%d",total);
end
initial begin
   a=4;
   b=9;
   total=multi_opter(a,b);
   $display("total=%d",total);
end
initial begin
   a=6;
   b=4;
   total=multi_opter(a,b);
   $display("total=%d",total);
end
initial begin
   a=9;
   b=8;
   total=multi_opter(a,b);
   $display("total=%d",total);
end
initial begin
   a=7;
   b=3;
   total=multi_opter(a,b);
   $display("total=%d",total);
end
function [7:0] multi_opter;
input [3:0]a;
input [3:0]b;
multi_opter = a * b;
endfunction
endmodule
