[licz,mian]=zp2tf([],[-1 -1 -1],4) % Zapisujemy licznik i mianownik transmitancji za
																	 % pomoc� zer, biegun�w i wzmocnienia

[Gm,Pm]=margin(licz,mian) % zapas wzmocnienia Gm i zapas fazy Pm