N = 100;
t = zeros(N,1);
S = 20;
m = 4
for n = m:N
    for j = 1:S
        A = randn(n);
        tic
        [L, U ,E] = gausslu(A);
        t(n) = t(n) + toc/S;
    end
    
end
plot(log(m+2:N), log(t(m+2:N)))