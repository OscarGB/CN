function testNachoChebychev(f, a, b)

    N = 10;

    v = zeros(N,1);
    for j=1:N
    
        v(j) = cos((2 * (j-1))*pi / (2*N)); %Sacamos los nodos de Chebychev en el intervalo [-1,1]
    
    end
    
    u = @(s) a + (s+1).*(b-a)/2; 
    v = u(v); %Trasaldamos los puntos a la recta real
    
    y = f(v); %Imagen por f de los nodos de Chebychev

    a = -5;
    b = 5;

    x = a:1e-3:b;
    p = Lagrangepoli(x,v,y); %Interpolamos en los puntos x
    
    figure
    plot(x, f(x)) %Imprimimos la función
    grid on
    hold on
    plot(v,y,'r.') %Marcamos los nodos de chebychev
   
    
    plot(x, p, 'r') %Imprimimos la interpolación
    
    for n=1:50
        for j=1:n
            v(j) = cos((2 * (j-1))*pi / (2*n)); %Sacamos los nodos de Chebychev en el intervalo [-1,1]
        end
        
        v = u(v);
        y = f(v);
        
        p = Lagrangepoli(x,v,y);
    
        E(n) = max(abs(f(x)-p'));
    
    end
    
    figure
    plot(E)
    

end