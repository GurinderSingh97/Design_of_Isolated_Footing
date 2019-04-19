function [Mux,Muy] = Moment(Net_upward_pressure,L,B,b,d,fy)
% To find out the moment at the face of the column
% Net upward presure in N/mm^2
% B is the side of footing in mm
% b is the side of column in mm
% fy is the yield strength of steel in N/mm^2
% M is the moment at the face of the column
% Mu is the factored moment
xu_max_by_d = (700)/(1100+0.87*fy);
Mx = Net_upward_pressure*(B/8)*(L-d)*(L-d); 
Mux = 1.5*Mx;
printf("Mux = %d Nmm \n",Mux)
My = Net_upward_pressure*(L/8)*(B-b)*(B-b); 
Muy = 1.5*My;
printf("Muy = %d Nmm \n",Muy)
endfunction