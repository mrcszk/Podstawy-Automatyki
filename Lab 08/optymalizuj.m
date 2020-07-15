function e = optymalizuj(X)
a = X(1);
T = X(2);
G = zpk([],[0 -1],10);  % uk³ad otwarty
C = tf(1/a*[1 1/T],[1 1/(a*T)]); % kompensator
Gzc = feedback(C*G,1); % uk³ad zamkniêty
S = stepinfo(Gzc);
P = S.Overshoot; % przeregulowanie
e = abs(P - 25); % b³¹d
end