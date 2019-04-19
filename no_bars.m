function [No_of_Reinforced_Bars_x,No_of_Reinforced_Bars_y]=no_bars(Ast_x,Ast_y,Area_one_bar)
% To find out the number of bars
% Ast_x is the area of steel in mm^2 along the longer side of footing
% Ast_y is the area of steel in mm^2 along the shorter side of footing
% Area_one_bar is the area of one reinforced bar in mm^2
No_of_Reinforced_Bars_x = ceil(Ast_x/Area_one_bar);
No_of_Reinforced_Bars_y = ceil(Ast_y/Area_one_bar);
endfunction