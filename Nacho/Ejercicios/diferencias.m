function dif = diferencias(x, y)
  [n, tam] = size(y);
  
  if tam == 1
    dif = y(1);

  else
    a = diferencias(x(2:tam), y(2:tam));
    b = diferencias(x(1:tam-1), y(1:tam-1));
    dif = (a - b) / (x(tam) - x(1));
  end
  
end