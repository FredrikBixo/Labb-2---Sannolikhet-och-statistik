load moore.mat 1

subplot(211), plot(moore)

x = [repelem(1,20); fliplr(1:20)]'
y = moore(:,1)
b = regress(y, x)