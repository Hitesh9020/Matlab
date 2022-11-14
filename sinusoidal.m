x=100;
f=2;
z=0:1/x:1;
y=sin(2*pi*f*z);
figure
stem(z,y);
xlabel("Time");
ylabel("Amplitude");
title("Sinusoidal Signal");