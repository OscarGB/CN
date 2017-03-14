% Método de factorización LU con pivoting

function [P,L,U] = pivotingLU(A)
    
    [n,m] = size(A);
    if n ~= m %Comprobamos que sea cuadrada
        return;
    end
    
    U = A;
    P = eye(size(A));
    L = eye(size(A));
    
    for k = 1:(n-1)
       
        [m,l] = max(abs(U(k:n, k)));
        is = l + k - 1;
        
        %pivoting
        swap(U(is,k:n), U(k,k:n));
        swap(L(k,1:(k-1)), L(is, 1:(k-1)));
        swap(P(k,:), P(is,:));
        
        if U(k,k) == 0
            error('El elemento diagonal %d se ha anulado', k)
        end
        
        for i = (k+1) : n
        
            L(i,k) = U(i,k) / U(k,k);
            
            for j = k:n
                
               U(i,j) = U(i,j) - L(i,k) * U(k,j) ;
                
            end
            
        end
        
        
    end
    

end