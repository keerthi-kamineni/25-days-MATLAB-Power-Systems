clc;
clear;

P = 100;            % Real Power (kW)
PF_initial = 0.75;  
PF_target = 0.95;

phi1 = acos(PF_initial);
phi2 = acos(PF_target);

Qc = P * (tan(phi1) - tan(phi2));

disp(['Required Capacitor Reactive Power (kVAR) = ', num2str(Qc)])
