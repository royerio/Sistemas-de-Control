%% Royer Mendez Ramirez, A43333, Grupo 01
clc
clear
close all

% Ejercicio1 Parte D) Parametros del tanque
figure
g=9.81;
Kvs=0.001;
rho=789;

%Curva estatica minima
Xvsmin=0.4;
Qmin=(0:0.001:0.1);
Hmin=(1/(rho*g))*(Qmin/(Kvs*Xvsmin)).^2;
plot(Qmin,Hmin,'-');
hold on
legend('Minimo')
title ('Curva de Caracteristica Estatica')
xlabel('Caudal de entrada = Qe ((m^3)/s)')
ylabel ('Nivel = H (m)')

%Curva estatica del valor esperado
legend('Esperado')
Xvsreq=0.5;
Qreq=(0:0.001:0.1);
Hreq=1/(rho*g)*(Qreq/(Kvs*Xvsreq)).^2;
plot(Qreq,Hreq,'--');

%Curva estatica maxima
legend('Maximo')
Xvsmax=0.6;
Qmax=(0:0.001:0.1);
Hmax=1/(rho*g)*(Qmax/(Kvs*Xvsmax)).^2;
plot(Qmax,Hmax,':');