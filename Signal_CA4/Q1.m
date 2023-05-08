t = 0:0.01:10;
x = 1 + 0.5 * exp(-3*t) - 1.5 * exp(-t);
plot(t,x);
ylim([0 1.1]);