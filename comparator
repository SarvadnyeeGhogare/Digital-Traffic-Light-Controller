
module COMPARATOR_GREEN(dout,din,no_traffic_sec_EW);
output  dout;
input  [5:0]din;
input [6:0] no_traffic_sec_EW;
assign dout = ((din >23)&&(din >(no_traffic_sec_EW)-2)); 
endmodule 



module COMPARATOR_YELLOW(dout,din);
output  dout;
input  [5:0]din;
assign dout = (din == 3); 
endmodule 



module COMPARATOR_RED(dout,din,traffic_sec_EW);
input [4:0] traffic_sec_EW;
output  dout;
input  [5:0]din;
assign dout = !((din <24)&&(din<traffic_sec_EW)); 
endmodule 

