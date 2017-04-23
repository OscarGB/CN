% Método de Jacobi

function x = Jacobisolve(A,b)

    [tam, n] = size(A);
    
    if size(b) ~= n
        error('Distinto tamaño')
    end
    
    d = diag(A);
    x = ones(n,1);
    
    v = 1 ./ d;
    
    x = diag(v) * ((diag(d) - A) * x + b);
    
    for j = 1:tam
    
        if abs(A(j,j)) <= sum(abs(A(j, 1:(j-1)))) + sum(abs(A(j, (j+1):n)))
            error('A no es dominante estricta')
        end      
    
    end
    
    E = 1e-6;

    while abs((A * x) - b) > E
        
        x = diag(v) * ((diag(d) - A) * x + b);
        
    end
        

end