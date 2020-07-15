clear;
close all;

K = 30;

licz = [0 0 0 K];
mian = [1 12 20 0]; % po wymnozeniu

nyquist(licz, mian);
title("K=" + K)