function [ P, L, U ] = gaussfun( A )
% reducción LU de una matriz

[n, m] = size(A);

% errores = 1e-2;

if(n ~= m) %Comprobar que sea cuadrada
    error('La matriz introducida no es cuadrada');
end

U = A;
P = eye(n); %Primera permutación (identidad)
L = eye(n); %Identidad matricial de tamaño n 
for k = 1:(n-1)
    [m, l] = max(abs(U(k:n, k)));
    iest = l + k - 1;
    if iest ~= k
        aux = U(k, k:n);
        U(k, k:n) = U(iest, k:n);
        U(iest, k:n) = aux;
        aux = P(k,:);
        P(k,:) = P(iest,:);
        P(iest,:) = aux;
        aux = L(k, 1:k-1);
        L(k, 1:k-1) = L(iest, 1:k-1);
        L(iest, 1:k-1) = aux;
    end
    if(U(k,k) == 0)
        error('Elelemento diagonal %d se ha anulado', k)
    end
    for i = (k+1):n
        L(i,k) = U(i,k)/U(k,k);
        for j = k:n
           U(i,j) = U(i,j) - (L(i,k)*U(k,j));
        end
    end
end
R = L*U;
R = abs(R-A);
E = max(max(R));

% if(E > errores)
%     error('La matriz LU no es correcta\n')
% end
% 
% fprintf('La matriz es correcta\n')


end
