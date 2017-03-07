function x = resuelveSistema(A,b)
%funcion para resolver sistemas mediante factorización LU

[n, m] = size(A);


if(n ~= m) %Comprobar que sea cuadrada
    error('La matriz introducida no es cuadrada');
end

[P,L,U] = gaussfun(A);
best = P*b;
x = [1:n]';
z = [1:n]';
z(1) = best(1);
for i = 2:n
    suma = 0;
    for j = 1:i-1
        suma = suma + (L(i,j)*z(j));
    end
    z(i) = best(i) - suma;
end

x(n) = z(n)/U(n,n);

for k = 2 : n
   i = 1 + n - k;
   suma = 0;
   for j = i+1:n
       suma = suma + (U(i,j)*x(j));
   end
   x(i) = (z(i) - suma)/U(i,i);
end 

E = max(abs(A*x-b))

return
end
