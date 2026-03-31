clc;
clear;

P = 100;              % Real Power (kW)
Q = 0:10:100;         % Reactive Power (kVAR)

S = sqrt(P^2 + Q.^2); % Apparent Power
PF = P ./ S;          % Power Factor
phi = atan(Q./P);     % Phase angle (radians)
phi_deg = rad2deg(phi);

disp(' Q(kVAR)    PF      Phase Angle (deg)')
disp([Q' PF' phi_deg'])

figure;
plot(Q, PF, 'LineWidth', 2);
grid on;
xlabel('Reactive Power (kVAR)');
ylabel('Power Factor');
title('PF vs Reactive Power');
