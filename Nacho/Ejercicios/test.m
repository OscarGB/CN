clear all;
clc;

N = 10;

f = @(x) x.^2;

a = 0;
b = 10;

pruebaNewton(f,a,b,N);