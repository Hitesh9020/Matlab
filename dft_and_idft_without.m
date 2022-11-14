N=input('No. of DFT points = ');
xn=input('Enter the sequence=x[n]= ');
ln=length(xn);
xn=[xn zeros(1,N-ln)];
DFT=zeros(1,N);
iDFT=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        DFT(k+1)=DFT(k+1)+(xn(n+1)*exp((-1i)*2*pi*k*n/N));
    end
end
t=0:N-1;
subplot(2,2,1);stem(t,xn);
ylabel('Amplitude');
xlabel('n')
xlim([-2 5]);
title('Input Sequence ');grid on;
magnitude=abs(DFT);
disp('DFT Sequence = ');
disp(magnitude);

t=0:N-1;
subplot(2,2,2);stem(t,magnitude);
ylabel("Amplitude")
xlabel("time");
xlim([-2 5])
title("DFT sequence");grid on;
phase=angle(DFT);
disp("phase= ")
disp(phase);

t=0:N-1;
subplot(2,2,3);stem(t,phase);
ylabel("phase")
xlabel('k')
xlim([-2 5]);
title("Phase response");grid on;

for n=0:N-1
   for k=0:N-1
       iDFT(n+1)=iDFT(n+1)+(DFT(k+1)*exp(1i*2*pi*k*n/N));
   end
end

iDFT=iDFT./N;
subplot(2,2,4);
stem(t,iDFT);
disp("IDFT sequence= ");
disp(iDFT);
ylabel("Amplitude");
xlabel("n")
xlim([-2 5])
title('IDFT sequence');grid on;

