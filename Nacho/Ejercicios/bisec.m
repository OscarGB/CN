%Ejercicio 1: Implementar la funcion bisec para hallar un punto medio
%(Bolzano)

function c = bisec(f, a, b, t)

%nit = 0;
%r = 10;


if f(a) * f(b) > 0
    error('La funcion no tiene punto medio');
elseif f(a) == 0
    c = a;
    %r = f(c);
    return;
elseif f(b) == 0
    c = b;
    %r = f(c);
    return;
end

while abs(b - a) > t
    %nit = nit + 1;
    
    c = (a + b) / 2;
    if f(c) == 0
        %r = f(c);
        return;
    elseif f(a) * f(c) < 0
        b = c;
        %r = f(c);
    else
        a = c;
        %r = f(c);
    end
    
    
end