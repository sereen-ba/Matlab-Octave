load ('assign3_data.mat')
clc;
[r,c]=size(C);

e1=zeros(6,1);
e1(1,1)=1;
e2=zeros(6,1);
e2(2,1)=1;
e3=zeros(6,1);
e3(3,1)=1;
e4=zeros(6,1);
e4(4,1)=1;
e5=zeros(6,1);
e5(5,1)=1;
e6=zeros(6,1);
e6(6,1)=1;
L=eye(90);

for a=1:1:90
    for b=1:1:90
       
    if (a>b)
        L(a,b)=1;
    end
    end
end
LCe1=L*C*e1;
LCe2=L*C*e2;
LCe3=L*C*e3;
LCe4=L*C*e4;
LCe5=L*C*e5;
LCe6=L*C*e6;
%%a)
subplot(1,3,1);
plot(date,LCe1,'r.',date,LCe2,'g-',date,LCe3,'bo',date,LCe4,'k--',date,LCe5,'y*',date,LCe6,'rx')
title('COVID-19 cases across the world [effected]')
xlabel('Date')
ylabel('commulative number of COVID-19 cases reported')
legend('US',' Italy',' Spain','China', 'KSA','Rest of World')
grid

%%b)
subplot(1,3,2);
LDe1=L*(D*e1);
LDe2=L*(D*e2);
LDe3=L*(D*e3);
LDe4=L*(D*e4);
LDe5=L*(D*e5);
LDe6=L*(D*e6);
plot(date,LDe1,'r.',date,LDe2,'g-',date,LDe3,'bo',date,LDe4,'k--',date,LDe5,'y*',date,LDe6,'rx')
title('COVID-19 victims across the world [deaths]')
xlabel('Date')
ylabel('commulative number of COVID-19 victims')
legend('US',' Italy',' Spain','China', 'KSA','Rest of World')
grid
%c)
i=[1 1 1 1 1 1]';
LC1= L*(C*i);
LD1=L*(D*i);
subplot(1,3,3);
plot(date,LC1,'r*',date,LD1,'m^')
title('COVID-19 cases  across the world')
xlabel('Date')
ylabel('commulative number of COVID-19 cases reported')
legend('effected','death')
grid





