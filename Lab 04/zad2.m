clear;


load('obiekt.mat')

K  = 2;
T1 = 11.5;
T2 = 1.6;
theta = 7; 
licz = [0 0 K];
mian = [(T1 * T2) (T1 + T2)  1];

obj = tf(licz,mian);
set(obj,'outputdelay', theta)
t = 0:59;

hold on;
ymodel2 = step(obj,t);
plot(t,y,t,ymodel2)

e = y - ymodel2;
MSE = sum(e.^2) / length(e);
disp(MSE)