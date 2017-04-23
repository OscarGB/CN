function p = newton(x0, x, y)
  
  [n, tam] = size(x);
  
  ##prod = productos(x0, y);
  
  p(1) = diferencias(y(1));
  
  for i=2:tam
    p(i) = diferencias(y(1:i)) .* 
  end

end