//Pendulo: solução numérica
y0=[0.5 0]';
t=0:0.1:10;
t0=0;

function ydot=pendulum_1(t,y)
    ydot=zeros(2,1);
    g=9.8;
    L=1;
    ydot(1)=y(2);
    ydot(2)=-g*y(1)/L;
endfunction

function ydot=pendulum_2(t,y)
    ydot=zeros(2,1);
    g=9.8;
    L=1;
    ydot(1)=y(2);
    ydot(2)=-g*sin(y(1))/L;
endfunction

y1=ode(y0,t0,t,pendulum_1);
y2=ode(y0,t0,t,pendulum_2);

t=[t' t' t' t'];
Y=[y1' y2'];
plot(t(:,1),Y(:,1),'r','lineWidth',2)
plot(t(:,3),Y(:,3),'b','lineWidth',2)
xgrid(5)


