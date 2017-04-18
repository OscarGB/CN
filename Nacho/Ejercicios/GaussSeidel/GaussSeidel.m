% Gauss-Seidel

function x1 = GaussSeidel(A,b)

    [tam, n] = size(A);
    
    if n ~= size(b)
        error('Dimensions must agree')
    end
    d = diag(A);
    
    v = d == 0;
    if sum(v) > 0
        error('Elementos nulos en la diagonal')
    end
    
    x1 = ones(n, 1);
    x = x1;
    
    E = 1e-6;
    
    while abs(A * x1 - b) > E
        
        x = x1;
       
        x1(1) = (b(1) - A(1,2:n) * x(2:n)) / A(1,1);
        
        for i=2:n-1
            x1(i) = (b(i) - A(i, 1:i-1) * x(1:i-1) - A(i, i+1:n) * x(i+1: n)) / A(i,i);
        end
        
        x1(n) = (b(n) - A(n, 1:n-1) * x(1:n-1)) / A(n,n);
        
    end

end