function P = pruebaNewton(f, a, b, N)
  
  x0 = a:(b-a)/(N-1):b;

  x = a:(b-a)/(N-1):b;
  
  y = f(x);
  
  P = newton(x0, x, y);
  
  
  figure
  plot(x, f(x))
  hold on
  grid on
  plot(x, P, 'r')
  
  

end