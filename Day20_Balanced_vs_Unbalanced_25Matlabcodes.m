clc
clear
% Parameters
f = 50;
fs = 2000;
t = 0:1/fs:0.1;
%  Balanced System
Va_bal = 325*sin(2*pi*f*t);
Vb_bal = 325*sin(2*pi*f*t - 2*pi/3);
Vc_bal = 325*sin(2*pi*f*t + 2*pi/3);
% Unbalanced System
Va_un = 325*sin(2*pi*f*t);
Vb_un = 280*sin(2*pi*f*t - 2*pi/3);
Vc_un = 350*sin(2*pi*f*t + 2*pi/3);
% Plot
figure
subplot(2,1,1)
plot(t,Va_bal,'LineWidth',2)
hold on
plot(t,Vb_bal,'LineWidth',2)
plot(t,Vc_bal,'LineWidth',2)
title('Balanced Three-Phase System')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('Va','Vb','Vc')
grid on
subplot(2,1,2)
plot(t,Va_un,'LineWidth',2)
hold on
plot(t,Vb_un,'LineWidth',2)
plot(t,Vc_un,'LineWidth',2)
title('Unbalanced Three-Phase System')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('Va','Vb','Vc')
grid on