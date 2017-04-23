function resul = GaussSeidel(A, b, ini, error)
  [n,m] = size(A)
  if(n~=m)
    error("la matriz tiene que ser cuadrada");
  end
  
  [s,x] = size(b);
  if(n ~= s)
    error("b tiene que tener el mismo tamaño que A");
  end
  [s,x] = size(ini);
  if(n ~= s)
    error("ini tiene que tener el mismo tamaño que A");
  end
  
  resul = ini;
  E = (max(abs(A*resul - b)));

  while E > error
    for i = 1:n
      suma = 0;
      for j = 1:n
        if i ~= j
          suma = suma + A(i,j) * resul(j);
        end
      end
      resul(i) = (b(i) - suma) /(A(i,i));
    end
    E = (max(abs(A*resul - b)))
  end

  return


end