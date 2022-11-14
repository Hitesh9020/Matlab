 N=36;
 z=randn(1,N)+1i*randn(1,N);
 fft_z=fft(z);
 xn=conj(fft_z);
 n=length(xn);
 k=0:n-1;
 subplot(2,1,1)
 stem(k,abs(xn));
 xlabel("k");
 ylabel("|x[n]|");
 title("Magnitude Plot");
 subplot(2,1,2);
 stem(k,angle(xn));
 xlabel("k");
 ylabel("angle of x[n]");
 title("phase");
 figure();
 A=[real(fft_z);imag(fft_z)];
 surf(A);
 xlabel("FFT");
 ylabel("real(fft)");
 zlabel("imag(fft)");
 title("3D plot")
