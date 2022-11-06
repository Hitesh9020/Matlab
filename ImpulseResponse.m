n=30;
num=[0.9 -0.45 0.35 0.002];
den=[1.0 0.71 -0.46 -0.62];
N=0:n-1;
x=(N==0);
y=filter(num,den,x);
stem(N,y);
xlabel('N')
ylabel('Amplitude')
title('IMPULSE RESPONSE')
