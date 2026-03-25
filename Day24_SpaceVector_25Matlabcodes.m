clc
clear
f = 50;
w = 2*pi*f;
t = linspace(0,0.02,200);
figure
for k = 1:length(t)
    
    Va = sin(w*t(k));
    Vb = sin(w*t(k) - 2*pi/3);
    Vc = sin(w*t(k) + 2*pi/3);
    
    % Space vector
    Vs = (2/3)*(Va + Vb*exp(-1j*2*pi/3) + Vc*exp(1j*2*pi/3));
    
    quiver(0,0,real(Vs),imag(Vs),'LineWidth',2)
    
    axis([-1.5 1.5 -1.5 1.5])
    title('Space Vector Representation')
    grid on
    
    pause(0.05)
end