%% Resolución del Algoritmo de Gauss-Seidel para sistemas de ecuaciones
% Autor: Óscar Gómez

function [x, Nit] = GaussSeidel(A, b, tol, Maxit)
    [n,m] = size(A);
    x = ones(m,1);
    xk = x;
    Nit = 0;
    
    if(m ~= size(b))
        error('Distinto tamaño')
    end
    
    if(nargin == 2)
        tol = 1d-10;
        Maxit = 1000;
    end
    
    if(tol < 1d-10)
        tol = 1d-10;
    end
    
    if(Maxit < 1)
        Maxit = 1000;
    end
   
    
    J = A-diag(diag(A));
    
    for i = 1:n
       if sum(sum(abs(J')) < abs(A(i,i))) < n
           error('La matriz no cumple los requisitos')           
       end
    end
    
    for i = 1:n
%        suma1 = 0;
%        suma2 = 0;
%        for j = 1:i-1
%            suma1 = suma1 + A(i,j)*xk(j);
%        end
%        for j = i+1:n
%            suma2 = suma2 + A(i,j)*x(j); 
%        end
%        xk(i) = (b(i)-suma1-suma2)/A(i,i);
       xk(i) = (b(i) - A(i, 1:i-1)*xk(1:i-1) - A(i, i+1:n)*x(i+1:n) )/(A(i,i));
    end
    % Esto no haría falta porque como operamos sobre aspectos
    % modificados podriamos trabajar siempre sobre x
    x = xk;
    
    Nit = Nit + 1;
    
    while max(abs(A*x - b)) > tol && Nit < Maxit
        for i = 1:n
%            suma1 = 0;
%            suma2 = 0;
%            for j = 1:i-1
%                suma1 = suma1 + A(i,j)*xk(j);
%            end
%            for j = i+1:n
%                suma2 = suma2 + A(i,j)*x(j); 
%            end
%            xk(i) = (b(i)-suma1-suma2)/A(i,i);
           xk(i) = (b(i) - A(i, 1:i-1)*xk(1:i-1) - A(i, i+1:n)*x(i+1:n) )/(A(i,i));
        end
        % Esto no haría falta porque como operamos sobre aspectos
        % modificados podriamos trabajar siempre sobre x
        x = xk;
        Nit = Nit + 1;
    end
    err = A*x-b
end

