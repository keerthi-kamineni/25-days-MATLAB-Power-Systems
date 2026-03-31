clc;
clear;

Qc_kVAR = 50;        % Reactive power in kVAR
V = 400;             % Voltage in Volts
f = 50;              % Frequency in Hz

Qc = Qc_kVAR * 1000; % Convert kVAR to VAR
omega = 2 * pi * f;  % Angular frequency

C = Qc / (V^2 * omega);

C_micro = C * 10^6;  % Convert to microfarads

disp(['Required Capacitance (microfarads) = ', num2str(C_micro)])
