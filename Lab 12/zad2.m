clear

T0 = 293;
V0 = 0.04;

t0 = 600;
X0=[0.04;303];
U0=[0.4;0.4;293;7000];
Y0=[0.04;303];
IX=[];
IU=[1;2;3];
IY=[1;2] ;
iu = 1;


[x0,u,~,dx]=trim('zbiornik_sys',X0,U0,Y0,IX,IU,IY);
[t,x] = ode45(@zbiornik_stan, [0 t0], [V0,T0], [], u(1), u(2), u(3), u(4));
t_s = (0:(t0/(length(t)-1)):t0)';

U = [];
for j=1:length(t_s)
    U = [U u];
end
    
[A,B,C,D] = linmod('zbiornik_sys', x0, u);
[licz,mian] = ss2tf(A,B,C,D,iu);
printsys(licz,mian)

[y,t] = lsim(A,B,C,D,U,t,X0);

figure(1)
subplot(2,2,1)
hold on
plot(t,x(:,1))
plot(t_s,y(:,1))
legend("System nieliniowy","System zlinearyzowany")

subplot(2,2,2)
hold on
plot(t,x(:,2))
plot(t_s,y(:,2))
legend("System nieliniowy","System zlinearyzowany")

subplot(2,2,3)
plot(t,x(:,1)-y(:,1))
legend("B³¹d objêtoœci")

subplot(2,2,4)
plot(t,x(:,2)-y(:,2))
legend("B³¹d temperatury")




