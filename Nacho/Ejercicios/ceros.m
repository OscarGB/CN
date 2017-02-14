%Ejercicio 2: Encontrar todos los puntos fijos en el intervalo [-4,2]
%de la funcion f(x) = 0.1*x^5 + 0.3*x^4 + - 0.2 * x^3 + 0.3 * x^2 + x

%Mi funcion va a dividir el espacio en intervalos de tamaño "intervalo" y
%va a aplicar bisec a cada uno de los intervalos obtenidos. No es la forma
%más eficaz, pero no se me ocurre otra. Nótese que a partir de un t = 1e-15
%entra en un bucle infinito (o al menos de muy larga duración).

function ceros(f, a, b, t, intervalo)
    
    i = a;
    fin = a + intervalo;
    
    while fin < b
        if f(i) * f(fin) <= 0
            bisec(f, i, fin, t)
        end
        i = fin + eps;
        fin = fin + intervalo;
    end
    
    if f(i) * f(b) <= 0
        bisec(f, i, b, t)
    end
    

end
        
        
    