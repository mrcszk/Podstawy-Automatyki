G = zpk([],[-1,-1,-1],1);
%rlocus(G)
Kkr = 8;

Gzam = feedback(Kkr*G,1);
%step(Gzam)

Pkr = 3.5;

regP = pidstd(0.5*Kkr);
regPI = pidstd(0.45*Kkr,Pkr/1.2);
regPID = pidstd(0.6*Kkr,Pkr/2,Pkr/8);

sys_regP = feedback(regP*G,1);
sys_regPI = feedback(regPI*G,1);
sys_regPID = feedback(regPID*G,1);

step(sys_regP,sys_regPI,sys_regPID)
title('Porównanie regulatorów')
legend('P','PI','PID')