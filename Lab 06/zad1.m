clear;
G = zpk([],[-1,-1,-1],1);
%rlocus(G)
Kkr = 8;
Gzam = feedback(Kkr*G,1);
%step(Gzam)
Pkr = 3.5;

open('model.slx');
sim('model.slx');
% wykres w scope