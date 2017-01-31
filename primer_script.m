% Serie de taylor de e^x

y = 0;
for k = 0:14 % Si uso 13 me da un decimal de diferencia con respecto al exp(0.5)
    y = y + (0.5)^k / factorial(k);
end;
y
exp(0.5)