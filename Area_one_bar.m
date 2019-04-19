function [Area_one_bar]=Area_one_bar(dia)
% To find out the area of one reinforced bar in mm^2
% dia is the diameter of the reinforced bars in mm
Area_one_bar = (pi/4)*(dia*dia);
printf("Area_one_bar = %d mm^2 \n",Area_one_bar)                                           
endfunction