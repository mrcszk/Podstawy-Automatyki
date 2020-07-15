T0 = 293;
V0 = 0.04;
% 1
Q = 8000;
w = 0.4;
wi = 0.4;
Ti = 293;

[t1,x1] = ode45(@zbiornik_stan, [0 600], [V0,T0], [], wi, w, Ti, Q);

subplot(3,1,1)
plot(t1,x1(:,1))
% 2
Q = 8000;
w = 1.4;
wi = 0.4;
Ti = 293;

[t2,x2] = ode45(@zbiornik_stan, [0 600], [V0,T0], [], wi, w, Ti, Q);

subplot(3,1,2)
plot(t2,x2(:,1))

% 2
Q = 4000;
w = 0.4;
wi = 0.4;
Ti = 293;

[t3,x3] = ode45(@zbiornik_stan, [0 600], [V0,T0], [], wi, w, Ti, Q);

subplot(3,1,3)
plot(t3,x3(:,1))