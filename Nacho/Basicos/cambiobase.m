%CAMBIO DE BASE
%Algoritmo de división dado en fundamentos
%Va almacenando los restos en el vector a
%El vector en base b que devuelve matlab va a estar invertido, ya que
%estamos almacenando el indice más pequeño en la posición a(1), y el más
%grande en la posición a(length(a))

function [a,y] = cambiobase(x,b) %posicional es el nombre de la funcion, (x,b) indica los valores del input, a es el output

clc

j = 1;

a(j) = mod(x,b); %esto implica que a tiene que ser un vector, ya que a(j) 
                 %va a ser la posicion j de un vector (matlab lo entiende solo)

r = floor(x/b)

while r > 0
   
    j = j+1;
    a(j) = mod(r,b);
    r = floor(r/b);
    
end

l = length(a);
y = 0;

for k=1:l %Bucle para el cálculo del sumatorio del cambio de base
    
    y = y + a(k)*b^(k-1); %y va a ser una variable de control de errores, de modo que al ejecutar debemos ver que
                          % y = x


end %fin de la funcion