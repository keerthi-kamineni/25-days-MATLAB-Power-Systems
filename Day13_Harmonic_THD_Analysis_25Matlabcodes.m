clc;
clear;

% Fundamental and harmonic voltage components (Volts)
V1 = 230;     % Fundamental
V2 = 20;      % 2nd harmonic
V3 = 15;      % 3rd harmonic
V4 = 10;      % 4th harmonic
V5 = 5;       % 5th harmonic

% THD calculation
THD = sqrt(V2^2 + V3^2 + V4^2 + V5^2) / V1 * 100;

fprintf('Total Harmonic Distortion = %.2f %%\n', THD);

% Plot harmonic spectrum
harmonics = [1 2 3 4 5];
voltages = [V1 V2 V3 V4 V5];

stem(harmonics, voltages,'LineWidth',2)

xlabel('Harmonic Order')
ylabel('Voltage Magnitude (V)')
title('Harmonic Spectrum of Voltage')

grid on