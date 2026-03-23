clc
clear
Vm = 1;
f = 50;
w = 2*pi*f;

t = linspace(0,0.02,200);

figure

for k = 1:length(t)
    
    Va = Vm * exp(1j*w*t(k));
    
    % -------- Phasor --------
    subplot(1,2,1)
    quiver(0,0,real(Va),imag(Va),'LineWidth',2)
    axis([-1.5 1.5 -1.5 1.5])
    title('Phasor Representation')
    grid on
    
    % -------- Waveform --------
    subplot(1,2,2)
    plot(t(1:k), Vm*sin(w*t(1:k)),'LineWidth',2)
    xlim([0 0.02])
    ylim([-1.5 1.5])
    title('Generated Sine Wave')
    grid on
    
    pause(0.05)
end