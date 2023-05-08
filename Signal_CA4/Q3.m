syms y(t);
Dy = diff(y);

% x(t) == 5u(t) == 5
ode = diff(y,t,2) + 3*diff(y,t) + 2*y(t) == 5;
cond1 = y(0) == 1;
cond2 = Dy(0) == 1;
conds = [cond1 cond2];

y_sol(t) = dsolve(ode, conds);
t = 0:0.1:10;
y_theory = 2.5 + 2.5*exp(-2*t)-5*exp(-t) + 3*exp(-t)-2*exp(-2*t);

subplot(1,2,1);
plot(t,y_theory);
ylim([0.5 3]);
title("Theroy Answer");
grid on;
subplot(1,2,2);
plot(t,y_sol(t));
title("Matlab Answer");
ylim([0.5 3]);
grid on;