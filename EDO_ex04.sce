function ydot=sistema(t,y)
    ydot=zeros(2,1);
    m=1;
    p=5;
    k=1400;
    ydot(1)=y(2);
    ydot(2)=(-k*y(1)-p*y(2))/m;
endfunction
// Parâmetros do sistema
m=1;
p=5;
k=1400;

yo=0.02;
vo=0;
// Condições iniciais
ci=[yo;vo];

t=0:0.001:2.5;
to=0;
y1=ode(ci,to,t,sistema);
plot(t,y1'(:,1),'r','lineWidth',2)
xgrid(5)

// Roots given a real polynomial
pol = [m p k]
r=roots(pol)

alpha=-2.5;
beta=37.332961;
c1=yo;
c2=(vo-alpha*yo)/beta;
yh=exp(alpha*t).*(c1*cos(beta*t)+c2*sin(beta*t));
plot(t,yh,'b','lineWidth',2)

