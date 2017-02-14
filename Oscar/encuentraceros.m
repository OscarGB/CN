% Ejercicio 2: encontrar todos los ceros de 0.1x^5 +0.3x^4-0.2x^3+0.3x^2+x
% en el intervalo [-4,2]

function encuentraceros(f, a, b, tol1, tol2)
    m1 = a;
    m2 = a + tol2;
    
    while m2 <= b
        if f(m1)*f(m2) <= 0
            biseccion(f, m1, m2, tol1)
        end
        m1 = m2 + eps;
        m2 = m2 + tol2;
    end
end