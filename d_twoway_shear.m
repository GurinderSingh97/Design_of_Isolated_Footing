function [d_twoway_shear]= d_twoway_shear(L,B,b,d,d_oneway_shear,Net_upward_pressure,fck)
% To check the effective depth of footing on the basis of two way shear
% To find out the effective depth of footing on the basis of two way shear 
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% b is the shorter side of column in mm
% d is the longer side of column in mm
% In case of square column b = d
% fck is the characteristics strength of concrete in N/mm^2
% Net upward pressure in N/mm^2 
Width1 = b+d_oneway_shear;
Width2 = d+d_oneway_shear;
Shear_force = (Net_upward_pressure*(L*B-(Width1*Width2)));
tv = (Shear_force)/(2*(Width1+Width2)*d_oneway_shear);
tc = 0.25*sqrt(fck);
if(tv<tc)
disp("Hence Safe in Two Way Shear")
d_twoway_shear = d_oneway_shear;
elseif(tv>tc)
disp("Hence not Safe in Two Way Shear")
% beta_c is the ratio of short side to long side of the column
beta_c = b/d;
Ks = (0.5+beta_c);
if(Ks>1)
Ks=1;
elseif(Ks<1)
Ks=Ks;
endif
tc = 0.25*sqrt(fck);
depth_two_way_shear_x = [4*Ks*tc 4*Ks*tc*d -Shear_force];
depth_two_way_shear_y = [4*Ks*tc 4*Ks*tc*b -Shear_force];
d_twoway_shear_x = max(roots(depth_two_way_shear_x));
d_twoway_shear_y = max(roots(depth_two_way_shear_y));
if(d_twoway_shear_x>d_twoway_shear_y)
d_twoway_shear = ceil((d_twoway_shear_x)/10)*10;
printf("d_twoway_shear = %d mm \n",d_twoway_shear)
elseif(d_twoway_shear_x<d_twoway_shear_y)
d_twoway_shear = ceil((d_twoway_shear_y)/10)*10;
printf("d_twoway_shear = %d mm \n",d_twoway_shear)
endif
endif
endfunction