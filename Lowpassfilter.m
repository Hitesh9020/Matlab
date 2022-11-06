fs=100;               
f=5;                  
t=5;                     
n=0:1/fs:t;            
x=2*sin(2*pi*f*n);     
subplot(3,1,1)
plot(n,x);
grid on
title('Sinusoidal signal');
z=awgn(x,1);          
subplot(3,1,2);
plot(n,z);
title('Sinusoidal signal with noise added');
o=1;
wc=2*pi*3.5/fs;         
[b,a]=butter(1,wc,'low');
iir=filter(b,a,z);
subplot(3,1,3);
plot(n,iir);
fvtool(b,a);     