%% Problem 8: Deskriptiv statistik
load birth.dat
x = birth(birth(:, 20) < 3, 3); % icke röckare
y = birth(birth(:, 20) == 3, 3); % rökare
subplot(2,2,1)
boxplot(x)
x
length(y)
axis([0 2 500 5000])
subplot(2,2,2)
boxplot(y)
axis([0 2 500 5000])
subplot(2,2,3:4)
ksdensity(x)
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, 'r')
hold off