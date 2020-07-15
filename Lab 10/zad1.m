clear; clc;

G1 = zpk([], [-1 -1 -1], 10);
G2 = zpk([], -2, 3);

%sterowanie klasyczne
R = pidstd(1,1);
R = pidtune(G1*G2, R);
sys = feedback(G1*G2*R, 1);

%sterowanie kaskadowe
R2 = pidstd(1,1);
R2 = pidtune(G2,R2,2);
sys_pod = feedback(G2*R2,1);
R1 = pidstd(1,1);
R1 = pidtune(G1*sys_pod,R1,0.2);
sys_zew = feedback(R1*G1*sys_pod,1);

f = figure(1);
f.Name = "Warto�� ustalona";
figure(f)
step(sys,sys_zew)
legend("Ster. klasyczne","Ster. kaskadowe")

%Zak��cenia z1

Gz1kl = 1/(1+R*G1*G2);
Gz1ka = (1+G2*R2)/(1+R2*G2+R1*R2*G2*G1);

f = figure(2);
f.Name = "Zak��cenia z1";
figure(f)
step(Gz1kl,Gz1ka)
legend("Ster. klasyczne","Ster. kaskadowe")

%Zak��cenia z2

Gz2kl = G1/(1+R*G1*G2);
Gz2ka = G1/(1+R2*G2+R1*R2*G2*G1);

f = figure(3);
f.Name = "Zak��cenia z2";
figure(f)
step(Gz2kl,Gz2ka)
legend("Ster. klasyczne","Ster. kaskadowe")