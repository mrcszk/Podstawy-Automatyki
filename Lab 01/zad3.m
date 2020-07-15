clear;
licz = [0 0 1];
mian = [1000 500 400];

[z, p, k] = tf2zp(licz, mian);
[A,B,C,D] = zp2ss(z,p,k)
[E,F,G,H] = tf2ss(licz,mian) 

%step(A,B,C,D); 
step(E,F,G,H); 
