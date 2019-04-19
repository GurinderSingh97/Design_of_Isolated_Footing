function [No_of_cement_bag,Volume_of_sand,Volume_of_coarse_aggregate] = Quantities(Volume_of_concrete,Ratio_cement,Ratio_sand,Ratio_coarse_aggregate,Volume_of_one_bag_cement)
% To find out the quantities of cement, sand, coarse aggregate in m^3
% Volume_of_concrete in m^3
% Ratio_cement is the ratio of the cement
% Ratio_sand is the ratio of the sand
% Ratio_coarse_aggregate is the ratio of the coarse aggregate
% Volume_of_one_bag_cement is the volume of the one bag of cement in m^3
Volume_of_cement = (Ratio_cement*Volume_of_concrete)/(Ratio_cement+Ratio_sand+Ratio_coarse_aggregate);
printf("Volume_of_cement = %d m^3 \n",Volume_of_cement) 
No_of_cement_bag = (Volume_of_cement/Volume_of_one_bag_cement)
Volume_of_sand = (Ratio_sand*Volume_of_concrete)/(Ratio_cement+Ratio_sand+Ratio_coarse_aggregate);
printf("Volume_of_sand = %d m^3 \n",Volume_of_sand) 
Volume_of_coarse_aggregate = (Ratio_coarse_aggregate*Volume_of_concrete)/(Ratio_cement+Ratio_sand+Ratio_coarse_aggregate);
printf("Volume_of_coarse_aggregate = %d m^3 \n",Volume_of_coarse_aggregate) 
endfunction