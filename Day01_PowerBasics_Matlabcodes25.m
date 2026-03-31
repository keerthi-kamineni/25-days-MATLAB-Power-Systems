clc;
clear;
close all;

% Given Real Power (kW)
P = 10;  

% Reactive Power range (kVAR)
Q = 0:0.1:15;  

% Apparent Power calculation
S = sqrt(P^2 + Q.^2);

% Power Factor calculation
PF = P ./ S;

% Plotting
figure;
plot(Q, PF, 'LineWidth', 2);
grid on;
xlabel('Reactive Power (kVAR)');
ylabel('Power Factor');
title('Effect of Reactive Power on Power Factor');
