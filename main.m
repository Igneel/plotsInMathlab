fNames={'1T_100_Us_Uy_ideal_vseZnachenia_-0,0423038330714528.txtnew',
'1T_100_Us_Uy_vseZnachenia_filtr_k_1.txtnew',
'1T_100_Us_Uy_vseZnachenia_filtr_k_5.txtnew',
'1T_100_Us_Uy_vseZnachenia_k_1_sko_p_xx0,251935363209471_sko_p_xy0,251935363209471.txtnew',
'1T_100_Us_Uy_vseZnachenia_k_5_sko_p_xx-0,574597418432667_sko_p_xy-0,574597418432667.txtnew',
'1T_150_Us_Uy_ideal_vseZnachenia_-0,696781326848263.txtnew',
'1T_150_Us_Uy_vseZnachenia_filtr_k_1.txtnew',
'1T_150_Us_Uy_vseZnachenia_filtr_k_5.txtnew',
'1T_150_Us_Uy_vseZnachenia_k_1_sko_p_xx-0,304015599441979_sko_p_xy-0,304015599441979.txtnew',
'1T_150_Us_Uy_vseZnachenia_k_5_sko_p_xx-0,304015599441979_sko_p_xy-0,304015599441979.txtnew',
'1T_300_Us_Uy_ideal_vseZnachenia_-1,05691656565502.txtnew',
'1T_300_Us_Uy_vseZnachenia_filtr_k_1.txtnew',
'1T_300_Us_Uy_vseZnachenia_filtr_k_5.txtnew',
'1T_300_Us_Uy_vseZnachenia_k_1_sko_p_xx85,3182608203277_sko_p_xy85,3182608203277.txtnew',
'1T_300_Us_Uy_vseZnachenia_k_5_sko_p_xx183,479470755514_sko_p_xy183,479470755514.txtnew',
'1T_80_Us_Uy_ideal_vseZnachenia_.txtnew',
'1T_80_Us_Uy_vseZnachenia_filtr_k_1.txtnew',
'1T_80_Us_Uy_vseZnachenia_filtr_k_5.txtnew',
'1T_80_Us_Uy_vseZnachenia_k_1_sko_p_xx-1,03738276992358_sko_p_xy-1,03738276992358.txtnew',
'1T_80_Us_Uy_vseZnachenia_k_5_sko_p_xx-1,03738276992358_sko_p_xy-1,03738276992358.txtnew'
}


for i=1:length(fNames) 

filename=char(fNames(i));

[B,Sxx,Sxy]=importfile(filename, 1, 161);
%set(gca,'YTickLabel',0:45);
plot(B,Sxx)

xlabel ('B, “Î')
ylabel ('Sxx, 1/(ŒÏ*Ï)')

saveas(gcf,strcat(filename,'grarph_sxx.eps'),'eps');
saveas(gcf,strcat(filename,'grarph_sxx.png'),'png');

plot(B,Sxy)

xlabel ('B, “Î')
ylabel ('Sxy, 1/(ŒÏ*Ï)')

saveas(gcf,strcat(filename,'grarph_sxy.eps'),'eps');
saveas(gcf,strcat(filename,'grarph_sxy.png'),'png');

end
