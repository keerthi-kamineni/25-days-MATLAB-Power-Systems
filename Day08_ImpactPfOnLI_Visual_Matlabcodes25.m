clc;
clear;

P = 10000;   % Real Power (W)
V = 400;     % Voltage (V)

pf = 0.6:0.01:1;    % Power factor range
I = P ./ (V .* pf); % Current calculation

plot(pf, I)
xlabel('Power Factor')
ylabel('Line Current (A)')
title('Power Factor vs Line Current')
grid on
