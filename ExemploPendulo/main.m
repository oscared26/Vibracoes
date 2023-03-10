%clc;clear all;close all;
g=9.81;%constante da força gravitacional
b=0.5;% constante de arrastro do ar
L=1.5;% comprimento do pendulo
H=1;% altura

t=angle.Time;
theta=angle.Data;

k=length(t);

for i=1:k
    
    
    y=L*cos(theta(i));
    x=L*sin(theta(i));
    
    subplot(2,1,1)
    plot(x,y)
    hold on

    %==========Creates the geometry for one pendulum==========
    
    r=0.2;% radio da massa do pendulo (pode trocar)
    w=0.01; %espessura do fio do pendulo (pode trocar)
    len=y;
    
    plot([0 x],[0 -y])

 
    hold off
    
    grid
    axis equal
    axis([-5 5 -2 0])
    
     subplot(2,1,2)
     plot(t,theta,'b',t(i),theta(i),'ko','MarkerSize',10,'MarkerFaceColor','k')
     xlabel('Tempo (s)')
     ylabel('Amplitude (radianos)')
     grid
     
     
     
     axis([min(t) max(t) min(theta) max(theta)])
     
    %drawnow; 
    pause(0.0001) 
    
end
