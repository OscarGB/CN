%Script para la interpolación
% function p = Interpolacion(N, a, b, x, f)
% 
%     v = (a::b);
% 
%     for i=1:length(v)
%         %v(i) = a + ((i - 1)/(N)) * b;
%         y(i) = f(v(i));
%     end
% 
%     p = Lagrange(x, v, y);
% end

function p = Interpolacion(N, a, b, x, f)

    for i = 1:N
        v(i) = a + ((i-1) / N) * b;
        y(i) = f(v(i));
    end
    
    for a = 1:length(x)
    
        p(a) = Lagrange(x(a), v, y);
    
    end
    
    plot(x,p);

end