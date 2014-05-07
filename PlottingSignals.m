function [ ] = PlottingTenzors( b, sxx, sxy )
set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman');

XL='��������� ����, ��';
YL='��������������������, �';

plot(b,sxx,'LineWidth',2)

BX=get(gca,'XTick');
BY=get(gca,'YTick');


title('��������������������') 
xlabel(XL) 
ylabel(YL) 


XA=get(gca,'XTickLabel');%

for i=1:size(XA,1)
    z=strfind(XA(i,:),'.');
    XA(i,z)=',';
end

set(gca,'XTickLabel',XA);

YA=get(gca,'YTickLabel');%

for i=1:size(YA,1)
    z=strfind(YA(i,:),'.');
    YA(i,z)=',';
end   

set(gca,'YTickLabel',YA);
saveas(gcf,strcat(filename,'grarph_Us.eps'),'eps');
saveas(gcf,strcat(filename,'grarph_Us.png'),'png');

figure;
plot(b,sxy,'LineWidth',2)
title('������ �����') 
YL='���������� ����������, �';
BX=get(gca,'XTick');
BY=get(gca,'YTick');

xlabel(XL) 
ylabel(YL) 


XA=get(gca,'XTickLabel');%

for i=1:size(XA,1)
    z=strfind(XA(i,:),'.');
    XA(i,z)=',';
end

set(gca,'XTickLabel',XA);

YA=get(gca,'YTickLabel');%

for i=1:size(YA,1)
    z=strfind(YA(i,:),'.');
    YA(i,z)=',';
end   

set(gca,'YTickLabel',YA);

saveas(gcf,strcat(filename,'grarph_Uy.eps'),'eps');
saveas(gcf,strcat(filename,'grarph_Uy.png'),'png');


end

