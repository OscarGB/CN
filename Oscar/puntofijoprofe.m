%script punto fijo del profesor

clear all; close all; clc

f = @(x) cos(x);

figure(1)
fplot(f,[-3,3])
hold on
fplot(@(x) x, [-3,3], 'r')
grid on

t = 1e-6;
Nmax = 100;

x = 1;

N = 0;
E = 1;

while(N < Nmax) && (E > t)
    E = x;
    N = N +1;
    x = f(x);
    E = abs(E - x);   
end

x
E
N
