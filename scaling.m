x=-2:1:3;
y=1:6;
a=2;
scaling_n=y/a;
subplot(211),stem(x,y);
xlabel('Time');
ylabel('Amplitude');
title('SEQUENCE');

subplot(212),stem(x,scaling_n);
xlabel('Time');
ylabel('Amplitude');
title('SCALING SEQUENCE');