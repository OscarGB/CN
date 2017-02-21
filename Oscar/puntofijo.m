% Script algoritmo punto fijo de una función

clc; clear all; close all;

f = @(x) cos(x);

Xk = 0.3;
Xk1 = f(Xk);

while(abs(Xk1-Xk) > 1e-50)
    Xk = Xk1;
    Xk1 = f(Xk);    
end

Xk1

