
`timescale 1ns / 1ps

module datapath (clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R,sig_1to2,sig_2to3,sig_3to2,sig_2to1,clk,no_traffic_sec_EW,traffic_sec_EW);
input clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R,clk;
input [6:0] no_traffic_sec_EW;
input [4:0] traffic_sec_EW;
output sig_1to2,sig_2to3,sig_3to2,sig_2to1;
wire [5:0]GREEN_NS,YELLOW_NS,RED_NS,GREEN_EW,YELLOW_EW,RED_EW;

assign RED_EW =GREEN_NS;
assign YELLOW_EW =YELLOW_NS;
assign GREEN_EW =RED_NS;

COUNTER dut3(GREEN_NS,clr_G,inc_G,clk);
COMPARATOR_GREEN dut4(sig_1to2,GREEN_NS,no_traffic_sec_EW);
COUNTER dut5(YELLOW_NS,clr_Y,inc_Y,clk);
COMPARATOR_YELLOW dut6(sig_2to3,YELLOW_NS);
COUNTER dut7(RED_NS,clr_R,inc_R,clk);
COMPARATOR_RED dut8(sig_3to2,RED_NS,traffic_sec_EW);

COUNTER dut9(YELLOW_NS,clr_Y,inc_Y,clk);
COMPARATOR_YELLOW dut10(sig_2to1,YELLOW_NS);
endmodule 
