a = 1;
b = 2;
theta = 0.8;
n = 5;

[licz_in,mian_in] = zp2tf([],[-5 -5 -5 -5 -5 -5 -5 -5 -5 -5],5^10);

[parametry,blad] = fminsearch('optymalizacja', [a b theta n]);

a = parametry(1);
b = parametry(2);
theta = parametry(3);

[licz,mian] = pade(theta, n);

sim('model2.slx');
open_system('model2/Scope')