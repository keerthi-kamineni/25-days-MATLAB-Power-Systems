clc
clear
% System parameters
f = 50;
fs = 2000;
t = 0:1/fs:0.1;
% Peak voltages (unbalanced)
Va_peak = 325;
Vb_peak = 300;
Vc_peak = 340;
% Phase voltages
Va = Va_peak*sin(2*pi*f*t);
Vb = Vb_peak*sin(2*pi*f*t - 2*pi/3);
Vc = Vc_peak*sin(2*pi*f*t + 2*pi/3);
% Plot waveforms
plot(t,Va,'LineWidth',2)
hold on
plot(t,Vb,'LineWidth',2)
plot(t,Vc,'LineWidth',2)
xlabel('Time (seconds)')
ylabel('Voltage (V)')
title('Unbalanced Three Phase Voltages')
legend('Phase A','Phase B','Phase C')
grid on
% Voltage unbalance calculation
V = [Va_peak Vb_peak Vc_peak];
Vavg = mean(V);
Vmax = max(V);
unbalance = ((Vmax - Vavg)/Vavg)*100;
fprintf('Voltage Unbalance = %.2f %%\n',unbalance);