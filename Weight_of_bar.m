function [Weight_of_bar_per_meter,Total_weight_of_bars]=Weight_of_bar(dia,Total_length_of_bars)
% To compute the weight of steel per meter length of bar
% To compute the total weight of reinforced bars
% dia is the diameter of the reinforced bars in mm
% Total_length_of_bars is the total length of reinforced bars used in footing
Weight_of_bar_per_meter = (dia*dia)/162;
printf("Weight_of_bar_per_meter = %d kg \n",Weight_of_bar_per_meter)
Total_weight_of_bars = Weight_of_bar_per_meter*Total_length_of_bars;
printf("Total_weight_of_bars = %d kg \n",Total_weight_of_bars)   
endfunction