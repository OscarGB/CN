function ErrorRunge(Nmin, Nmax, veces)
%% función que enseña el error de Runge
close all;

pruebas = (Nmin: (Nmax-Nmin)/(veces-1): Nmax);
pruebas = floor(pruebas);
errores = zeros(1,veces);

for j = 1:veces
    
    N = pruebas(j);
    %función de Runge
    f = @(x) 1./(1.+x.^2);

    %nodos
    a = N;
    ini = -5;
    fin = 5;

    %puntos del polinomio de lagrange
    puntos = 1000;
    inil = ini;
    finl = fin;

    v = (ini:(fin-ini)/(a-1):fin);
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
plot(pruebas, errores)


end

