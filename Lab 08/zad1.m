clear;

ezplot('100*exp((-ksi*pi)/sqrt(1-ksi^2))',[0 1])
ylabel('MO [%]'), xlabel('\xi'), grid
line([0,0.4],[25,25],'color',[0.5,0.5,0.5],'linestyle','--')
line([0.4,0.4],[-5,25],'color',[0.5,0.5,0.5],'linestyle','--')

ezplot('atand(2*ksi/sqrt(sqrt(1+4*ksi^2)-2*ksi^2))',[0 1])
ylabel('PM [%]'), xlabel('\xi'), grid
line([0,0.4],[39,39],'color',[0.5,0.5,0.5],'linestyle','--')
line([0.4,0.4],[-5,39],'color',[0.5,0.5,0.5],'linestyle','--')

G = zpk([],[0 -1],10);
margin(G)

fi_m = 21;
a = (1-sind(fi_m))/(1+sind(fi_m));

Om = 2.53;
T = 1/(Om*sqrt(a));

Gc = tf(1/a*[1 1/T],[1 1/(a*T)]);

margin(G), hold on
margin(G*Gc), hold off

Gz = feedback(G,1);
Gzc = feedback(Gc*G,1);

step(Gz,Gzc)

Gzcc = feedback(Gc*Gc*G,1);
step(Gz,Gzc,Gzcc)
