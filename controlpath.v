module controlpath(clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R,sig_1to2,sig_2to3,sig_3to2,sig_2to1,clk,start);
input sig_1to2,sig_2to3,sig_3to2,sig_2to1,clk,start;
output reg clr_G,inc_G,clr_Y,inc_Y,clr_R,inc_R;
reg [2:0] state;

parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100,S5 = 3'b101;

always @(posedge clk)
begin 
    case(state)
    S0: if(start) state<=S1;
    S1: state<= S2;
    S2: if(sig_1to2) state<= S3;
    S3: if(sig_2to3) state<= S4;
    S4: if(sig_3to2) state<= S5;
    S5: if(sig_2to1) state<=S2;
    default : state<= S0;
    endcase 
    end 

always @(state)
begin
  case(state)
  S0:begin
   #1 clr_G=1'b0;inc_G=1'b0;clr_Y=1'b0;inc_Y=1'b0;clr_R=1'b0;inc_R=1'b0;
    end 
 
  S1: begin
      #1 clr_G=1'b1;inc_G=1'b0;clr_Y=1'b1;inc_Y=1'b0;clr_R=1'b1;inc_R=1'b0;
      end
  S2: begin
    #1 clr_G=1'b0;inc_G=1'b1;clr_Y=1'b1;inc_Y=1'b0;clr_R=1'b1;inc_R=1'b0;
     end
  S3: begin
    #1 clr_G=1'b1;inc_G=1'b0;clr_Y=1'b0;inc_Y=1'b1;clr_R=1'b0;inc_R=1'b0;
     end
  S4: begin
    #1 clr_G=1'b1;inc_G=1'b0;clr_Y=1'b1;inc_Y=1'b0;clr_R=1'b0;inc_R=1'b1;
     end
     
    S5: begin
    #1 clr_G=1'b1;inc_G=1'b0;clr_Y=1'b0;inc_Y=1'b1;clr_R=1'b1;inc_R=1'b0;
     end
     endcase
     end
endmodule 
