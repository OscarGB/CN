function resul = testInterpolacion(f, N,a,b, x0)

    close all;
    
    paso = (b-a)/N;
    
    v = (a:paso:b);
    
    %%y = zeros(1, length(v));
    for i=1:length(v)
       y(i) = f(v(i)); 
    end
    
    n = length(x0);
    if(n < 0)
        error('x0 está vacío')    
    end
    
    resul = Lagrange(x0, v, y);
    
    plot(v, y, 'r')
    hold on
    plot(x0, resul, 'b')
    
    return
    
end 
    