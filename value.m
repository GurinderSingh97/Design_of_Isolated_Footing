function value(P,Sw,Sp,fck,fy)
load input.mat  
Load_on_column = P;
printf("Load_on_column = %d KN \n",Load_on_column)
Assume_self_weight_of_footing = Sw;
printf("Assume_self_weight_of_footing = %d %% \n",Assume_self_weight_of_footing)
Soil_pressure = Sp;
printf("Soil_pressure = %d KN/m^2 \n",Soil_pressure)
Characteristics_Strength_of_Concrete = fck;
printf("Characteristics_Strength_of_Concrete = %d N/mm^2 \n",Characteristics_Strength_of_Concrete)
Yield_Strength_of_steel = fy;
printf("Yield_Strength_of_steel = %d N/mm^2 \n",Yield_Strength_of_steel)
disp("\n")
endfunction