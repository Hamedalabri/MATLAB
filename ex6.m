fs=4000;
duration=0.25;
t=0:1/fs:duration;

f1=697
f2=770
f3=852
f4=941
f5=1209
f6=1335
f7=1477
f8=1633


chiff0=sin(2*pi*f4*t)+sin(2*pi*f6*t);
chiff1=sin(2*pi*f1*t)+sin(2*pi*f5*t);
chiff2=sin(2*pi*f1*t)+sin(2*pi*f6*t);
chiff3=sin(2*pi*f1*t)+sin(2*pi*f7*t);
chiff4=sin(2*pi*f2*t)+sin(2*pi*f5*t);
chiff5=sin(2*pi*f2*t)+sin(2*pi*f6*t);
chiff6=sin(2*pi*f2*t)+sin(2*pi*f7*t);
chiff7=sin(2*pi*f3*t)+sin(2*pi*f5*t);
chiff8=sin(2*pi*f3*t)+sin(2*pi*f6*t);
chiff9=sin(2*pi*f3*t)+sin(2*pi*f7*t);
chiffA=sin(2*pi*f1*t)+sin(2*pi*f8*t);
chiffB=sin(2*pi*f2*t)+sin(2*pi*f8*t);
chiffC=sin(2*pi*f3*t)+sin(2*pi*f8*t);
chiffD=sin(2*pi*f4*t)+sin(2*pi*f8*t);

sound_complet = [chiff0,chiff3,chiff8,chiff9,chiff2,chiff3,chiff4,chiff4,chiff5,chiff7];
sound(sound_complet, fs)