%% función que devuelve los polinomios caracteristicos de Lagrange
function L = caracteristicos(x, xi)
    n = length(xi);
    if(n < 1)
        error('El array pasado a caracteristicos esta vacio')
    end
    L = zeros(1,n);
    for j=1:n
        mult = 1;
        for i=1:n
            if j~= i
                if(xi(j) == xi(i))
                    error('Hay dos términos en el vector que son iguales')
                end
                mult = mult * ((x - xi(i))/(xi(j)-xi(i)));
            end
        end
        L(j) = mult;
    end
    return;

end