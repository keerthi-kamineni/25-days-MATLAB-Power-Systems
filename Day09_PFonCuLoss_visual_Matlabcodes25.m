clc;
clear;

P = 10000;      % Real power (W)
V = 400;        % Voltage (V)
R = 0.5;        % Line resistance (ohms)

pf = 0.6:0.01:1;          % PF range
I = P ./ (V .* pf);       % Current
Loss = I.^2 .* R;         % Copper loss

plot(pf, Loss)
xlabel('Power Factor')
ylabel('Copper Loss (W)')
title('Power Factor vs Copper Loss')
grid on
