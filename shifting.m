x=-2:1:3;
y=1:6;
n=2;
shift=x-n;
subplot(211),stem(x,y);
xlabel('Time');
ylabel('Amplitude');
title('SEQUENCE');
subplot(212),stem(shift,y);
xlabel('Time');
ylabel('Amplitude');
title('SHIFTING SEQUENCE');