x=-10:10;
z=0;
y=x.*((x-z)>=0);
stem(x,y);
xlabel("Time");
ylabel("Amplitude");
title("Ramp Signal");