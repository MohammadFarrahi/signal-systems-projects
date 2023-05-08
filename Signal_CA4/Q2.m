
t = 0:0.01:10;
x = sin(t);
subplot(1,3,1);
plot(t,x);
grid on

t = 0:0.01:10;
x = 2 * exp(-t) - t .* exp(-t);
subplot(1,3,2);
plot(t,x);
grid on

t = 0:0.001:1;
x =  100 * exp(-100*t);
subplot(1,3,3);
plot(t,x);
grid on