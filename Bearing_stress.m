function Bearing_stress(P,b,d,Overall_D,fck)
% To check the bearing stress
% P is the axial load on column in N
% b is the shorter side of column in mm
% d is the longer side of column in mm
% In case of square column b = d
% Overall_D is the overall depth of footing in mm
% fck is characteristics strength of concrete in N/mm^2 
A2 = (b)*(d);
A1 = ((d)+2*(2*Overall_D))*((b)+2*(2*Overall_D));
square_root_A1_by_A2 = sqrt((A1)/(A2));
if(square_root_A1_by_A2>2)
square_root_A1_by_A2 = 2;
elseif(square_root_A1_by_A2<2)
square_root_A1_by_A2 = square_root_A1_by_A2;
endif
Permissible_Bearing_Stress = 0.45*fck*square_root_A1_by_A2;
printf("Permissible_Bearing_Stress = %d N/mm^2 \n",Permissible_Bearing_Stress)
Actual_Bearing_Stress = (1.5*P)/(b*d);
printf("Actual_Bearing_Stress = %d N/mm^2 \n",Actual_Bearing_Stress)
if(Permissible_Bearing_Stress>Actual_Bearing_Stress)
disp("Hence Safe in Bearing Stress.")
elseif(Permissible_Bearing_Stress<Actual_Bearing_Stress)
disp("Hence not Safe in Bearing Stress.")
endif
endfunction