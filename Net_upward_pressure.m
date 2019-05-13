function [Net_upward_pressure] = Net_upward_pressure(P,L,B)
% To find out the Net upward pressure in N/mm^2  
% P is the axial load on column in N  
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
Net_upward_pressure = (1.5*P*1000/(L*B)); 
printf("Net_upward_pressure = %d N/mm^2 \n",Net_upward_pressure)
endfunction