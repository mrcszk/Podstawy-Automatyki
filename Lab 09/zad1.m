A = 6;
B = 2;

licz = [0 0 0 1];
mian = [1 A B 1];

G_0 = tf(licz, mian);

K = 4;
alfa = 0.7;

licz = [K alfa];
mian = [1 0];

G_R = tf(licz, mian);

sys_zamk = feedback(G_0, G_R, -1);

step(sys_zamk);
figure;
bode(sys_zamk);
figure;
nyquist(sys_zamk);