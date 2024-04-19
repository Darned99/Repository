%% By program działał poprawnie należy w pierwszej kolejności kliknąć "Run Section" pierwszej części,
% po tym kroku można każdą z sekcji uruchomić osobno by wyświetliły się
% wykresy napięcia w czasie
% Parametry obwodu RLC
R = 250;       % Rezystancja (ohmy)
L = 0.5;       % Indukcyjność (henry)
C = 33*1e-5;     % Pojemność (farad)

% Częstotliwość sygnału AC
f=1/(2*pi*sqrt(L*C))        % Częstotliwość (Hz)
w = 2 * pi * f; % Pulsacja (rad/s)

% Wektor czasu
t = 0:0.001:0.8;

% Wektor sygnału AC (wejście)
u = 5*sin(w*t);

% Model obwodu RLC szeregowego w dziedzinie czasu
G  = tf([0 1/(L*C)],[1  R/L  1/(L*C)]); %RLC szeregowego na kondesatorze
G1  = tf([1 0 0],[1  R/L  1/(L*C)]); %RLC szeregowego na Cewce
G2  = tf([R/L 0],[1  R/L  1/(L*C)]); %RLC szeregowego na Rezystorze
G3  = tf([1 0 1/(L*C)],[1  R/L  1/(L*C)]); %RLC szeregowego na Kondensatorze i Cewce
G4  = tf([0 1/(L*C)],[1  1/(R*C)  1/(L*C)]);%RLC równoległego na Rezystor||Kondesator
G5 = tf([1 0 0],[1  1/(R*C)  1/(L*C)]); %RLC równoległego na Rezystor||Cewka
G6 = tf([1/(R*C) 0],[1  1/(R*C)  1/(L*C)]); %RLC równoległego na Cewka||Kondesator
G7  = tf([1 0 1/(L*C)],[1  1/(R*C)  1/(L*C)]); %RLC równoległego na Cewka||Kondensator, na wyjściu rezystor

% Symulacja obwodu za pomocą lsim
y = lsim(G, u, t);
y1 = lsim(G1, u, t);
y2 = lsim(G2, u, t);
y3 = lsim(G3, u, t);
y4 = lsim(G4, u, t);
y5 = lsim(G5, u, t);
y6 = lsim(G6, u, t);
y7 = lsim(G7, u, t);
% Wykresy napięć na poszczególnych elementach obwodu
%% SZEREGOWY
figure;
subplot(5,1,1);
plot(t, u);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Sygnał wejściowy');
subplot(5,1,2);
plot(t, y);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na kondensatorze');
subplot(5,1,3);
plot(t, y1);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na cewce');
subplot(5,1,4);
plot(t, y2);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na rezystorze');
subplot(5,1,5);
plot(t,y3);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na kondensatorze i cewce');

%% RÓWNOLEGŁY
figure;
subplot(3,1,1);
plot(t, u);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Sygnał wejściowy');

subplot(3,1,2);
plot(t,y6);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na cewce i kondensatorze');

subplot(3,1,3); 
plot(t,y7);
grid;
xlabel('Czas (s)');
ylabel('[V]')
title('Napięcie na rezystorze (cewka||kondensator)');
