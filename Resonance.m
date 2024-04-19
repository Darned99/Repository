clc, clear, close all;

% Rezonans dla przykładowych wartości
R= 50;
L=0.5;
C=33*1e-5;

f = 0:75;
xl = 2 * pi * f * L;
xc = (1 ./ (2 * pi * f * C));
f0=1/(2*pi*sqrt(L*C))
y=L*2*pi*f0

figure;

plot(f,xl,'g');
grid;
xlabel('Częstotliwość f (Hz)');
ylabel('Reaktancja');
hold on;
plot(f,xc,'r');
plot(f0,y,'bo');
legend('XL', 'XC','Punkt rezonasowy')
