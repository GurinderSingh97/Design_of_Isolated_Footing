function [Total_length_of_bars] = Total_length_of_bars(L,B,Sc,No_of_Reinforced_Bars_x,No_of_Reinforced_Bars_y)
% To find the total length of reinforced bars used in footing
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% Sc is the side cover for footing in mm
% No_of_Reinforced_Bars_x is the number of reinforced bars along longer side of footing
% No_of_Reinforced_Bars_y is the number of reinforced bars along shorter side of footing
Total_length_of_bars = (No_of_Reinforced_Bars_x*((B-2*Sc)/1000))+(No_of_Reinforced_Bars_y*((L-2*Sc)/1000));
printf("Total_length_of_bars = %d m \n",Total_length_of_bars)  
endfunction