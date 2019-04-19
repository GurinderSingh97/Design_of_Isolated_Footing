function [d_moment,D_moment,Mux,Muy] = d_moment(Net_upward_pressure,L,B,d,b,fck,fy,Cc)
% To find the effective depth of footing on the basis of bending compression
% Net upward pressure in N/mm^2
% fck is the characteristics strength of concrete in N/mm^2
% fy is the yield strength of steel in N/mm^2
% L is the longer side of footing in mm
% B is the shorter side of fooring in mm
% In case of square footing L = B
% b is the shorter side of column in mm
% d is the longer side of column in mm
% In case of square column b = d
% Cc is the clear cover for footing in mm
% d_moment is the effective depth of footing in mm
% D_moment is the overall depth of footing in mm
% Mux is the moment at face of the column along the longer side of footing
% Muy is the moment at face of the column along the shorter side of footing
% In case of square footing Mux = Muy
xu_max_by_d = (700)/(1100+0.87*fy);
Ru = (0.36*fck*xu_max_by_d*(1-0.416*xu_max_by_d));
Mx = Net_upward_pressure*(B/8)*(L-d)*(L-d); 
Mux = Mx;
My = Net_upward_pressure*(L/8)*(B-b)*(B-b); 
Muy = My;
if(Mux>=Muy)
d_moment = ceil((sqrt(Mux/(Ru*B)))/10)*10;
printf("d_moment = %d mm \n",d_moment)
D_moment = d_moment+Cc;
printf("D_moment = %d mm \n",D_moment)
elseif(Mux<=Muy)
d_moment = ceil((sqrt(Muy/(Ru*L)))/10)*10;
printf("d_moment = %d mm \n",d_moment)
D_moment = d_moment+Cc;
printf("D_moment = %d mm \n",D_moment)
endif
endfunction