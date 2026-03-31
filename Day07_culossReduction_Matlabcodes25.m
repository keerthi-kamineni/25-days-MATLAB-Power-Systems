clc;
clear;

% Given values
P = 10000;      % Real Power in Watts
V = 400;        % Voltage
pf1 = 0.7;      
pf2 = 0.95;
R = 0.5;        % Line resistance in ohms

% Current calculation
I1 = P / (V * pf1);
I2 = P / (V * pf2);

% Copper loss calculation
Loss1 = I1^2 * R;
Loss2 = I2^2 * R;

% Percentage reduction in loss
loss_reduction = ((Loss1 - Loss2) / Loss1) * 100;

disp(['Copper loss before PF correction = ', num2str(Loss1), ' W'])
disp(['Copper loss after PF correction  = ', num2str(Loss2), ' W'])
disp(['Loss reduction percentage = ', num2str(loss_reduction), ' %'])
