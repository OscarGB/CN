close all; clear all; clc;

F = @(x) (exp(x) - exp(-x))./(2*x);

for i = 2:8 
    figure
    a = 10^-i;
    b = -a;

    d = (a-b)/1e4;
    a = b:d:a;

    plot(a, F(a))
    axis tight
end
