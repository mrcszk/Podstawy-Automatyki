clear; clc;

%Zadanie 1.

K = 1;
T = 1;
theta = 2;

[licz1,mian1] = pade(theta,1);
[licz2,mian2] = pade(theta,2);

sim('model1.slx');
open_system('model1/Scope')