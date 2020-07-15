clear;
close all;

K = 1;

s1 = tf([0 K], [1 1]);
s2 = tf([0 0 K], [1 1 0]);
s3 = tf([0 0 0 K], [1 1 0 0]);
s4 = tf([0 0 0 0 K], [1 1 0 0 0]);

figure(1)
nyquist(s1);
title('(s + 1)');

figure(2)
nyquist(s2);
title('s(s + 1)');

figure(3)
nyquist(s3);
title('s^2(s + 1)');

figure(4)
nyquist(s4);
title('s^3(s + 1)');