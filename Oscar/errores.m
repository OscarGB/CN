% Scripts para ver errores

clear all; close all; clc;

F = @(x) (1-cos(x))./x.^2;

% fplot(F, [-1*1e-6,1*1e-6])

b = 1.5*1e-7
a = -b

d = (b-a)/1e6;

x = a:d:b;

plot(x,F(x))

% pause
% 
% % Ha llegado al error de la maquina
% 
% x = 2*1e-8;
% 
% c = cos(x);
% 
% num = 1-c
% eps
% f = num/x^2
% 
% % Ha llegado a la mitad del error de la maquina
% 
% x = 1.82*1e-8;
% 
% c = cos(x);
% 
% num = 1-c
% eps
% f = num/x^2
% 
% % Ha llegado a cero
% 
% x = 1*1e-8;
% 
% c = cos(x);
% 
% num = 1-c
% eps
% f = num/x^2