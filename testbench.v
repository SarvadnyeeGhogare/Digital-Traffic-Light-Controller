module testbench ;
reg start, clk;
reg [6:0]no_traffic_sec_EW;
reg [4:0]traffic_sec_EW;

datapath lnt(clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R,sig_1to2,sig_2to3,sig_3to2,sig_2to1,clk,no_traffic_sec_EW,traffic_sec_EW);
controlpath cnt(clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R,sig_1to2,sig_2to3,sig_3to2,sig_2to1,clk,start);

initial 
begin
clk=1'b0;
start = 1'b1;
no_traffic_sec_EW=6'd35;
#203 traffic_sec_EW=5'd12;
     no_traffic_sec_EW=6'd18;
#210  traffic_sec_EW=5'd31;
     
#150 $finish ;
end 

always #2.5 clk=~clk;

initial 
begin
$monitor ("%d  ,  state:%d , sig_1to2:%d , sig_2to3:%d , sig_3to2:%d , sig_2to1:%d , GREEN_NS:%d , YELLOW_NS:%d , RED_NS:%d , GREEN_EW:%d , YELLOW_EW:%d , RED_EW:%d"  , $time, controlpath.state,datapath.sig_1to2,datapath.sig_2to3,datapath.sig_3to2,datapath.sig_2to1,datapath.GREEN_NS,datapath.YELLOW_NS,datapath.RED_NS,datapath.GREEN_EW,datapath.YELLOW_EW,datapath.RED_EW);
end 
 

endmodule 
