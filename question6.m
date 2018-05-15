%% Problem 5: Konfidensintervall for Rayleighfordelning
load wave_data.mat
subplot(211), plot(y(1:end))
subplot(212), hist_density(y)

n = length(y); %Antal matningar
mu = 2; %Vantevardet
sigma = 1; %Standardavvikelsen
alpha = 0.05;

my_est = mean(y); %vektor med 100 medelvarden.
%Beraknar de undre och ovre granserna
undre = xbar - norminv(1-alpha/2)*sigma/sqrt(n);
ovre = xbar + norminv(1-alpha/2)*sigma/sqrt(n);



undre
ovre

hold on
% Gor saxbar att ploten halls kvar
plot(undre, 0, 'g*')
plot(ovre, 0, 'g*')

plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off

