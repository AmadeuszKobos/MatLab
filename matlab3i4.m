% Zadanie 1
clear all;
k = [0.7, 1.6];
T = [1.3, 0.9];
kolory = ["green", "blue"];

czas = 0:0.1:15;


figure(1);
for i = 1:2
    licz = [0, k(i)];
    mian = [T(i), 1];
    
    subplot(1,2,1)
    hold on;
    [ys, xs, czass] = step(licz,mian,czas);
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f', k(1), T(1)), sprintf('k=%.1f; T=%.1f', k(2), T(2)));
    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f', k(1), T(1)), sprintf('k=%.1f; T=%.1f', k(2), T(2)));
    hold off;
end

% Zadanie 2
T1 = T;
T2 = T1 + 1;

figure(2);
for i = 1:2
    licz = [0,0,k(i)];
    mian = [T1(i) * T2(i), T1(i) + T2(i), 1];
    
    subplot(1,2,1)
    hold on;
    [ys, xs, czass] = step(licz,mian,czas);
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k = %.2f; T = %.2f', T(1), k(1)), sprintf('k = %.2f; T = %.2f', T(2), k(2)));

    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k = %.2f; T = %.2f', T(1), k(1)), sprintf('k = %.2f; T = %.2f', T(2), k(2)));

    hold off;
end

% Zadanie 3.1
ksi = 3;

figure(3)
for i = 1:2
    licz = [0,0,k];
    mian = [T(i) * T(i),2*ksi*T(i),1];
    
    [ys, xs, czass] = step(licz,mian,czas);
    
    subplot(1,2,1)
    hold on;
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off;
end

% Zadanie 3.2
ksi = 0.3;

figure(4)
for i = 1:2
    licz = [0,0,k];
    mian = [T(i)^2,2*ksi*T(i),1];
    
    subplot(1,2,1);
    hold on;
    [ys, xs, czass] = step(licz,mian,czas);
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));

    hold off;
end

% Zadanie 4
Ti = [3, 0.5];



figure(5)
for i = 1:2
    mian = [T(i)*Ti(i),Ti(i),0];
    subplot(1,2,1);
    hold on;
    [ys, xs, czass] = step(licz,mian,czas);
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(1), T(1), Ti(1)), sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(2), T(2), Ti(2)));
    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(1), T(1), Ti(1)), sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(2), T(2), Ti(2)));

    hold off;
end

% Zadanie 5
Td = [3, 0.5];



figure(6)
for i = 1:2
    licz = [Td(i),0];
    mian = [T(i),1];

    subplot(1,2,1);
    hold on;
    [ys, xs, czass] = step(licz,mian,czas);
    plot(czass, ys, 'color', kolory(i));
    title("Step Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('Td=%.1f; T=%.1f', Td(1), T(1)), sprintf('Td=%.1f; T=%.1f', Td(2), T(2)));
    hold off;

    subplot(1,2,2);
    hold on;
    [yi, xi, czasi] = impulse(licz,mian,czas);
    plot(czasi, yi, 'color', kolory(i));
    title("Impulse Response");
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('Td=%.1f; T=%.1f', Td(1), T(1)), sprintf('Td=%.1f; T=%.1f', Td(2), T(2)));

    hold off;
end

% Zadanie 6
theta = 2;
n = 2;
k = 1;

[licz_op, mian_op] = pade(theta, n);
licz_iner = [0,1]; 

figure(7);
for i = 1:2
    mian_iner = [T(i),1];

    [licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass,ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(1), theta, n), sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(2), theta, n));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(1), theta, n), sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(2), theta, n));
    hold off
end



