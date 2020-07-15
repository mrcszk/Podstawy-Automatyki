clear;
close all;

K=2;
T1=0.1; 
T2=0.9; 
Td=0.7;

s1 = tf([0 0 0 K], [T1*T2 T1+T2 1 0]);
s2 = tf([0 0 K*Td K], [T1*T2 T1+T2 1 0]);


figure(1)
nyquist(s1,s2);
title("K=" + K)