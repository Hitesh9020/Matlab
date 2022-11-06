x=input('Sequence 1: ');
subplot(3,1,2);
stem(x);
xlabel('K');ylabel('x');title('FUNCTION');
N=length(x);
n=0:N-1;
k=0:N-1;
wn=exp(-1i*2*pi/N);
nk=n'*k;
wNnk=wn.^nk;
df=x*wNnk;
subplot(3,1,2);
stem(x,abs(df))
xlabel('K');ylabel('x');title('DTFT');
subplot(3,1,3);
stem(x,angle(df));
xlabel('K');ylabel('x');title('DTFT')
