% Implementamos el método de Gauss LU

function [L,U,E] = gaussLU(A)

    error = 1e-6;
    
    [n,m] = size(A);
    if n ~= m %Comprobamos que sea cuadrada
        return;
    end
    
    U = A; %Guardamos A en U (ver apuntes)
    L = eye(size(A)); %L sería la identidad para tener unos en la diagonal(ver apuntes)
    
    for k=1:(n-1)
        if U(k,k) == 0
            error('El elemento diagonal %d se ha anulado', k)
        end
        for i=(k+1):n
            L(i,k) = ((U(i,k)) / (U(k,k))); %Rellenamos L
            for j=k:n
                U(i,j) = U(i,j) - L(i,k) * U(k,j); %Rellenamos U
            end
            
        end
    end
    
    err = max(max(abs(A - L*U)));
    E = err;
    
%     P = L*U;
%     M = ones(size(A));
%     
%     for k=1:(n)
%         for i=1:(n)
%             if P(k,i) - A(k,i) <= error
%                 P(k,i) = 1;
%             else
%                 error('La matriz no es correcta')
%             end
%         end
%     end
%     
%     if P == M
%         fprintf('La matriz es correcta')
%     end
    
   % L * U %Podemos ver que no todos los resultados son iguales. Esto se debe a un error de aproximación
    %A - L*U
end