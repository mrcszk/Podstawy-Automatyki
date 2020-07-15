% do uk³adu
M = 1000;
F = 1000;
a = 500;
c = 400;

sim('zad2_model.slx');
%%
% zad 2
obiekt = zpk(-1/4,[0 -5 -1/10], 2)
%impulse(obiekt);

