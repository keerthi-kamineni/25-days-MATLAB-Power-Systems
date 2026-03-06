
clc;
clear;

% Given values
P = 5000;     % Real Power in Watts
pf = 0.8;     % Power factor

% Apparent power
S = P / pf;

% Reactive power
Q = sqrt(S^2 - P^2);

% Plotting the power triangle
x = [0 P];
y = [0 0];

plot([0 P],[0 0],'LineWidth',2)      % Real power
hold on
plot([P P],[0 Q],'LineWidth',2)      % Reactive power
plot([0 P],[0 Q],'LineWidth',2)      % Apparent power

xlabel('Real Power (W)')
ylabel('Reactive Power (VAR)')
title('Power Triangle')

grid on
axis equal