function [ L, U, E ] = gausslu( A )
% reducción LU de una matriz

[n, m] = size(A);

% errores = 1e-2;

if(n ~= m) %Comprobar que sea cuadrada
    error('La matriz introducida no es cuadrada');
end

U = A;
L = eye(n); %identidad matricial de tamaño n 
for k = 1:(n-1)
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

