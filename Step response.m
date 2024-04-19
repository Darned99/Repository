
%% Wymuszenie skokiem jednostkowym dla czwórnika RLC szeregowego na kondesatorze

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([0 1/(L*C)],[1  R/L  1/(L*C)]);
R1 = 500;   stp1 = tf([0 1/(L*C)],[1  R1/L  1/(L*C)]);
R2 = 1000;  stp2 = tf([0 1/(L*C)],[1  R2/L  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym dla czwórnika RLC szeregowego na Cewce

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([1 0 0],[1  R/L  1/(L*C)]);
R1 = 500;   stp1 = tf([1 0 0],[1  R1/L  1/(L*C)]);
R2 = 1000;  stp2 = tf([1 0 0],[1  R2/L  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym dla czwórnika RLC szeregowego na Rezystorze

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([R/L 0],[1  R/L  1/(L*C)]);
R1 = 500;   stp1 = tf([R1/L 0],[1  R1/L  1/(L*C)]);
R2 = 1000;  stp2 = tf([R2/L 0],[1  R2/L  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym RLC szeregowego na Kondensatorze i Cewce

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([1 0 1/(L*C)],[1  R/L  1/(L*C)]);
R1 = 500;   stp1 = tf([1 0 1/(L*C)],[1  R1/L  1/(L*C)]);
R2 = 1000;  stp2 = tf([1 0 1/(L*C)],[1  R2/L  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym RLC szeregowego na Rezystor||Kondesator

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([0 1/(L*C)],[1  1/(R*C)  1/(L*C)]);
R1 = 500;   stp1 = tf([0 1/(L*C)],[1  1/(R1*C)  1/(L*C)]);
R2 = 1000;  stp2 = tf([0 1/(L*C)],[1  1/(R2*C)  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym RLC szeregowego na Rezystor||Cewka

L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([1 0 0],[1  1/(R*C)  1/(L*C)]);
R1 = 500;   stp1 = tf([1 0 0],[1  1/(R1*C)  1/(L*C)]);
R2 = 1000;  stp2 = tf([1 0 0],[1  1/(R2*C)  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym dla czwórnika RLC równoległego na Cewka||Kondesator
L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([1/(R*C) 0],[1  1/(R*C)  1/(L*C)]);
R1 = 500;   stp1 = tf([1/(R1*C) 0],[1  1/(R1*C)  1/(L*C)]);
R2 = 1000;  stp2 = tf([1/(R2*C) 0],[1  1/(R2*C)  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')

%% Wymuszenie skokiem jednostkowym dla czwórnika RLC Cewka||Kondensator, na wyjściu rezystor
L = 0.5; C = 33*(1e-6);
R = 250;    stp  = tf([1 0 1/(L*C)],[1  1/(R*C)  1/(L*C)]);
R1 = 500;   stp1 = tf([1 0 1/(L*C)],[1  1/(R1*C)  1/(L*C)]);
R2 = 1000;  stp2 = tf([1 0 1/(L*C)],[1  1/(R2*C)  1/(L*C)]);
step(stp,'b',stp1,'r',stp2,'g'), grid
legend('R = 250','R = 500','R = 1000')
