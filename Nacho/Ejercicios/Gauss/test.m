clc; clear all; close all

N = 100;
m = 3;
S = 20; % Número de experimentos a realizar
t = zeros(N,1); % Esto lo hacemos para evitar que t se vaya realocando 
                % a cada llamada a t(n)

for n = m:N
    
    for j = 1:S % Esto va a repetir la medida S veces
    
        A = randn(n);

        tic
        [L,U,E] = gaussLU(A);
        t(n) = t(n) + toc/S; 
    
    end
    
end

plot(log(m+2:N), log(t(m+2:N))) % Metemos el m+2 porque en la primera ejecución 
                      % siempre se crea un pico, por lo que no es fiables
grid on
hold on
fplot(@(x) 3 * (x-4.25) - 5,[2,4.55], 'r')
% Queremos encontrar una estimación del tiempo de ejecución de LU en
% función del tamaño de A (n)
% Para ello queremos generar m matrices por cada tamaño n, usando rand,
% para realizar un promedio de tiempos de ejecución

