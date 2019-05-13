function[Ast_x,Ast_y,No_of_Reinforced_Bars_x,No_of_Reinforced_Bars_y] =  Ast(L,B,fck,fy,Mux,Muy,eff_d_x,eff_d_y,dia,Sc)
% To find out the area of steel in mm^2 along both longer and shorter side of footing
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% fck is the characteristics strength of concrete in N/mm^2
% fy is the yield strength of steel in N/mm^2
% Mux is the moment at face of the column along the longer side of footing
% Muy is the moment at face of the column along the shorter side of footing
% In case of square footing Mux = Muy
% eff_d_x is the effective depth in mm along the longer side of footing
% eff_d_y is the effective depth in mm along the shorter side of footing
% Ast_x is the area of steel in mm^2 along the longer side of footing
% Ast_y is the area of steel in mm^2 along the shorter side of footing
% Sc is the side cover for footing in mm
disp("Design of Reinforcement:-")
if(L==B)
Eff_d = (eff_d_x+eff_d_y)/2;
Ast_x = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Mux)/(fck*B*Eff_d*Eff_d))))*B*Eff_d;
printf("Ast_x = %d mm^2 \n",Ast_x)
Ast_y = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Muy)/(fck*L*Eff_d*Eff_d))))*L*Eff_d;
printf("Ast_y = %d mm^2 \n",Ast_y)
dia_of_bar = dia;
printf("dia_of_bar = %d mm \n",dia_of_bar) 
Area_one_bar = (pi/4)*(dia*dia);
printf("Area_one_bar = %d mm^2 \n",Area_one_bar)            
No_of_Reinforced_Bars_x = ceil(Ast_x/Area_one_bar)
Spacing_x = round((L-2*Sc)/(No_of_Reinforced_Bars_x-1));
if(Spacing_x<300)
Spacing_x = Spacing_x;
printf("Spacing_x = %d mm \n",Spacing_x)
elseif(Spacing_x>300)
Spacing_x = 300;
printf("Spacing_x = %d mm \n",Spacing_x)
endif
No_of_Reinforced_Bars_y = ceil(Ast_y/Area_one_bar)
Spacing_y = round((B-2*Sc)/(No_of_Reinforced_Bars_y-1));
if(Spacing_y<300)
Spacing_y = Spacing_y;
printf("Spacing_y = %d mm \n",Spacing_y)
elseif(Spacing_y>300)
Spacing_y = 300;
printf("Spacing_y = %d mm \n",Spacing_y)
endif
elseif(L~=B)
% Area of steel for short bars
Width_of_each_end_band = 0.5*(L-B);
printf("Width_of_each_end_band = %d mm \n",Width_of_each_end_band)
Width_of_central_band = L-2*Width_of_each_end_band;
printf("Width_of_central_band = %d mm \n",Width_of_central_band)
disp("\n")
Ast_x = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Muy)/(fck*L*eff_d_y*eff_d_y))))*L*eff_d_y;
printf("Ast_x = %d mm^2 \n",Ast_x)
disp("This area of steel is provided in two distinct band width")
b=(L/B);
Ast_x2 = (2*Ast_x)/(b+1);
printf("Area_of_steel_in_central_band = %d mm^2 \n",Ast_x2)
dia_of_bar = dia;
printf("dia_of_bar = %d mm \n",dia_of_bar)
Area_one_bar = (pi/4)*(dia*dia);
printf("Area_one_bar = %d mm^2 \n",Area_one_bar)
No_of_bars_in_central_band = ceil(Ast_x2/Area_one_bar)
Remaining_area_in_each_end_band = Ast_x-Ast_x2;
printf("Remaining_area_in_each_end_band = %d mm^2 \n",Remaining_area_in_each_end_band)
No_of_bars_in_each_band = (Remaining_area_in_each_end_band/Area_one_bar);
if(No_of_bars_in_each_band<3)
No_of_bars_in_each_band=3
elseif(No_of_bars_in_each_band>3)
No_of_bars_in_each_band=No_of_bars_in_each_band
endif
No_of_Reinforced_Bars_x=No_of_bars_in_central_band+(2*No_of_bars_in_each_band)
disp("\n")
% Area of steel for long bars
Ast_y = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Mux)/(fck*B*eff_d_x*eff_d_x))))*B*eff_d_x;
printf("Ast_y = %d mm^2 \n",Ast_y)
dia_of_bar = dia;
printf("dia_of_bar = %d mm \n",dia_of_bar) 
Area_one_bar = (pi/4)*(dia*dia);
printf("Area_one_bar = %d mm^2 \n",Area_one_bar)             
No_of_Reinforced_Bars_y = ceil(Ast_y/Area_one_bar)
endif
endfunction