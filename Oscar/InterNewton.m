function p = InterNewton(x, y, evaluation)
  m = length(x);
  b = length(y);
  
  if(m ~= b)
    error('Los vectores tienen que ser iguales');
  end
   
  M = zeros(m, m);
  i = 2;
  
  for size = 1:m
    M(size, 1) = y(size);   
  end
  
  for columns = 2:m
      
    for rows = i:m
      M(rows, columns) = (M(rows, columns-1) - M(rows-1, columns-1)) / (x(rows) - x(rows-i+1));
    end
    i = i +1;
    
  end
  
  ev = length(evaluation);
  p = zeros(1,ev);
  
  for j = 1:ev
      g = 1;
      
      for i = 1:m
        p(j) = p(j) + g * M(i,i);
        g = g * (evaluation(j) - x(i));
      end
      
  end
  
  return
end