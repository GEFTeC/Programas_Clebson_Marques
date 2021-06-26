clear all, clc all

b = 3;, a = 0.000000000000001;, n = 1000;

x = [a];, y = [funcao(a)];

h = (b-a)/n;

for i = 1:1:n;
    x(i+1) = x(i)+h;
    y(i+1) = funcao(x(i+1));
end

trapezio(h, y)

t = a:.001:b;

hold
	plot(
		t, funcao(t), 'g', 'linewidth', 2,
		x, y, 'ro'
	);
	linhas(
		x, y, 'k'
	);
hold off
	
legend(
    'Curva Original'
);

legend(
	'boxoff'
);
