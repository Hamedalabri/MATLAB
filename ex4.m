%Ecrire un scripte pour tracer 3 périodes d’une sinusoïde, de période 4ms et d’amplitude 2V.
t=0:1e-6:12e-3;
f=1/4e-3;
y= 2* sin(2*pi*f*t);
plot(t,y)
