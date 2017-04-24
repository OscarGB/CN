function P = pruebaNewton(f, a, b, N)
  
  x0 = a:(b-a)/5:b;

  x = a:(b-a)/(N-1):b;
  
  y = f(x);
  
  P = newton(x0, x, y);
  P
  
  
  figure
  plot(x, f(x))
  hold on
  plot(x0, P, 'r')
  
  

end