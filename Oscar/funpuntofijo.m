function [x, E, N] = funpuntofijo(f, x, Nmax, t)
% función punto fijo
    N = 0;
    E = 1 + t;

    while(N < Nmax) && (E > t)
        E = x;
        N = N +1;
        x = f(x);
        E = abs(E - x);   
    end

    return;

end

