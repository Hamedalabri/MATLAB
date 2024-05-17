t=0:1e-6:12e-3;
x1= 4*sin(2000*pi*t);
x2=2*sin(4000*pi*t);
x3=sin(6000*pi*t*pi/3);
x = x1+x2+x3  ;
plot(t,x1,t,x2,t,x3,t,x)