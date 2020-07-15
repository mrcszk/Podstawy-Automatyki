[param,blad] = fminsearch(@optymalizuj,[1,1]);
a = param(1);
T = param(2);
G = zpk([],[0 -1],10);
C = tf(1/a*[1 1/T],[1 1/(a*T)]);
Gz = feedback(G,1);
Gzc = feedback(C*G,1);
step(Gz,Gzc);
legend('bez kompensatora','z kompensatorem')