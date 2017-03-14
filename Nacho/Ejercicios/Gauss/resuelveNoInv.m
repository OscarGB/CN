
function [x, err] = resuelveNoInv(A,b)
    
    [P,L,U] = pivotingLU(A);
    
    n = size(b);
    
    Z = P*b;
    for i = 2:n
        
        Z(i) = Z(i) - L(i,1:i-1)*Z(1:i-1); %Transformamos el sumatorio en un producto escalar
        
    end
    
    x = Z./diag(U); %Multiplica punto a punto los elementos de z por la diagonal de U
    
    for i = (n-1):-1:1 %Asi podemos recorrer el bucle al revés
    
        x(i) = x(i) - (U(i,i+1:n)*x(i+1:n))/U(i,i);
    
    end
    
    err = max(abs(A*x - b));
    
    

end