clear;


K = 10;
T1 = 0.1;
T2 = 0.5;
T3 = 0.8;


licz1 = [0 0 K];
mian1 = [T1*T2 T1+T2 1];

licz2 = [0 0 0 K];
mian2 = [T1*T2*T2 (T3*(T1+T2)+T1*T2) T1+T2+T3 1]; % mnozenie :)

ob1 = tf(licz1,mian1);
ob2 = tf(licz2,mian2);

nyquist(ob1, ob2);


title("K=" + K)