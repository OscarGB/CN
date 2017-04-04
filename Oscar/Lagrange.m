function p = Lagrange(x, v, y)

    n = length(v);
    m = length(y);
    
    sizex = length(x);
    if(sizex <= 0)
        error('El array de puntos a comprobar está vacío')
    end
    
    if(n ~= m)
        error('Los vectores tienen tamaños diferentes')
    end
    if(n < 0)
        error('Los vectores están vacíos')
    end
    p = zeros(1,sizex);
    for a = 1:sizex
        L = caracteristicos(x(a), v);
        n = length(L);
        sum = 0;
        for i = 1:n
            sum = sum + (y(i)*L(i));
        end
        p(a) = sum;
    end
    
    return
end