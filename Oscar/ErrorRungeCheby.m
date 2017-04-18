function ErrorRungeCheby(Nmin, Nmax, veces)
%% función que enseña el error de Runge con nodos de Chebyshev
close all;

%función de Runge
f = @(x) 1./(1.+x.^2);

pruebas = (Nmin: (Nmax-Nmin)/(veces-1): Nmax);
pruebas = floor(pruebas);
errores = zeros(1,veces);


% gráfica de Grunge con Chebychev
N = 12;

%nodos
a = N;
ini = -5;
fin = 5;

%puntos del polinomio de lagrange
puntos = 1000;
inil = ini;
finl = fin;

coef1 = (fin+ini)/2;
coef2 = (fin-ini)/2;

for k = 1:a
   v(k) = coef1 + coef2*cos((2*k - 1)/(2*N)*pi);
end

u = f(v);
fplot(f,[ini, fin],'b')
hold on

punl = (inil: (finl-inil)/(puntos-1):finl);
resul = Lagrange(punl, v, u);

plot(punl, resul, 'r');

%%bucle para errores
for j = 1:veces
    
    N = pruebas(j);
    
    %nodos
    a = N;
    ini = -5;
    fin = 5;

    %puntos del polinomio de lagrange
    puntos = 1000;
    inil = ini;
    finl = fin;

    v = zeros(1,N);
    
    coef1 = (fin+ini)/2;
    coef2 = (fin-ini)/2;
    
    for k = 1:N
       v(k) = coef1 + coef2*cos((2*k - 1)/(2*N)*pi);
    end
    u = f(v);
    

    %puntos
    punl = (inil: (finl-inil)/(puntos-1):finl);
    resul = Lagrange(punl, v, u);

    %Error máximo
    max = 0;
    for i = 1:puntos
        res = abs(resul(i) - f(punl(i)));
        if(res > max)
            max = res;
        end
    end

    errores(j) = max;
end
figure
plot(errores)


end


