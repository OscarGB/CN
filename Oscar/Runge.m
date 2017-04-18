clear all; close all; clc;
f = @(x) 1./(1.+x.^2);

%nodos
a = 8;
ini = -5;
fin = 5;

%puntos del polinomio de lagrange
puntos = 1000;
inil = ini;
finl = fin;

v = (ini:(fin-ini)/(a-1):fin);
u = f(v);
fplot(f,[ini, fin],'b')
hold on

punl = (inil: (finl-inil)/(puntos-1):finl);
resul = Lagrange(punl, v, u);

plot(punl, resul, 'r.');

max = 0;

for i = 1:puntos
    res = abs(resul(i) - f(punl(i)));
    if(res > max)
        max = res;
    end
end

max
    
