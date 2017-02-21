% Algoritmo del punto fijo para g(x) = cos(x)
% Información: 
% -Punto inicial Xo
% -Condición de salida: dos puntos seguidos estén "suficientemente cerca"
% -Condición de salida: g(Xk) muy cerca de Xk

%Mi método, con función
function puntoFijo(f, x0, prec, ItMax)
    xk = x0;
    N = 0;
    E = 1;
    
    while (N < ItMax) && (E > prec)
        xk = f(xk);
        E = abs(f(xk) - xk);
        N = N + 1;
    end
    
    xk
    N
    E
end


% Método del profesor (es lo mismo, pero sin declarar función)
% clear all; close all; clc;
% 
% format long g;
% 
% f = @(x) cos(x);
% 
% x0 = 1;
% 
% prec = 1e-6;
% ItMax = 100;
% 
% N = 0;
% E = 1;
% 
% xk = f(x0);
% 
% E = abs(xk - f(xk));
% while (N < ItMax) && (E > prec)
%     
%     E = abs(xk - f(xk));
%     xk = f(xk);
%     N = N + 1;
%     
% end
% 
% xk
% E
% N