% Ejercicio 1: implementar la funcion biseccion

function [c, Nit, R] = biseccion(f, a, b, t, Nmax)
     Nit = 0;

    if nargin == 5
        if Nmax <= 0
            Nmax = 1000000;
        end
        if t <= 0
            BOOLE = @(a, b, c) abs(b-a) > (2^-50) * abs(c) && Nit < Nmax;
        else
            BOOLE = @(a, b, c) abs(b-a) > t && Nit < Nmax;
        end
    end
    if nargin == 4 
        if t <= 0
            BOOLE = @(a, b, c) abs(b-a) > (2^-50) * abs(c);
        else
            BOOLE = @(a, b, c) abs(b-a) > t;
        end
    end
    
    if nargin < 4
        BOOLE = @(a, b, c) abs(b-a) > (2^-50) * abs(c);
    end
   
    if f(a)*f(b) > 0
        error('Función no cambia de signo');
    end
    if f(a) == 0
        c = a;
        R = f(c);
        return;
    end
    if f(b) == 0
        c = b;
        R = f(c);
        return;
    end
    
    
    c = (a+b)/2;
    R = f(c);
    while BOOLE(a,b,c)
       Nit = Nit + 1;
       if f(c)== 0
           return;
       elseif f(a)*f(c) < 0
           b = c;
       else
           a = c;  
       end

       c = (a+b)/2;
       R = f(c);
    end
end
    