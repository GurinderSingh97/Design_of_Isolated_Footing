function [L,B]=L_B_footing(area_footing,b,d)
% To find the Length of longer and shorter side of footing
% area_footing in mm^2
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% b is the shorter side of column in mm
% d is the longer side of column in mm
% In case of square column b = d
if(b==d)
L = ceil((sqrt(area_footing))/100)*100;
printf("L = %d mm \n",L)
B = ceil((sqrt(area_footing))/100)*100;
printf("B = %d mm \n",B)
elseif(b~=d)
L = ceil((sqrt(1.5*(area_footing)))/100)*100;
printf("L = %d mm \n",L)
B = ceil(((area_footing)/L)/100)*100;
printf("B = %d mm \n",B)
endif
endfunction