clc;
clear;

P = 100;          % Real Power (kW)
Q_load = 75;      % Load reactive power (kVAR)
Qc = 40;          % Capacitor reactive power (kVAR)

% Before compensation
S_old = sqrt(P^2 + Q_load^2);
PF_old = P / S_old;

% After compensation
Q_new = Q_load - Qc;
S_new = sqrt(P^2 + Q_new^2);
PF_new = P / S_new;

disp('Before Compensation:')
disp(['Power Factor = ', num2str(PF_old)])

disp('After Compensation:')
disp(['Power Factor = ', num2str(PF_new)])
