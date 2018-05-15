clear all; clc;

%% Problem 3: Maximum likelihood/Minsta kvadrat
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = sqrt(1/(2*length(x))*sum(x.^2));
my_est_mk = mean(x)/sqrt(pi/2);
plot(my_est_mk, 0, 'g*')
plot(b, 0, 'ro')
hold off

%% Problem 4: Maximum likelihood/Minsta kvadrat (forts.)
plot(0:0.1:20, raylpdf(0:0.1:20, my_est_ml), 'r')
hold off