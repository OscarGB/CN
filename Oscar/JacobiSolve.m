%% Resolución del Algoritmo de Jacobi para sistemas de ecuaciones
% Autor: Óscar Gómez

function x = JacobiSolve(A,b, tol)
    [n,m] = size(A);
    
    if(size(b) ~= m)
        error('Distinto tamaño')
    end
    
    if(nargin == 2)
        tol = 1d-10;
    end
    
    if(tol < 1d-10)
        tol = 1d-10;
    end
    
    v = diag(A);
    
    
    D = diag(v);
    J = A-D;
    v = 1./v;
    D = diag(v);
    x = ones(m,1);
    xk = ones(m,1);
    
    for i = 1:n
       if sum(sum(abs(J')) < abs(A(i,i))) < n
           error('La matriz no cumple los requisitos')           
       end
    end
    
    for i = 1:n
       suma = 0;    
       for j = 1:n
           if j ~= i
              suma = suma + A(i,j)*x(j) ;
           end           
       end
       xk(i) = D(i,i)*(b(i) - suma); 
    end
    x = xk;
    
    while max(abs(A*x - b)) > tol
       for i = 1:n
           suma = 0;    
           for j = 1:n
               if j ~= i
                  suma = suma + A(i,j)*x(j) ;
               end           
           end
           xk(i) = D(i,i)*(b(i) - suma); 
       end
       x = xk;
    end

    err = A*x-b
    
end