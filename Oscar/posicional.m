% funcion cambio de base

function [a,y] = posicional(x,b) % a y y es el return, x y b es el input
    
    j = 1; % En matlab los vectores empiezan en 1
    
    a(j) = mod(x,b);
    r = floor(x/b);
    
    while r > 0
       
        j = j + 1;
        a(j) = mod(r,b);
        r = floor(r/b);        
        
    end
    
    l = length(a);
    y = 0;
    for k=1:l
        
        y = y + a(k)*b^(k-1);
    
    end
    
    
end