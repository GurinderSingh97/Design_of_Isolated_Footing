% Design of Isolated Pad Footing
clc;
clear all;
load input.mat
load value.mat
% All the variable are defined in their respective functions
disp("Design of Isolated Pad Footing")
disp("\n")
value(P,Sw,Sp,fck,fy)
area_footing = area_footing(P,Sw,Sp);
[L,B]=L_B_footing(area_footing,b,d);
Net_upward_pressure = Net_upward_pressure(P,L,B);
disp("\n")
[d_moment,D_moment,Mux,Muy] = d_moment(Net_upward_pressure,L,B,d,b,fck,fy,Cc);
[d_oneway_shear] = d_oneway_shear(L,B,b,d,fck,pt,D_moment,Net_upward_pressure);
[d_twoway_shear] = d_twoway_shear(L,B,b,d,d_oneway_shear,Net_upward_pressure,fck);
disp("\n")
depth = [d_moment d_oneway_shear d_twoway_shear];
eff_d = max(depth);
Overall_D = ceil((eff_d+Cc+dia)/10)*10;
printf("Overall_D = %d mm \n",Overall_D)
eff_d_x = Overall_D-Cc;
eff_d_y = eff_d_x-dia;
disp("\n")
[Ast_x,Ast_y,No_of_Reinforced_Bars_x,No_of_Reinforced_Bars_y] =  Ast(L,B,fck,fy,Mux,Muy,eff_d_x,eff_d_y,dia,Sc);
disp("\n")
[Development_length,Length_Available_of_Bars_x,Length_Available_of_Bars_y] = Development_length(L,B,b,d,fck,fy,dia,Sc,Overall_D);
disp("\n")
Bearing_stress(P,b,d,Overall_D,fck)