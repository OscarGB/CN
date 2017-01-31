clear all
clc

%Nos encontramos ante una serie de Taylor 
% e^x = 1 + x + x^2 / 2! + x^3 / 3! + ...
y = 0;
for k = 0:13 %Al hacer 13 iteraciones, el numero obtenido mediante la expresión 
             %tiene la misma precisión que el obtenido mediante el exponencial
    y = y + (0.5)^k / factorial(k)
end

format long g
y %resultado obtenido mediante el bucle
exp(0.5) %resultado obtenido mediante e^0.5