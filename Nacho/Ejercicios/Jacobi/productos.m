function prod = productos(x0, x)
  [n, tam] = size(x);
  
  prod = zeros(tam, 1);
  a = 1;
    
  prod(1) = a;
  
  for i=2:tam
    a = a * (x0 - x(i-1));
    prod(i) = a;
  end
  
end