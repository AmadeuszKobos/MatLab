%Omega
D1 = -3;
D2 = 4;
N = 30;
omega = logspace(D1,D2,N);
% Zadanie 1 obiekt inercyjny I rzędu
T=1.2;
k=0.85;

licz = [0,k];
mian = [T,1];

figure(1);
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;

% Zadanie 2 obiekt inercyjny II rzędu
T1 = 1.2;
T2 = 0.7;

licz = [0,0,k];
mian = [T1*T2,T1+T2,1];

figure(2)
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;

% Zadanie 3 obiekt oscylacyjny II rzędu
T=1.2;
T1=0.7;
ksi=3;

mian = [T*T, 2*ksi,1];

figure(3)
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;

% Zadanie 3.2
ksi=0.3;

figure(4);
subplot(1,2,1);
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;

% Zadanie 4  obiekt całkujący z inercją I rzędu 
Ti = 0.5;
T = 1.2;

mian = [T*Ti, Ti, 0];

figure(5)
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;

%Zadanie 5 obiekt różniczkujący rzeczywisty
Td = 0.5;
T=1.2;

licz = [Td,0];
mian = [T,1];

figure(6)
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;



% Zadanie 6 obiekt inercyjny I rzędu z opóźnieniem
theta = 2;
h=2;
k=1;

[licz_op, mian_op] = pade(theta, h);
licz_iner = [0,k];
mian_iner = [T,1];
[licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);

figure(7)
subplot(1,2,1)
hold on;
nyquist(licz, mian);
hold off;

subplot(1,2,2);
hold on;
bode(licz, mian, omega);
hold off;



