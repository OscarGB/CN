% Método de Newton
% Punto de origen
% Condiciones de salida:
% -abs(x2 - x1) < prec
% -abs(f(xk)) < prec

function [c, Num, Err1, Err2] = Newton(f, df, x0, prec, Nmax)
    xk = x0;
    x1 = x0;
    E1 = 1;
    E2 = 2;
    N = 0;
    
    while (N < Nmax) && ( E1 > prec && E2 > prec)
        xk = x1;
        x1 = xk - f(xk)/df(xk);
        
        E1 = abs(x1 - xk);
        E2 = abs(f(x1));
        N = N + 1;
        
    end
    
    c = xk;
    Num = N;
    Err1 = E1;
    Err2 = E2;
    
    return
end

% Si usamos Newton con un punto inicial muy cercano al cero de la derivada,
% la iteración de Newton es muuuuucho más lenta