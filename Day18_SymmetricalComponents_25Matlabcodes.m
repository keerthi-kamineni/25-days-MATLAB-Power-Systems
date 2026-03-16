clc
clear
% Phase voltages (example unbalanced system)
Va = 230;
Vb = 210;
Vc = 250;
% Operator 'a'
a = exp(1j*2*pi/3);
a2 = a^2;
% Transformation matrix
T = (1/3)*[1 1 1;
           1 a a2;
           1 a2 a];
% Phase voltage vector
V_phase = [Va; Vb; Vc];
% Sequence components
V_seq = T * V_phase;
V0 = V_seq(1);   % Zero sequence
V1 = V_seq(2);   % Positive sequence
V2 = V_seq(3);   % Negative sequence

fprintf('Zero Sequence Voltage: %.2f\n',abs(V0))
fprintf('Positive Sequence Voltage: %.2f\n',abs(V1))
fprintf('Negative Sequence Voltage: %.2f\n',abs(V2))