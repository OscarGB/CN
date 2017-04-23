function dif = diferencias(y)
  [n, tam] = size(y);
  if tam == 1
    dif = y(1);

  else
    a = diferencias(y(2:tam));
    b = diferencias(y(1:tam-1));
    dif = (a - b) / (tam - 1);
  end
  
end