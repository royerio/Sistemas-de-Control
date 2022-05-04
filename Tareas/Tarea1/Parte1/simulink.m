%% Royer Mendez Ramirez, A43333, grupo 01
clc
clear
close all
%% Parametros del tanque
figure
A=3;
Kt=(1/3.3)*100;
g=9.81;
Kvs=0.001;
rho=789;

%Curva estatica minima
Xvs=0.6;
Qe=(0:0.001:0.1);
H=(1/(rho*g))*(Qe/(Kvs*Xvs)).^2;
plot(Qe,H,'-');
hold on
title ('Curva de Caracteristica Estatica')
xlabel('Qe')
ylabel ('H')
legend('Curva de Caracteristica Estatica')