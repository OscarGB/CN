function [xk, E, N] = isaac(f, df, x0, t1, t2, Nmax)
% Metodo de Newton

    xk = x0;
    E = 1+t1;
    N = 0;

    while( abs(f(xk)) > t2 && abs(E) > t1 && N < Nmax)
        E = xk;
        N = N + 1;
        xk = xk - f(xk)/df(xk);
        E = xk - E;      
    end
    
    N
    E
    xk
    
    return;
end

