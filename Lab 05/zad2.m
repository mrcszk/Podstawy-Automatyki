clear

% K = 0.4;

%licz = [0 0 0 K];
%mian = [0.2 1.2 1 0];
line([0 -1],[0 1],'color','k')

sys_otw = zpk([],[0,-1,-5],5);
sys_zam = feedback(sys_otw,1);

hold on;
rlocus(sys_zam)

K = rlocfind(sys_otw)

figure()
sys_zam = feedback(K*sys_otw,1);
hold on
step(sys_zam);

%%

clear

K = 1.6;

licz = [0 0 0 K];
mian = [0.2 1.2 1 0];

G = tf(licz,mian);


licz_c = [1 1]
mian_c = [0.1 1]

G_c = tf(licz_c, mian_c)

sys = series(G_c, G)
sys_zam = feedback(sys, 1)

hold on;
rlocus(sys_zam)
line([0 -5],[0 5])

figure()
step(sys_zam)