function [d_oneway_shear] =  d_oneway_shear(L,B,b,d,fck,pt,D_moment,Net_upward_pressure)
load value.mat
% To find the effective depth of footing on the basis of one way shear
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% b is the shorter side of column in mm
% d is the longer side of column in mm
% In case of square column b = d
% fck is the characteristics strength of concrete in N/mm^2
% pt is the percentage of steel
% D_moment is the overall depth of footing in mm
% Net upward pressure in N/mm^2
if(fck>=40)
Fck=40;
elseif(fck<40)
Fck=fck;
endif
tc1 = interp2(tables,tables,tables,Fck,pt);
if(D_moment>=300)
D_moment=300;
elseif(D_moment<300)
D_moment=D_moment;
endif
k = interp1(table(:,1),table(:,2),D_moment);
tc = k*tc1;
L_bey_col = (L-d)/2;
B_bey_col = (B-b)/2;
d_oneway_shear_x = round((Net_upward_pressure*L_bey_col)/(Net_upward_pressure+tc));
d_oneway_shear_y = round((Net_upward_pressure*B_bey_col)/(Net_upward_pressure+tc));
if(d_oneway_shear_x>=d_oneway_shear_y)
d_oneway_shear = ceil((d_oneway_shear_x)/10)*10;
printf("d_oneway_shear = %d mm \n",d_oneway_shear)
elseif(d_oneway_shear_x<=d_oneway_shear_y)
d_oneway_shear = ceil((d_oneway_shear_y)/10)*10;
printf("d_oneway_shear = %d mm \n",d_oneway_shear)
endif
endfunction