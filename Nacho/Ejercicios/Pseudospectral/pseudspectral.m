% Escribir funcion que:
% 1. Genere un vector b aleatorio 
% 2. Implemente la iteración pseudospectral
% 3. Compruebe que Tuk = (lambda)1 * uk(encontrar el lambda correspondiente)

% Es decir, desde la iteración encontramos un vector uk, de modo que va a
% ser un autovector de T, por lo que podremos calcular el autovalor lambda
% Analizar el error que se obtiene de T*uk = lambda * uk, donde lambda es
% el autovalor asociado al autovector uk

function pseudspectral(A, err)

    T = A' * A;
    [l, a] = size(T);
    b = randn(l, 1);
    
    uk = b;
    uk1 = (T * uk) / norm(T*uk);

    while (norm(uk - uk1) >= err)
        
        uk = uk1;
        uk1 = (T * uk) / norm(T*uk);
        

    end
    
    lamb = norm(T*uk) / norm(uk);
    
    x = lamb * uk;
    
    error = norm(T*uk - x);
    
    uk
    error
    lamb

end

%%%%%%%%%%%% PROFESOR %%%%%%%%%%%%%%

% function [u,lambda,E,k] = pseudspectral(A,er,nit)
% 
% % [u,lambda,E,k] = pseudspectral(A) intenta calcular el maximo autovalor
% % lambda y el autovector asociado u de la matriz T = A' * A con un metodo
% % iterativo. El error E mide la distancia entre T*u y lambda*u, y k
% % devuelve el numero de iteraciones.
% 
%     T = A'*A;
%     n = size(T,1);
% 
%     b = randn(n,1);
%     
%     u = T*b / norm(T*b);
%     E = norm(u-b);
%     k = 1;
%     
%     while (E > er) && (k <= nit)
%         k = k+1;
%         v = u;
%         u = T*u / norm(T*u);
%         E = norm(v-u);
%     end
%     
%     lambda = norm(T*u) / norm(u);
%     
%     E = norm(T*u - lambda*u);
%     
% end