function blad = ident(X0)
	load ('obiekt.mat')
	
	k = X0(1);
	T1 = X0(2);
	T2 = X0(3);	
	licz = [0 0 k];
	mian = [(T1 * T2) (T1 + T2)  1];
	
	obj = tf(licz,mian);
	t=0:59;
	
	y_model = step(obj,t);
	plot(t,y, t, y_model, 'LineWidth',2)	

	e = y - y_model;
	blad = sum(e.^2) / length(e);