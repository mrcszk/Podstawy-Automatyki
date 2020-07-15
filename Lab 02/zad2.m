clear;

k = 5;
T = 10;

licz = [0,k];
mian = [T,1];

%bode(licz, mian);
%nyquist(licz, mian); 
 D1 = -2;
 D2 = 2;
 N = 10;
omega = logspace(D1, D2, N); 
[A,F] = bode(licz, mian, omega); 

A_db = 20*log10(A); 
semilogx(omega,A_db); 

[Re,Im] = nyquist(licz, mian); 
plot(Re(:),Im(:)); 
%%
sys = tf(1,[1 1]);
h = nyquistplot(sys);
p = getoptions(h);
p.FreqUnits = 'Hz';
p.ShowFullContour = 'off';
setoptions(h,p)

