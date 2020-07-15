function dx = zbiornik_stan(t,x,wi,w,Ti,Q)
% Argumenty wej�ciowe:
% t - czas
% x - wektor stanu uk�adu
% wi - dop�yw
% w - wyp�yw
% Ti - temperatura cieczy dop�ywaj�cej
% Q - moc dostarczana (grzanie)
%----------------------------- zmienne stanu ------------------------------
x1 = x(1); %obj�to��
x2 = x(2); %temperatura
%------------------------------- parametry --------------------------------
C = 1820; % ciep�o w�a�ciwe [J/(Kg*K)]
ro = 1000; % g�sto�� [kg/m3]
%%---------------------------- r�wnania stanu -----------------------------
dx1 = 1 / ro * (wi-w);
dx2 = wi * (Ti - x2) / (ro * x1) + Q / (ro * x1 * C);
dx = [dx1;dx2]; 