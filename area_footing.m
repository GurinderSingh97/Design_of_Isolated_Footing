function [area_footing]= area_footing(P,Sw,Sp) 
% To find the required area of footing subjected to axial load 
% P is the axial load on column in N
% Sw in the self weight of footing in %
% Sp if the soil pressure in N/mm^2
% Vertical_Load_on_Column in N
% area_footing in mm^2
Load_inc=(Sw/100)*P;
Vertical_Load_on_Column = P+Load_inc;
area_footing = (Vertical_Load_on_Column/Sp);
printf("area_footing = %d mm^2 \n",area_footing)
endfunction