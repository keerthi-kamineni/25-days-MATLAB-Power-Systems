clc
clear
f = 50;
w = 2*pi*f;
t = linspace(0,0.02,200);
figure
for k = 1:length(t)
    
    Ia = sin(w*t(k));
    Ib = sin(w*t(k) - 2*pi/3);
    Ic = sin(w*t(k) + 2*pi/3);
    
    % Resultant field (vector sum)
    X = Ia*cos(0) + Ib*cos(-2*pi/3) + Ic*cos(2*pi/3);
    Y = Ia*sin(0) + Ib*sin(-2*pi/3) + Ic*sin(2*pi/3);
    
    quiver(0,0,X,Y,'LineWidth',2)
    
    axis([-2 2 -2 2])
    title('Rotating Magnetic Field')
    grid on
    
    pause(0.05)
end