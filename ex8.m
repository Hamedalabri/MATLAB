x = -10*pi :0.1:10*pi ;
y = sin(x).*exp(-0.1*x) ;
plot(x,y,'g')
grid on
axis([-20 0 –10 10]) ;
title('Trace de la courbe dune fonction') ;
xlabel('x : axe des abscisses') ;
ylabel('y : axe des ordonnées') ;
gtext('Sinusoïde amortie') ;
ginput(1)

