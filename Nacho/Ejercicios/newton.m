function p = newton(x0, x, y)
  
  [n, tam] = size(x);
  [n, tam0] = size(x0);
  
  %%prod = productos(x0, y);
  
  dif = zeros(1, tam);
  p = zeros(1,tam0);
  
    
  for i=1:tam
    dif(i) = diferencias(x(1:i), y(1:i));
  end
  
  for i=1:tam0
    prod = productos(x0(i), x);
    p(i) = dif * prod;
  end

end