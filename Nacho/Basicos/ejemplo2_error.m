clear all; close all; clc;

f = @(x) (exp(x) - exp(-x)) ./ (2*x);
%fplot(f, [-1,1])

for i = 2:8 %Así obtenemos las gráficas para valores cada vez más cercanos
            % a 0
    figure
    b = 10^-i;
    a = -b;
    d = (b-a)/1e4;

    c = a:d:b;

    plot(c,f(c))
    
    axis tight
    
end
