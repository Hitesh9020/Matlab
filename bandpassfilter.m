clc
clear all
close all
N=30;
fs=8000;
fc1=2000;
fc2=3000;
wc1=fc1/(fs/2);
wc2=fc2/(fs/2);
h=fir1(N,[wc1 wc2],'bandpass',hamming(N+1));
freqz(h,1,1000,fs);



