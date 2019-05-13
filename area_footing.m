function [area_footing]= area_footing(P,Sw,Sp) 
% To find the required area of footing subjected to axial load 
% P is the axial load on column in KN
% Sw in the self weight of footing in %
% Sp if the soil pressure in KN/m^2
% Vertical_Load_on_Column in N
% area_footing in m^2
Load_inc=(Sw/100)*P;
Vertical_Load_on_Column = P+Load_inc;
area_footing = (Vertical_Load_on_Column/Sp);
printf("Area_of_footing = %d m^2 \n",area_footing)
endfunction