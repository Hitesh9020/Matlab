N=input('No. of DFT points = ');
xn=input('Enter the sequence');
ln=length(xn);
DFT=fft(xn);
iDFT=ifft(xn);
t=0:N-1;
subplot(2,2,1);stem(t,xn,"fill",'black');
ylabel("Amplitude");
xlabel("Time");
xlim([-2 5])
title('Input Sequence');
magnitude=abs(DFT);
disp('DFT sequence= ')
disp(magnitude)
subplot(2,2,2);stem(t,magnitude,"fill",'black');
ylabel("Amplitude");
xlabel("K");
xlim([-2 5])
title('DFT Sequence');
phase=angle(DFT);
disp('phase = ')
disp(phase);

subplot(2,2,3);stem(t,phase,"fill",'black');
ylabel("Phase");
xlabel("K");
xlim([-2 5])
title('Phase Response');

subplot(2,2,4);stem(t,iDFT,"fill",'black');
disp("iDFT sequence = ");
disp(iDFT);
xlabel("n")
ylabel("Amplitude")
xlim([-2 5])
title('IDFT Sequence');
 

