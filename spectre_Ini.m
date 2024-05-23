function spectre(t,Ini)

if nargin>1,
Te=t(2)-t(1);
k=1;
while fix(length(Ini)/2^k),
k=k+1;
end;
L=2^(k-1);
nt=t(1:L);ns=Ini(1:L);
S=fft(ns);
M = abs(S);
P = angle(S);
f=0:1/((L -1)*Te):1/Te;
k1=1;
k2=ceil(length(f)/2);
plot(f(k1:k2),M(k1:k2)/L);grid;title('|S| ');
[Mm,Im] = max(M(k1:k2)/L);FREQ=f(k1:k2);DSP=M(k1:k2)/L;


else,
	axeHndl = gca;
	lineHndl = get(axeHndl,'Children');
	Xlim = get(axeHndl,'XLim');
	FREQ = get(lineHndl(1),'Xdata');
	DSP = get(lineHndl(1),'Ydata');
	df=FREQ(length(FREQ))/(length(FREQ)-1);
	indd = Xlim(1)/df;
	indf = Xlim(2)/df;
	[Mm,Im] = max(DSP(indd+1:indf+1));
	Flocal = FREQ(indd+1:indf+1);
disp(['Max dans la Bande ',num2str(Xlim(1)),'Hz -> ',num2str(Xlim(2)),'Hz   : ',num2str(Mm),' en f = ',num2str(Flocal(Im)),'Hz']);
end;

