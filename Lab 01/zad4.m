clear;

z = [];
p = [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1];
k = 1;

[licz, mian] = zp2tf(z, p, k); 

[z1, p1, k1] = tf2zp(licz, mian); 


