x = 1:1:5;
x0 = -1:0.5:1;

[n, tamx] = size(x);
[n, tam0] = size(x0);

p = zeros(tam0, tamx);

for i=1:tam0
    prod = productos(x0(i), x);
    p(i,:) = prod';
end
