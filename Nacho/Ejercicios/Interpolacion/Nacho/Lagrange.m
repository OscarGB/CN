% v es el conjunto de puntos (x1...xn)
% y es el conjunto de puntos yi = f(xi)
% x es el punto donde calcular los polinomios

function p = Lagrange(x, v, y)
    
    if length(v) <= 0
        error('Points vector is empty')
    elseif length(y) ~= length(v)
        error('Vectors dimensions must agree')
    end
    
    L = Caracteristicos(x, v);
    
    p = sum(y .* L);
    
end