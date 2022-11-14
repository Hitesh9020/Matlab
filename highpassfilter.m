disp('enter the IIR filter design specifications');
rp=input('enter the passband ripple:');
rs=input('enter the stopband ripple:');
wp=input('enter the passband freq:');
ws=input('enter the stopband freq:');
fs=input('enter thr sampling freq:');
w1=2*wp/fs;
w2=2*ws/fs;
[n,wn]=buttord(w1,w2,rp,rs,'s');
disp('frequency response of IIR HighPassFilter is: ');
[b,a]=butter(n,wn,'high','s');
w=0:.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
figure,subplot(2,1,1);
plot(om/pi,m)
title('magnitude response of IIR filter is: ')
xlabel('(a) Normalized frequency');
ylabel('Gain in db');
subplot(2,1,2);plot(om/pi,an);
title('phase response of IIR filter is: ')
xlabel('(b) Normalized frequency ');
ylabel('phase in radians')

