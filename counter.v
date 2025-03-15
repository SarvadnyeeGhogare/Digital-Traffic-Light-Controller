module COUNTER(dout,clr,inc,clk);
input clr,inc,clk;
output reg  [5:0]dout;
always @(posedge clk)
if(clr)
dout <= 6'b0;
else if(inc) 
dout<= dout+1;
endmodule
