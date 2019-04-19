function [Development_length,Length_Available_of_Bars_x,Length_Available_of_Bars_y] = Development_length(L,B,b,d,fck,fy,dia,Sc)
load value.mat
% To check the development lenght
% fck_for_column in N/mm^2
% fy is the yield strength of steel in N/mm^2
% dia is the diameter of the reinforced bars in mm
% B is the side of footing in mm
% b is the side of column in mm
% Sc is the side cover in mm
tbd = interp1(mat(:,1),mat(:,2),fck);
Development_length = ((0.87*fy)/(4*tbd*1.6))*dia;
printf("Development_length = %d mm \n",Development_length)
Length_Available_of_Bars_x = round((0.5*(L - d) - (Sc)));
printf("Length_Available_of_Bars_x = %d mm \n",Length_Available_of_Bars_x)
if(Development_length<Length_Available_of_Bars_x)
disp("Hence Safe in Development Length along x direction")
elseif(Development_length>Length_Available_of_Bars_x)
disp("Hence not Safe in Development Length along x direction")
endif
Length_Available_of_Bars_y = round((0.5*(B - b) - (Sc)));
printf("Length_Available_of_Bars_y = %d mm \n",Length_Available_of_Bars_y)
if(Development_length<Length_Available_of_Bars_y)
disp("Hence Safe in Development Length along y direction")
elseif(Development_length>Length_Available_of_Bars_y)
disp("Hence not Safe in Development Length along y direction")
endif