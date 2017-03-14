% Escribir una función que:
% 1) Genere un vector b aleatorio
% 2) Implemente la interacion (de la pizarra)
% 3) Compruebe que T_U_K = lamdba_U_K, encontrando lambda.
% donde T es A^t*A
% 

% function pseudospectral(A, ERROR, max)
%     T = (A')*A;
%     s = size(T);
%     b = randn(s(1),1);
%     U = b;
%     avs = eig(T);
%     sort(avs);
%     i = 0;
%     
%     while(i < max)
%         i = i+1;
%         U = (T*U)/norm(T*U);
%     end
%     
%     lambda = norm(T*U)/norm(U);
%     e = (T*U) - (lambda*U);
%     if (e) < ERROR 
%        U
%        lambda
%        e
%     end
%     
% end

%%%%%%%%%%%PROFESOR%%%%%%%%%%%%%

% function [u, lambda, E, k] = pseudospectral(A, er, nit)
%     T = A'*A;
%     n = size(T,1);
%     
%     b = randn(n,1);
%     
%     u = T*b/norm(T*b);
%     E = norm(u-b);
%     k = 1;
%     while (E > er) && (k <= nit)
%        k = k+1;
%        v = u;
%        u = T*v/norm(T*v);
%        E = norm(u-v);
%     end
%     
%     lambda = norm(T*u)/norm(u);
%     
%     E = norm(T*u - lambda*u);
% end

%%%%%%%%%%%PROFESOR2%%%%%%%%%%%%%

function [u, lambda, E, k] = pseudospectral(A, er, nit)
    T = A'*A;
    n = size(T,1);
    
    b = randn(n,1);
    
    u = T*b/norm(T*b);
    lambda = norm(T*u)/norm(u);
    E = norm(u-b);
    k = 1;
    while (E > er) && (k <= nit)
       k = k+1;
       v = u;
       u = T*v/norm(T*v);
       lambda = norm(T*u)/norm(u);
       E = norm(T*u - lambda*u);
    end
    
    lambda = norm(T*u)/norm(u);
    
    E = norm(T*u - lambda*u);
end