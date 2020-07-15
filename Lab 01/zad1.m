clear;
licz = [0 0 1];
mian = [1000 500 400];

[z, p, k] = tf2zp(licz, mian);
pzmap(p, z);

%%
close all;
licz = [0 0 1];
M = 1000;
alfa = 500;
c = 400;

% oscylacyjny
mian = [M alfa c];
% t³umiony
mian2 = [M (alfa * 3) c];

% 1) Tak, bieguny s¹ rzeczywiste
% 2) Uk³ad jest stabilny, t³umienie doprowadzi do ustatnia ruchu
% 3) Nie jest, nie posiada zer

obiekt = tf(licz, mian);
obiekt2 = tf(licz, mian2);

[z, p, k] = tf2zp(licz, mian)
pzmap(p, z);
impulse(obiekt, obiekt2);
step(obiekt, obiekt2);

