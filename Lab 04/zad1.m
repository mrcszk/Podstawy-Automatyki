clear;

theta = 8;
k = 2;
T = 12;

load('obiekt.mat');
modelA = tf(k,[T,1],'OutputDelay',theta);
t = 0:59;
ymodelA = step(modelA,t);
plot(t,y,t,ymodelA)

e = y - ymodelA;
MSE = sum(e.^2) / length(e);
disp(MSE)