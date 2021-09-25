module Morre_FSM(Out,state,clock,reset,in);
input clock,reset,in;
output Out;
output [2:0]state;
reg Out;
reg [2:0]state,nextstate;
parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100;
always@(posedge clock or posedge reset)
begin 
$monitor($time,"state=%b,in=%b,out=%b,nextstate=%b",state,in,Out,nextstate);
   if(reset)
      state<=S0;
   else
      state<=nextstate;
end
always@(in or state)
begin
  case(state)
   S0:begin
      if(in==1)
         begin
         nextstate=S1;
         Out=1;
         end
      else
         begin
         nextstate=S0;
         Out=0;
         end
      end
   S1:begin
      if(in==1)
         begin
         nextstate=S2;
         Out=0;
         end
      else
         begin
         nextstate=S1;
         Out=1;
         end
      end
   S2:begin
      if(in==1)
         begin
         nextstate=S3;
         Out=1;
         end
      else
         begin
         nextstate=S4;
         Out=0;
         end
      end
   S3:begin
      if(in==1)
         begin
         nextstate=S1;
         Out=0;
         end
      else
         begin
         nextstate=S4;
         Out=1;
         end
      end
   S4:begin
      if(in==1)
         begin
         nextstate=S0;
         Out=1;
         end
      else
         begin
         nextstate=S4;
         Out=0;
         end
      end
   endcase
end
endmodule
