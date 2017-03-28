function actual = Gelfand(A)
    [n,m] = size(A);
    
    if(n~=m)
        error('Matriz no cuadrada')
    end
    
    actual = 0;
    previa = actual + 1;
    i = 1;
    
    while abs(previa - actual) > 1d-6
       previa = actual;
       actual = norm(A^i)^(1/i);
    end
    
    if(max(abs(v)) - actual < 1d-6)
        fprintf('Funciona')
    end

end

