clear;

licz1 = [0 1 1];
mian1 = [1 5 1];

sys1 = tf(licz1, mian1);

licz2 = [0 0  0 1];
mian2 = [1 1 -2 1];

sys2 = tf(licz2, mian2);

sys_szer = series(sys1, sys2)
sys_rown = parallel(sys1, sys2)
sys_sprz = feedback(sys1, sys2)
