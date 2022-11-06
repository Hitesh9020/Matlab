x=-2:1:3;
y=1:6;
fx=fliplr(y);
fn=-fliplr(x);
subplot(211),stem(x,y);
xlabel('Time');
ylabel('Amplitude');
title('SEQUENCE');
subplot(212),stem(fn,fx);
xlabel('Time');
ylabel('Amplitude');
title('FOLDING SEQUENCE')