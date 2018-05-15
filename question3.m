distribution(0,0)

N = 1000000;

[X] = sample(@(x) (1/sqrt(2.*pi))*exp(-x.^2/2), [-10000 10000], N);
r = normrnd(0,1,N,1);
z = exprnd(1/4,N,1);

sum(X)/N
sum(r)/N
%loop through calculate Z, then divide by 100 
B = sum(arrayfun(@(x,y) exp(x*cos(y)),r,z))/N

function y = distribution(x,y)
y = (4*exp(-4*x)) * (1/sqrt(2*pi))*exp(-y^2/2)
end
