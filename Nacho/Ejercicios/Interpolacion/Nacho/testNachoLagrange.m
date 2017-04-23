
function testNachoLagrange(f, v, a, b)

    N = 1000; % Numero de puntos del polinomio interpolador
    
    a = min(a, min(v)); % Inicio del intervalo
    b = max(b, max(v));
    
    x = a:(b-a)/(N-1):b; % Puntos donde evaluamos Lagrange
    y = f(v); % Imagen por f de los puntos
    
    p = Lagrangepoli(x, v, y); %Polinomio interpolador
    
    figure
    plot(x, f(x)) %Plot de la funcion
    hold on
    plot(x, p, 'r') %Plot de la interpolacion
    
    for n=1:100
    
        v = a:(b-a)/(n-1):b;
        p = Lagrangepoli(x,v,f(v));
        E(n) = max(abs(f(x) - p')); %Guardamos los errores
        %En la grafica veremos que al aumentar los puntos, aumenta el
        %error. Esto se debe a que aumenta el grado del polinomio
        %interpolador y, como tal, la complejidad del cálculo y las
        %oscilaciones entre puntos
    
    end
    
    figure
    plot(E)

end