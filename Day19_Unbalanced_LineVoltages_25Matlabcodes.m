clc
clear
% Parameters
f = 50;
fs = 2000;
t = 0:1/fs:0.1;
% Unbalanced phase voltages
Va = 325*sin(2*pi*f*t);
Vb = 280*sin(2*pi*f*t - 2*pi/3);
Vc = 350*sin(2*pi*f*t + 2*pi/3);
% Line voltages
Vab = Va - Vb;
Vbc = Vb - Vc;
Vca = Vc - Va;
% Plot
plot(t, Vab, 'LineWidth', 2)
hold on
plot(t, Vbc, 'LineWidth', 2)
plot(t, Vca, 'LineWidth', 2)
xlabel('Time (s)')
ylabel('Voltage (V)')
title('Unbalanced Line Voltages')
legend('Vab','Vbc','Vca')
grid on