clc
clear
% Parameters
f = 50;
w = 2*pi*f;
t = linspace(0,0.02,200);
figure
for k = 1:length(t)
    % -------- Three-phase signals --------
    Va = sin(w*t);
    Vb = sin(w*t - 2*pi/3);
    Vc = sin(w*t + 2*pi/3);
    
    % -------- Phasor (single phase) --------
    phasor = exp(1j*w*t(k));
    
    % -------- Subplot 1: Phasor --------
    subplot(1,2,1)
    quiver(0,0,real(phasor),imag(phasor),'LineWidth',2)
    axis([-1.5 1.5 -1.5 1.5])
    title('Phasor Representation')
    grid on
    
    % -------- Subplot 2: Waveforms --------
    subplot(1,2,2)
    plot(t(1:k), Va(1:k),'LineWidth',2)
    hold on
    plot(t(1:k), Vb(1:k),'LineWidth',2)
    plot(t(1:k), Vc(1:k),'LineWidth',2)
    
    xlim([0 0.02])
    ylim([-1.5 1.5])
    title('Three-Phase Waveforms')
    legend('Va','Vb','Vc')
    grid on
    
    hold off
    
    pause(0.05)
end