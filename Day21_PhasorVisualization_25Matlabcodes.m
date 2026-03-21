clc
clear
% Parameters
Vm = 1;              
f = 50;
w = 2*pi*f;
t = linspace(0,0.02,200);   % One cycle
figure
for k = 1:length(t)
   
    % Phasors
    Va = Vm * exp(1j*w*t(k));
    Vb = Vm * exp(1j*(w*t(k) - 2*pi/3));
    Vc = Vm * exp(1j*(w*t(k) + 2*pi/3));
    
    % Plot vectors
    quiver(0,0,real(Va),imag(Va),'LineWidth',2)
    hold on
    quiver(0,0,real(Vb),imag(Vb),'LineWidth',2)
    quiver(0,0,real(Vc),imag(Vc),'LineWidth',2)
    
    axis([-1.5 1.5 -1.5 1.5])
    title('Rotating Three-Phase Phasors')
    
    grid on
    hold off
    
    pause(0.05)
end