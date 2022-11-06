N=input('No. of DFT points = ');
xn=input('Enter the sequence');
ln=length(xn);
xn=[xn zeros(1,N-ln)];
DFT=zeros(1,N);
iDFT=zeros(1,N);
for k=0:N-1
    for n=0:N-1
        DFT(k+1)=DFT(k+1)+(xn(n+1)*exp((-li)*2*pi*k*n/N));
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
