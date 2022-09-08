//Pendulo: solução numérica
y0=[0.5 0]';
t=0:0.1:10;
tam=size(t);
t0=0;

function ydot=pendulum(t,y)
    ydot=zeros(2,1);
    g=9.8;
    L=1;
    ydot(1)=y(2);
    ydot(2)=-g*y(1)/L;
endfunction


y=ode(y0,t0,t,pendulum);
plot(t,y(1,:),'lineWidth',2)

