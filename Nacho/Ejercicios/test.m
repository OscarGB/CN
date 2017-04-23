clear all;
clc;

N = 20;

f = @(x) x.*sin(x);

a = -1;
b = 1;

pruebaNewton(f,a,b,N);