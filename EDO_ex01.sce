//--Carga de um capacitor
//--Solução analitica
es=1;
R=1;
C=1;
v0=0;
t=0:0.1:10;

Vc=es+(v0-es)*exp(-t/(R*C))
//plot(t,Vc)
//xgrid(5)

//--Solução numerica
function ydot=f(t,y)
    ydot=es/(R*C)-y/(R*C);
endfunction

es=1;
R=1;
C=1;
y0=0;
t=0:0.1:10;
t0=0;
y=ode(y0,t0,t,f);
//plot(t,y)
//xgrid(5)

//Criando uma matriz para graficar ambas respostas e comparar
t=[t' t'];
Y=[Vc' y'];
plot(t,Y)
xgrid(5)

