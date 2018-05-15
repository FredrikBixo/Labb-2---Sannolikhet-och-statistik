clc; clear all;
load poly.mat

 %plot(x1,y1)
 
 d = repelem(1,length(x1));
 
 X = [d', x1, x1.^2,x1.^3];
 
 beta_hat = regress(y1,X)

  c = repelem(1,length(x2));
 
 D = [c', x2, x2.^2,x2.^3];
 
 beta_hat2 = regress(y2,D)
 
 g = repelem(1,length(x3));
 
 R = [g', x3, x3.^2,x3.^3];
 
beta_hat3 = regress(y3,R) 
 
res = R*beta_hat3 - y3;
subplot(211), normplot(res)
subplot(212), hist(res)

% normalfördelening
% normalförldening 
% normalfördelning 

% residualen är Ek i regresionnsformlen 

% residualen är normalfördelad
 % plot(x3,y3)