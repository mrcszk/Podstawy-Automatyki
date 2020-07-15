clear;

k = 5;
T = 10;

licz = [0,k];
mian = [T,1];

[y,x,czas] = step(licz, mian);

plot(czas,y) 

%%
theta = 10;
n = 5;

k = 5;
T = 10;

% Wyznaczamy transmitancjê cz³onu opóŸniaj¹cego przy pomocy funkcji PADE: 
[licz_op, mian_op] = pade(theta, n);
% Zapisujemy transmitancjê obiektu inercyjnego bez opóŸnienia: 
licz_iner = [0,k]; mian_iner = [T,1]; 
% £¹czymy obie transmitancje szeregowo za pomoc¹ instrukcji SERIES: 
[licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner); 

[y,x,czas] = step(licz, mian);

plot(czas,y) 

%%
t=0:0.05:5;
dl=length(t);
LiczbaWykresow=12;
y=zeros(dl,LiczbaWykresow);
n=1;
while(n<=LiczbaWykresow)
 [licz,mian]=zp2tf([],[-n/4+3*i -n/4-3*i], (n/4)^2+9);
 [y(1:dl,n),x,tt]=step(licz,mian,t);
 n=n+1;
end
mesh(t,1:12,y'); 

