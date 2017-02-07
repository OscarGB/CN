clear all; close all; clc
F = @(x) (1 - cos(x))./x.^2;

%fplot(F,[-1*1e-2,1*1e-2])

b = 1*1e-7;
a = -b;

d = (b-a)/1e6 %Estamos analizando valores entre 10⁻⁷ y -10⁻⁷ tomando muchos
              %puntos en medio. Si vemos la gráfica normal de F, veremos
              %que en valore próximos a 0, la función parece tender a 0.5.
              %Sin embargo, al tomar estas medidas más precisas, podemos
              %ver que hay valores por encima y por debajo de 0.5, debido a
              %un error de cálculo al aproximarse a 0

%d = 2*1e-2/1e6 %Ahora le estamos pidiendo que dibuje muchos puntos
%x = -1*1e-2:d:1e-2;

c = a:d:b;

plot(c,F(c))

%pause

%Vamos a analizar la función f(x) = (1 - cos(x)) / x^2
%Esta función no está definida para x = 0, por lo que vamos a analizar 
%la función en valores de x próximos a 0

%x = 2*1e-8; %En este caso, el error es del orden del error de la maquina
            % eps, por lo que el resultado obtenido en f va a ser mayor que
            %0.5, lo que no debería pasar. Si seguimos bajando el valor de
            %la x, el num valdría 0, ya que es menor que el error de la 
            %máquina, y por lo tanto f también valdría 0

% c = cos(x);
% 
% num = 1 - c
% eps
% 
% f = num/x^2