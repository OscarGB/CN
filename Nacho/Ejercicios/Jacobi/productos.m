function prod = productos(x0, y)
  [n, tam] = size(y);
  
  prod(1) = 1;
  
  for i =2:tam
    prod(i) = x0 - y(i-1);
  end
  
end