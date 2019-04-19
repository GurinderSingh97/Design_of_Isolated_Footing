function[Ast_x,Ast_y] =  Ast(L,B,fck,fy,Mux,Muy,eff_d_x,eff_d_y)
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
Ast_x = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Mux)/(fck*B*eff_d_x*eff_d_x))))*B*eff_d_x;
printf("Ast_x = %d mm^2 \n",Ast_x)
Ast_y = 0.5*(fck/fy)*(1-sqrt(1-((4.6*Muy)/(fck*L*eff_d_y*eff_d_y))))*L*eff_d_y;
printf("Ast_y = %d mm^2 \n",Ast_y)
endfunction