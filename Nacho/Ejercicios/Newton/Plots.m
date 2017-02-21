% Plot de funciones para trabajar en Newton

f = @(x) x - x.*(x - 0.8).*(x + 0.8);
df = @(x) 1 - 3*x.^2 + 0.64;
figure
subplot(2,1,1)
fplot(f,[-2,2])
grid on
subplot(2,1,2)
fplot(df,[-2,2])
grid on
