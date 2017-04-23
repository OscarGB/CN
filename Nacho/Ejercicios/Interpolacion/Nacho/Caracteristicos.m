function L = Caracteristicos(x, v)

    if length(v) <= 0
        error('Points vector is empty')
    end
    
    %L = zeros(length(v));
    
    for j=1:length(v)
        
        prod = 1;
    
        for i=1:length(v)
            
           if j == i
               continue;
           
           else
               prod = prod * ((x - v(i)) / (v(j) - v(i)));
           end
           
        end
        
        L(j) = prod;
        
    end
    
    
end