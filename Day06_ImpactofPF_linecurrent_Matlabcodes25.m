clc;
clear;

% Given values
P = 10000;      % Real Power in Watts (10 kW)
V = 400;        % Voltage in Volts
pf1 = 0.7;      % Before correction
pf2 = 0.95;     % After correction

% Current calculation
I1 = P / (V * pf1);
I2 = P / (V * pf2);

% Percentage reduction
reduction = ((I1 - I2) / I1) * 100;

% Display results
disp(['Current before PF correction = ', num2str(I1), ' A'])
disp(['Current after PF correction  = ', num2str(I2), ' A'])
disp(['Percentage reduction in current = ', num2str(reduction), ' %'])
