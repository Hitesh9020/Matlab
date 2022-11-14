n1=-2:1:3;
x1=1:6;

n2=-2:1:3;
x2=6:-1 :1;

x=x1+x2;

subplot(3,1,1),stem(n1,x1);
title('sequence 1');
xlim([min(n1)-1 max(n1)+1]); ylim([min(x1)-1 max(x1)+1]);

subplot(3,1,2),stem(n2,x2);
title('sequence 2')
xlim([min(n2)-1 max(n2)+1]); ylim([min(x2)-1 max(x2)+1]);

subplot(3,1,3),stem(n1,x,'.','Markersize',20);
title('Resultant Sequence')
xlim([min(n1)-1 max(n1)+1]); ylim([min(x1)-1 max(x1)+1]);