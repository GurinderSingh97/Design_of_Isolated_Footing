function [Volume_of_concrete] = Volume_of_concrete(L,B,Overall_D,dia,Total_length_of_bars)
% To calculate the volume of concrete in footing in m^3
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% Overall_D is the overall depth of the footing
% dia is the diameter of the reinforced bars in mm
% Total_length_of_bars is the total length of reinforced bars used in footing
Volume_concrete = (L*B*Overall_D)/1000000000;  
Volume_steel = (((pi/4)*dia*dia)*Total_length_of_bars)/1000000000;
Volume_of_concrete = Volume_concrete-Volume_steel;
printf("Volume_of_concrete = %d m^3 \n",Volume_of_concrete) 
endfunction